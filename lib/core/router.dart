import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skolappen/features/shell/ui/pages/home_page.dart';
import 'package:skolappen/features/shell/ui/pages/menu_page.dart';
import 'package:skolappen/features/shell/ui/pages/shell_page.dart';
import 'package:skolappen/features/schedule/ui/pages/schedule_page.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/home',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => ShellPage(
          navigationShell: navigationShell,
        ),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: HomePage(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/schedule',
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: SchedulePage(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/menu',
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: MenuPage(),
                ),
                routes: [
                  GoRoute(
                    path: 'licenses',
                    pageBuilder: (context, state) => _adaptiveRoute(
                      key: state.pageKey,
                      child: const LicensePage(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
});

/// Provide the most familiar behavior for each platform.
///
/// In adition to a familiar animation, this also allows iOS user to swipe from
/// the left edge to go back.
Page _adaptiveRoute({required LocalKey key, required Widget child}) {
  if (defaultTargetPlatform == TargetPlatform.iOS) {
    return CupertinoPage(
      key: key,
      child: child,
    );
  }
  return MaterialPage(
    key: key,
    child: child,
  );
}
