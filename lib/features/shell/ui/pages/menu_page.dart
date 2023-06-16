import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
        title: const Text('Menu'),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              title: const Text('Licenses'),
              subtitle: const Text('Show licenses for third-party software'),
              onTap: () => ref.read(routerProvider).go('/menu/licenses'),
            ),
          ],
        ).toList(),
      ),
    );
  }
}
