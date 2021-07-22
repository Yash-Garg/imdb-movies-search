import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';
part 'search.g.dart';

@freezed
class SearchResults with _$SearchResults {
  factory SearchResults({
    required String searchType,
    required String expression,
    required List<Result> results,
    required String errorMessage,
  }) = _SearchResults;

  factory SearchResults.fromJson(Map<String, dynamic> json) =>
      _$SearchResultsFromJson(json);
}

@freezed
class Result with _$Result {
  factory Result({
    required String id,
    required String resultType,
    required String image,
    required String title,
    required String description,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
