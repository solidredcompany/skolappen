import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skolappen/features/lunch/models/lunch.dart';
import 'package:skolappen/features/lunch/repository/lunch_repository.dart';
import 'package:skolappen/features/school_selection/controllers/selected_school_controller.dart';

part 'lunch_service.g.dart';

@riverpod
LunchService lunchService(LunchServiceRef ref) {
  return LunchService(ref);
}

class LunchService {
  LunchService(this._ref);

  final Ref _ref;

  LunchRepository get _lunchRepository => _ref.read(lunchRepositoryProvider);

  // This should always be non-null when this service is used, but we can't
  // be entirely sure.
  String? get _selectendSchoolId => _ref.watch(selectedSchoolControllerProvider).valueOrNull?.skolmatenId;

  Future<Lunch?> getToday() async {
    if (_selectendSchoolId == null) {
      throw Exception('No school selected');
    }

    return _lunchRepository.getToday(_selectendSchoolId!);
  }
}
