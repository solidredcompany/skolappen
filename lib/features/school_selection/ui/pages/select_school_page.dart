import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skolappen/core/localizations.dart';
import 'package:skolappen/features/school_selection/controllers/selected_school_controller.dart';
import 'package:skolappen/features/school_selection/services/school_selection_service.dart';

class SelectSchoolPage extends ConsumerWidget {
  const SelectSchoolPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final supportedSchools = ref.watch(schoolSelectionServiceProvider).getSupportedSchools();

    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.selectSchoolTitle),
      ),
      body: ListView.separated(
        itemCount: supportedSchools.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          final school = supportedSchools[index];

          return ListTile(
            title: Text(school.name),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              ref.read(selectedSchoolControllerProvider.notifier).select(school);
              context.go('/home');
            },
          );
        },
      ),
    );
  }
}
