import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skolappen/core/localizations.dart';
import 'package:skolappen/core/router.dart';

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
              title: Text(Strings.licensesTitle),
              subtitle: Text(Strings.licensesDescription),
              onTap: () => ref.read(routerProvider).go('/menu/licenses'),
            ),
          ],
        ).toList(),
      ),
    );
  }
}
