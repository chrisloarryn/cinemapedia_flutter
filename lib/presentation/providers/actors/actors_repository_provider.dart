import 'package:cinemapedia_flutter/infrastructure/datasources/actor_moviedb_datasource.dart';
import 'package:cinemapedia_flutter/infrastructure/repositories/actor_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Este repositorio es inmutable
final actorsRepositoryProvider = Provider((ref) {
  return ActorRepositoryImpl(ActorMovieDbDatasource());
});
