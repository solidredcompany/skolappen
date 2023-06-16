import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skolappen/core/localizations.dart';

/// The shell page displays the bottom navigation bar and manages its pages.
class ShellPage extends ConsumerWidget {
  const ShellPage({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // Navigate to the initial location of the branch if the pressed index
      // is the currently active one.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: [
          NavigationDestination(
            label: Strings.homeTitle,
            icon: const Icon(Icons.home),
          ),
          NavigationDestination(
            label: Strings.scheduleTitle,
            icon: const Icon(Icons.settings),
          ),
          NavigationDestination(
            label: Strings.menuTitle,
            icon: const Icon(Icons.menu),
          ),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
