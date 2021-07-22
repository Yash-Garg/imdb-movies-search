import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider((ref) => Dio());
final imdbRepositoryProvider = Provider((ref) => ImdbRepository(ref.read));

class ImdbRepository {
  ImdbRepository(this.read);
  final Reader read;

  // Future<List<Result>> getSearchResults(String query) {
  //   return Future.value(<Result>[]);
  // }
}
