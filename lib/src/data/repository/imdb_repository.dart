import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants.dart';
import '../models/search.dart';
import '../state/result_state_notifier.dart';

final dioProvider = Provider((ref) => Dio());
final imdbRepositoryProvider = Provider((ref) => ImdbRepository(ref.read));

class ImdbRepository {
  ImdbRepository(this.read);
  final Reader read;

  Future<List<Result>> getSearchResults(String query) async {
    try {
      final response = await read(dioProvider).get(
        Constants.BASE_URL + '&language=en-US&query=$query&page=1',
        options: Options(responseType: ResponseType.json),
      );

      final List<Result> moviesList = List<Result>.from(
          response.data['results'].map((i) => Result.fromJson(i)));

      return moviesList;
    } on DioError {
      rethrow;
    }
  }

  Future<List<Result>> getLatestMovies() async {
    try {
      final response = await read(dioProvider).get(
        Constants.TRENDING_URL,
        options: Options(responseType: ResponseType.json),
      );

      final List<Result> moviesList = List<Result>.from(
          response.data['results'].map((i) => Result.fromJson(i)));

      return moviesList;
    } on DioError {
      rethrow;
    }
  }
}

class GetResultRequestsNotifier extends ResultStateNotifier<List<Result>> {
  final ImdbRepository _imdbRepository;

  GetResultRequestsNotifier(this._imdbRepository);

  getResults(String query) {
    makeRequest(() => _imdbRepository.getSearchResults(query));
  }

  getLatest() {
    makeRequest(() => _imdbRepository.getLatestMovies());
  }
}
