import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skolappen/features/school_selection/models/school.dart';

part 'supported_schools.dart';
part 'school_selection_service.g.dart';

@riverpod
SchoolSelectionService schoolSelectionService(SchoolSelectionServiceRef ref) {
  return SchoolSelectionService();
}

class SchoolSelectionService {
  /// A list of all supported schools, in alphabetical order.
  List<School> getSupportedSchools() {
    return _supportedSchools;
  }
}
