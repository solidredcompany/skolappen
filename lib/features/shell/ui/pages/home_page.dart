import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skolappen/core/localizations.dart';

/// The home page of the app that displays a summary of useful information.
///
/// This is the first tab of the bottom navigation bar.
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.homeTitle),
      ),
    );
  }
}
