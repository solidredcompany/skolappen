import 'package:freezed_annotation/freezed_annotation.dart';

part 'school.freezed.dart';

/// The representation of a school that the app supports.
/// 
/// The class contains the name of the school, as well as parameters that are
/// required to retrieve information from various sources.
@freezed
class School with _$School {
  factory School({
    /// The name of the school.
    /// 
    /// This will be visible to the user.
    required String name,

    /// The identifier for the school when retrieving rss feeds from Skolmaten.
    required String skolmatenId,
  }) = _School;
}