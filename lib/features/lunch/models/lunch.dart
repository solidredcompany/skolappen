import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webfeed_revised/domain/rss_item.dart';

part 'lunch.freezed.dart';

/// The lunch menu for one day.
@freezed
class Lunch with _$Lunch {
  Lunch._();

  factory Lunch({
    required List<String> dishes,
  }) = _Lunch;

  factory Lunch.fromRssItem(RssItem rssItem) {
    final dishes = rssItem.description?.split('<br/>').map((e) => e.trim()).toList() ?? [];

    return Lunch(
      dishes: dishes,
    );
  }
}