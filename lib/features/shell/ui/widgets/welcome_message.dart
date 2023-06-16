import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skolappen/core/localizations.dart';
import 'package:skolappen/core/ui/widgets/provider_error.dart';
import 'package:skolappen/core/ui/widgets/shimmer_loading.dart';
import 'package:skolappen/features/school_selection/controllers/selected_school_controller.dart';

/// Displays a welcome message to the user.
///
/// Depending on if a school has been selected or not, the message will either
/// be a generic welcome message, or a message that tells the user to select a
/// school plus a button to do so.
class WelcomeMessage extends ConsumerWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return ref.watch(selectedSchoolControllerProvider).when(
          error: (error, stackTrace) => ProviderError(
            error: error,
            stackTrace: stackTrace,
            errorText: Strings.selectedSchoolLoadingError,
          ),
          loading: () => const ShimmerLoading(
            child: LoadingPlaceholder(
              height: 200,
            ),
          ),
          data: (data) {
            if (data != null) {
              return Text(
                Strings.welcomeMessage,
                style: textTheme.titleMedium,
              );
            }

            return Column(
              children: [
                Text(
                  Strings.selectSchoolMessage,
                  style: textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () => context.go('/select-school'),
                  child: Text(Strings.selectSchoolButton),
                ),
              ],
            );
          },
        );
  }
}
