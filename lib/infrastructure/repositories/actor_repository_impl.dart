import 'package:cinemapedia_flutter/domain/datasources/actors_datasource.dart';
import 'package:cinemapedia_flutter/domain/entities/actor.dart';
import 'package:cinemapedia_flutter/domain/repositories/actors_repository.dart';

class ActorRepositoryImpl extends ActorsRepository {
  final ActorsDatasource datasource;
  ActorRepositoryImpl(this.datasource);

  @override
  Future<List<Actor>> getActorsByMovie(String movieId) {
    return datasource.getActorsByMovie(movieId);
  }
}
