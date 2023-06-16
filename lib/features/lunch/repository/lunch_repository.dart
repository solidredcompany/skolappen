import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skolappen/core/services/dio.dart';
import 'package:skolappen/features/lunch/models/lunch.dart';
import 'package:webfeed_revised/domain/rss_feed.dart';

part 'lunch_repository.g.dart';

@riverpod
LunchRepository lunchRepository(LunchRepositoryRef ref) {
  return LunchRepository(ref);
}

/// Get the lunch menu for a specific school.
class LunchRepository {
  LunchRepository(this._ref);

  final Ref _ref;

  Dio get _dio => _ref.read(dioProvider);

  String _baseUrl(String schoolId) => 'https://skolmaten.se/$schoolId/rss';

  /// Get the lunch menu for today.
  ///
  /// Returns `null` if there is no lunch menu for today.
  Future<Lunch?> getToday(String schoolId) async {
    final response = await _dio.get('${_baseUrl(schoolId)}/days');

    final today = RssFeed.parse(response.data).items?.firstOrNull;

    if (today == null) {
      return null;
    }

    return Lunch.fromRssItem(today);
  }
}
