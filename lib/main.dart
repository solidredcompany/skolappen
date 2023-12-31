import 'package:dynamic_color/dynamic_color.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skolappen/core/router.dart';
import 'package:skolappen/core/theme/theme.dart';
import 'package:skolappen/core/ui/widgets/shimmer_loading.dart';
import 'package:skolappen/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ProviderScope(
      child: EasyLocalization(
        supportedLocales: const [
          Locale('en'),
          Locale('sv'),
        ],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        useFallbackTranslations: true,
        useOnlyLangCode: true,
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DynamicColorBuilder(
      builder: (lightDynamicColors, darkDynamicColors) {
        late ColorScheme lightColorScheme;
        late ColorScheme darkColorScheme;

        // Use the dynamic colors if they are supported on the platform.
        // Otherwise, create a color scheme from the fallback seed color.
        //
        // There is no reason to check for null on the light and dark color
        // schemes independently, because they are either both null or both
        // non-null.
        if (lightDynamicColors != null && darkDynamicColors != null) {
          lightColorScheme = lightDynamicColors.harmonized();
          darkColorScheme = darkDynamicColors.harmonized();
        } else {
          lightColorScheme = ColorScheme.fromSeed(
            seedColor: fallbackSeedColor,
          );
          darkColorScheme = ColorScheme.fromSeed(
            seedColor: fallbackSeedColor,
            brightness: Brightness.dark,
          );
        }

        return MaterialApp.router(
          title: 'Skolappen',
          theme: themeFromColorScheme(lightColorScheme),
          darkTheme: themeFromColorScheme(darkColorScheme),
          routerConfig: ref.watch(routerProvider),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          builder: (context, child) {
            final colors = Theme.of(context).colorScheme;

            return Shimmer(
              linearGradient: LinearGradient(
                colors: [
                  Color.lerp(colors.background, colors.primary, 0.05)!,
                  Color.lerp(colors.background, colors.primary, 0.1)!,
                  Color.lerp(colors.background, colors.primary, 0.05)!,
                ],
                stops: const [0.1, 0.3, 0.4],
                begin: const Alignment(-1.0, -0.3),
                end: const Alignment(1.0, 0.3),
                tileMode: TileMode.clamp,
              ),
              child: child!,
            );
          },
        );
      },
    );
  }
}
