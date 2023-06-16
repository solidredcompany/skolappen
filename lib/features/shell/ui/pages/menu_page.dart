import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skolappen/core/localizations.dart';

/// A menu containing less commonly used features.
///
/// This is the third tab of the bottom navigation bar.
class MenuPage extends ConsumerWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.menuTitle),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              title: Text(Strings.changeSchoolTitle),
              subtitle: Text(Strings.changeSchoolDescription),
              onTap: () => context.go('/select-school'),
            ),
            ListTile(
              title: Text(Strings.licensesTitle),
              subtitle: Text(Strings.licensesDescription),
              onTap: () => context.go('/menu/licenses'),
            ),
          ],
        ).toList(),
      ),
    );
  }
}
