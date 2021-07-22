import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/search.dart';
import '../state/result_state_notifier.dart';

final dioProvider = Provider((ref) => Dio());
final imdbRepositoryProvider = Provider((ref) => ImdbRepository(ref.read));

class ImdbRepository {
  ImdbRepository(this.read);
  final Reader read;

  Future<List<Result>> getSearchResults(String query) {
    return Future.value();
  }
}

class GetResultRequestsNotifier extends ResultStateNotifier<List<Result>> {
  final ImdbRepository _imdbRepository;

  GetResultRequestsNotifier(this._imdbRepository);

  getResults(String query) {
    makeRequest(() => _imdbRepository.getSearchResults(query));
  }
}
