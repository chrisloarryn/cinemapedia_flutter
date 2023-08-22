import 'package:cinemapedia_flutter/domain/repositories/movie_repository.dart';
import 'package:cinemapedia_flutter/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia_flutter/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieRepositoryProvider = Provider<MoviesRepository>((ref) {
  return MovieRepositoryImpl(MoviedbDatasource());
});
