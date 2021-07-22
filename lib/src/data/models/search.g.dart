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
    adult: json['adult'] as bool,
    backdrop_path: json['backdrop_path'] as String?,
    genre_ids:
        (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
    id: json['id'] as int,
    original_language: json['original_language'] as String,
    original_title: json['original_title'] as String,
    overview: json['overview'] as String,
    popularity: (json['popularity'] as num).toDouble(),
    poster_path: json['poster_path'] as String?,
    release_date: DateTime.parse(json['release_date'] as String),
    title: json['title'] as String,
    video: json['video'] as bool,
    vote_average: (json['vote_average'] as num).toDouble(),
    vote_count: json['vote_count'] as int,
  );
}

Map<String, dynamic> _$_$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdrop_path,
      'genre_ids': instance.genre_ids,
      'id': instance.id,
      'original_language': instance.original_language,
      'original_title': instance.original_title,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.poster_path,
      'release_date': instance.release_date.toIso8601String(),
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.vote_average,
      'vote_count': instance.vote_count,
    };
