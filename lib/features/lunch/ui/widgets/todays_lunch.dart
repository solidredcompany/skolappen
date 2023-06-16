import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skolappen/core/localizations.dart';
import 'package:skolappen/core/ui/widgets/card_with_title.dart';
import 'package:skolappen/core/ui/widgets/provider_error.dart';
import 'package:skolappen/core/ui/widgets/shimmer_loading.dart';
import 'package:skolappen/features/lunch/controllers/todays_lunch.dart';

class TodaysLunch extends ConsumerWidget {
  const TodaysLunch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CardWithTitle(
      title: Strings.todaysLunchTitle,
      child: ref.watch(todaysLunchProvider).when(
            error: (error, stackTrace) => ProviderError(
              error: error,
              stackTrace: stackTrace,
              errorText: Strings.todaysLunchLoadingError,
            ),
            loading: () => const ShimmerLoading(
              child: LoadingPlaceholder(
                height: 50,
                width: double.infinity,
              ),
            ),
            data: (data) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: data?.dishes
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            e,
                          ),
                        ),
                      )
                      .toList() ??
                  [],
            ),
          ),
    );
  }
}
