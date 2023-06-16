// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_school_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedSchoolControllerHash() =>
    r'f18264ac1cdbbbe065a944dd993817de26000021';

/// The controller that holds the currently selected school.
///
/// To change the selected school, use the [select] method.
///
/// Copied from [SelectedSchoolController].
@ProviderFor(SelectedSchoolController)
final selectedSchoolControllerProvider =
    AsyncNotifierProvider<SelectedSchoolController, School?>.internal(
  SelectedSchoolController.new,
  name: r'selectedSchoolControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedSchoolControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedSchoolController = AsyncNotifier<School?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
