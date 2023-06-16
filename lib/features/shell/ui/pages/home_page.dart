import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skolappen/features/school_selection/controllers/selected_school_controller.dart';
import 'package:skolappen/features/lunch/ui/widgets/todays_lunch.dart';
import 'package:skolappen/features/shell/ui/widgets/welcome_message.dart';

/// The home page of the app that displays a summary of useful information.
///
/// This is the first tab of the bottom navigation bar.
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            title: Text(ref.read(selectedSchoolControllerProvider).valueOrNull?.name ?? 'Skolappen'),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList.list(
              children: const [
                WelcomeMessage(),
                SizedBox(
                  height: 16,
                ),
                TodaysLunch(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
