import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skolappen/features/school_selection/models/school.dart';

part 'selected_school_controller.g.dart';

/// The controller that holds the currently selected school.
///
/// To change the selected school, use the [select] method.
@riverpod
class SelectedSchoolController extends _$SelectedSchoolController {
  @override
  Future<School?> build() async {
    ref.keepAlive();

    // TODO: Retrieve the selected school from storage.

    return null;
  }

  /// Select a new school.
  void select(School school) {
    // TODO: Store the selected school.

    state = AsyncData(school);
  }
}
