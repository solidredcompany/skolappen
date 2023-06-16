import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skolappen/features/lunch/models/lunch.dart';
import 'package:skolappen/features/lunch/services/lunch_service.dart';

part 'todays_lunch.g.dart';

@riverpod
Future<Lunch?> todaysLunch(TodaysLunchRef ref) async {
  return await ref.watch(lunchServiceProvider).getToday();
}