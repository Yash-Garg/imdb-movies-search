// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResults _$SearchResultsFromJson(Map<String, dynamic> json) {
  return _SearchResults.fromJson(json);
}

/// @nodoc
class _$SearchResultsTearOff {
  const _$SearchResultsTearOff();

  _SearchResults call(
      {required int page,
      required List<Result> results,
      required int total_pages,
      required int total_results}) {
    return _SearchResults(
      page: page,
      results: results,
      total_pages: total_pages,
      total_results: total_results,
    );
  }

  SearchResults fromJson(Map<String, Object> json) {
    return SearchResults.fromJson(json);
  }
}

/// @nodoc
const $SearchResults = _$SearchResultsTearOff();

/// @nodoc
mixin _$SearchResults {
  int get page => throw _privateConstructorUsedError;
  List<Result> get results => throw _privateConstructorUsedError;
  int get total_pages => throw _privateConstructorUsedError;
  int get total_results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultsCopyWith<SearchResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultsCopyWith<$Res> {
  factory $SearchResultsCopyWith(
          SearchResults value, $Res Function(SearchResults) then) =
      _$SearchResultsCopyWithImpl<$Res>;
  $Res call(
      {int page, List<Result> results, int total_pages, int total_results});
}

/// @nodoc
class _$SearchResultsCopyWithImpl<$Res>
    implements $SearchResultsCopyWith<$Res> {
  _$SearchResultsCopyWithImpl(this._value, this._then);

  final SearchResults _value;
  // ignore: unused_field
  final $Res Function(SearchResults) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? total_pages = freezed,
    Object? total_results = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      total_pages: total_pages == freezed
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int,
      total_results: total_results == freezed
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SearchResultsCopyWith<$Res>
    implements $SearchResultsCopyWith<$Res> {
  factory _$SearchResultsCopyWith(
          _SearchResults value, $Res Function(_SearchResults) then) =
      __$SearchResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page, List<Result> results, int total_pages, int total_results});
}

/// @nodoc
class __$SearchResultsCopyWithImpl<$Res>
    extends _$SearchResultsCopyWithImpl<$Res>
    implements _$SearchResultsCopyWith<$Res> {
  __$SearchResultsCopyWithImpl(
      _SearchResults _value, $Res Function(_SearchResults) _then)
      : super(_value, (v) => _then(v as _SearchResults));

  @override
  _SearchResults get _value => super._value as _SearchResults;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? total_pages = freezed,
    Object? total_results = freezed,
  }) {
    return _then(_SearchResults(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      total_pages: total_pages == freezed
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int,
      total_results: total_results == freezed
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResults implements _SearchResults {
  _$_SearchResults(
      {required this.page,
      required this.results,
      required this.total_pages,
      required this.total_results});

  factory _$_SearchResults.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchResultsFromJson(json);

  @override
  final int page;
  @override
  final List<Result> results;
  @override
  final int total_pages;
  @override
  final int total_results;

  @override
  String toString() {
    return 'SearchResults(page: $page, results: $results, total_pages: $total_pages, total_results: $total_results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResults &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality()
                    .equals(other.results, results)) &&
            (identical(other.total_pages, total_pages) ||
                const DeepCollectionEquality()
                    .equals(other.total_pages, total_pages)) &&
            (identical(other.total_results, total_results) ||
                const DeepCollectionEquality()
                    .equals(other.total_results, total_results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(total_pages) ^
      const DeepCollectionEquality().hash(total_results);

  @JsonKey(ignore: true)
  @override
  _$SearchResultsCopyWith<_SearchResults> get copyWith =>
      __$SearchResultsCopyWithImpl<_SearchResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchResultsToJson(this);
  }
}

abstract class _SearchResults implements SearchResults {
  factory _SearchResults(
      {required int page,
      required List<Result> results,
      required int total_pages,
      required int total_results}) = _$_SearchResults;

  factory _SearchResults.fromJson(Map<String, dynamic> json) =
      _$_SearchResults.fromJson;

  @override
  int get page => throw _privateConstructorUsedError;
  @override
  List<Result> get results => throw _privateConstructorUsedError;
  @override
  int get total_pages => throw _privateConstructorUsedError;
  @override
  int get total_results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchResultsCopyWith<_SearchResults> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
class _$ResultTearOff {
  const _$ResultTearOff();

  _Result call(
      {required bool adult,
      required String? backdrop_path,
      required List<int> genre_ids,
      required int id,
      required String original_language,
      required String original_title,
      required String overview,
      required double popularity,
      required String? poster_path,
      required DateTime release_date,
      required String title,
      required bool video,
      required double vote_average,
      required int vote_count}) {
    return _Result(
      adult: adult,
      backdrop_path: backdrop_path,
      genre_ids: genre_ids,
      id: id,
      original_language: original_language,
      original_title: original_title,
      overview: overview,
      popularity: popularity,
      poster_path: poster_path,
      release_date: release_date,
      title: title,
      video: video,
      vote_average: vote_average,
      vote_count: vote_count,
    );
  }

  Result fromJson(Map<String, Object> json) {
    return Result.fromJson(json);
  }
}

/// @nodoc
const $Result = _$ResultTearOff();

/// @nodoc
mixin _$Result {
  bool get adult => throw _privateConstructorUsedError;
  String? get backdrop_path => throw _privateConstructorUsedError;
  List<int> get genre_ids => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get original_language => throw _privateConstructorUsedError;
  String get original_title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  String? get poster_path => throw _privateConstructorUsedError;
  DateTime get release_date => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get video => throw _privateConstructorUsedError;
  double get vote_average => throw _privateConstructorUsedError;
  int get vote_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res>;
  $Res call(
      {bool adult,
      String? backdrop_path,
      List<int> genre_ids,
      int id,
      String original_language,
      String original_title,
      String overview,
      double popularity,
      String? poster_path,
      DateTime release_date,
      String title,
      bool video,
      double vote_average,
      int vote_count});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result _value;
  // ignore: unused_field
  final $Res Function(Result) _then;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdrop_path = freezed,
    Object? genre_ids = freezed,
    Object? id = freezed,
    Object? original_language = freezed,
    Object? original_title = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? poster_path = freezed,
    Object? release_date = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? vote_average = freezed,
    Object? vote_count = freezed,
  }) {
    return _then(_value.copyWith(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdrop_path: backdrop_path == freezed
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String?,
      genre_ids: genre_ids == freezed
          ? _value.genre_ids
          : genre_ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      original_language: original_language == freezed
          ? _value.original_language
          : original_language // ignore: cast_nullable_to_non_nullable
              as String,
      original_title: original_title == freezed
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      poster_path: poster_path == freezed
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      release_date: release_date == freezed
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      vote_average: vote_average == freezed
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as double,
      vote_count: vote_count == freezed
          ? _value.vote_count
          : vote_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$ResultCopyWith(_Result value, $Res Function(_Result) then) =
      __$ResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool adult,
      String? backdrop_path,
      List<int> genre_ids,
      int id,
      String original_language,
      String original_title,
      String overview,
      double popularity,
      String? poster_path,
      DateTime release_date,
      String title,
      bool video,
      double vote_average,
      int vote_count});
}

/// @nodoc
class __$ResultCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$ResultCopyWith<$Res> {
  __$ResultCopyWithImpl(_Result _value, $Res Function(_Result) _then)
      : super(_value, (v) => _then(v as _Result));

  @override
  _Result get _value => super._value as _Result;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdrop_path = freezed,
    Object? genre_ids = freezed,
    Object? id = freezed,
    Object? original_language = freezed,
    Object? original_title = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? poster_path = freezed,
    Object? release_date = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? vote_average = freezed,
    Object? vote_count = freezed,
  }) {
    return _then(_Result(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdrop_path: backdrop_path == freezed
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String?,
      genre_ids: genre_ids == freezed
          ? _value.genre_ids
          : genre_ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      original_language: original_language == freezed
          ? _value.original_language
          : original_language // ignore: cast_nullable_to_non_nullable
              as String,
      original_title: original_title == freezed
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      poster_path: poster_path == freezed
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      release_date: release_date == freezed
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      vote_average: vote_average == freezed
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as double,
      vote_count: vote_count == freezed
          ? _value.vote_count
          : vote_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  _$_Result(
      {required this.adult,
      required this.backdrop_path,
      required this.genre_ids,
      required this.id,
      required this.original_language,
      required this.original_title,
      required this.overview,
      required this.popularity,
      required this.poster_path,
      required this.release_date,
      required this.title,
      required this.video,
      required this.vote_average,
      required this.vote_count});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$_$_ResultFromJson(json);

  @override
  final bool adult;
  @override
  final String? backdrop_path;
  @override
  final List<int> genre_ids;
  @override
  final int id;
  @override
  final String original_language;
  @override
  final String original_title;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  final String? poster_path;
  @override
  final DateTime release_date;
  @override
  final String title;
  @override
  final bool video;
  @override
  final double vote_average;
  @override
  final int vote_count;

  @override
  String toString() {
    return 'Result(adult: $adult, backdrop_path: $backdrop_path, genre_ids: $genre_ids, id: $id, original_language: $original_language, original_title: $original_title, overview: $overview, popularity: $popularity, poster_path: $poster_path, release_date: $release_date, title: $title, video: $video, vote_average: $vote_average, vote_count: $vote_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Result &&
            (identical(other.adult, adult) ||
                const DeepCollectionEquality().equals(other.adult, adult)) &&
            (identical(other.backdrop_path, backdrop_path) ||
                const DeepCollectionEquality()
                    .equals(other.backdrop_path, backdrop_path)) &&
            (identical(other.genre_ids, genre_ids) ||
                const DeepCollectionEquality()
                    .equals(other.genre_ids, genre_ids)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.original_language, original_language) ||
                const DeepCollectionEquality()
                    .equals(other.original_language, original_language)) &&
            (identical(other.original_title, original_title) ||
                const DeepCollectionEquality()
                    .equals(other.original_title, original_title)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)) &&
            (identical(other.poster_path, poster_path) ||
                const DeepCollectionEquality()
                    .equals(other.poster_path, poster_path)) &&
            (identical(other.release_date, release_date) ||
                const DeepCollectionEquality()
                    .equals(other.release_date, release_date)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)) &&
            (identical(other.vote_average, vote_average) ||
                const DeepCollectionEquality()
                    .equals(other.vote_average, vote_average)) &&
            (identical(other.vote_count, vote_count) ||
                const DeepCollectionEquality()
                    .equals(other.vote_count, vote_count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(adult) ^
      const DeepCollectionEquality().hash(backdrop_path) ^
      const DeepCollectionEquality().hash(genre_ids) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(original_language) ^
      const DeepCollectionEquality().hash(original_title) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(poster_path) ^
      const DeepCollectionEquality().hash(release_date) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(video) ^
      const DeepCollectionEquality().hash(vote_average) ^
      const DeepCollectionEquality().hash(vote_count);

  @JsonKey(ignore: true)
  @override
  _$ResultCopyWith<_Result> get copyWith =>
      __$ResultCopyWithImpl<_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ResultToJson(this);
  }
}

abstract class _Result implements Result {
  factory _Result(
      {required bool adult,
      required String? backdrop_path,
      required List<int> genre_ids,
      required int id,
      required String original_language,
      required String original_title,
      required String overview,
      required double popularity,
      required String? poster_path,
      required DateTime release_date,
      required String title,
      required bool video,
      required double vote_average,
      required int vote_count}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  bool get adult => throw _privateConstructorUsedError;
  @override
  String? get backdrop_path => throw _privateConstructorUsedError;
  @override
  List<int> get genre_ids => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get original_language => throw _privateConstructorUsedError;
  @override
  String get original_title => throw _privateConstructorUsedError;
  @override
  String get overview => throw _privateConstructorUsedError;
  @override
  double get popularity => throw _privateConstructorUsedError;
  @override
  String? get poster_path => throw _privateConstructorUsedError;
  @override
  DateTime get release_date => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  bool get video => throw _privateConstructorUsedError;
  @override
  double get vote_average => throw _privateConstructorUsedError;
  @override
  int get vote_count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResultCopyWith<_Result> get copyWith => throw _privateConstructorUsedError;
}
