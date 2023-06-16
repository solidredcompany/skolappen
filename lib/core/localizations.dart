import 'package:easy_localization/easy_localization.dart';

/// Helper class for localization.
///
/// The class contains a getter for each localized string in the app, which
/// calls the `tr()` method from the `easy_localization` package on the string's
/// key.
///
/// The advantage of using this class instead of calling `tr()` directly is that
/// it ensures that the string key is always correct.
class Strings {
  static String get homeTitle => 'homeTitle'.tr();
  static String get scheduleTitle => 'scheduleTitle'.tr();
  static String get menuTitle => 'menuTitle'.tr();
  static String get licensesTitle => 'licensesTitle'.tr();
  static String get licensesDescription => 'licensesDescription'.tr();
  static String get selectedSchoolLoadingError => 'selectedSchoolLoadingError'.tr();
  static String get welcomeMessage => 'welcomeMessage'.tr();
  static String get selectSchoolMessage => 'selectSchoolMessage'.tr();
  static String get selectSchoolButton => 'selectSchoolButton'.tr();
  static String get selectSchoolTitle => 'selectSchoolTitle'.tr();
  static String get changeSchoolTitle => 'changeSchoolTitle'.tr();
  static String get changeSchoolDescription => 'changeSchoolDescription'.tr();
  static String get todaysLunchTitle => 'todaysLunchTitle'.tr();
  static String get todaysLunchLoadingError => 'todaysLunchLoadingError'.tr();
}
