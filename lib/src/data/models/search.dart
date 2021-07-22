import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';
part 'search.g.dart';

@freezed
class SearchResults with _$SearchResults {
  factory SearchResults({
    required int page,
    required List<Result> results,
    required int total_pages,
    required int total_results,
  }) = _SearchResults;

  factory SearchResults.fromJson(Map<String, dynamic> json) =>
      _$SearchResultsFromJson(json);
}

@freezed
class Result with _$Result {
  factory Result({
    required List<int> genre_ids,
    required int id,
    required String original_title,
    required String? poster_path,
    required String title,
    required double vote_average,
    required int vote_count,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
