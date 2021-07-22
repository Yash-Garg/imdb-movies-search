// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResults _$_$_SearchResultsFromJson(Map<String, dynamic> json) {
  return _$_SearchResults(
    page: json['page'] as int,
    results: (json['results'] as List<dynamic>)
        .map((e) => Result.fromJson(e as Map<String, dynamic>))
        .toList(),
    total_pages: json['total_pages'] as int,
    total_results: json['total_results'] as int,
  );
}

Map<String, dynamic> _$_$_SearchResultsToJson(_$_SearchResults instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.total_pages,
      'total_results': instance.total_results,
    };

_$_Result _$_$_ResultFromJson(Map<String, dynamic> json) {
  return _$_Result(
    genre_ids:
        (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
    id: json['id'] as int,
    original_title: json['original_title'] as String,
    poster_path: json['poster_path'] as String?,
    title: json['title'] as String,
    vote_average: (json['vote_average'] as num).toDouble(),
    vote_count: json['vote_count'] as int,
  );
}

Map<String, dynamic> _$_$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'genre_ids': instance.genre_ids,
      'id': instance.id,
      'original_title': instance.original_title,
      'poster_path': instance.poster_path,
      'title': instance.title,
      'vote_average': instance.vote_average,
      'vote_count': instance.vote_count,
    };
