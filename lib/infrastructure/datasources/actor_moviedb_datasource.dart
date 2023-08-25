import 'package:cinemapedia_flutter/config/constants/environment.dart';
import 'package:cinemapedia_flutter/domain/datasources/actors_datasource.dart';
import 'package:cinemapedia_flutter/domain/entities/actor.dart';
import 'package:cinemapedia_flutter/infrastructure/mappers/actor_mapper.dart';
import 'package:cinemapedia_flutter/infrastructure/models/moviedb/credits_response.dart';
import 'package:dio/dio.dart';

class ActorMovieDbDatasource extends ActorsDatasource {
  final dio = Dio(
    BaseOptions(baseUrl: 'https://api.themoviedb.org/3', queryParameters: {
      'api_key': Environment.theMovieDbKey,
      'language': 'us-UK'
    }),
  );

  @override
  Future<List<Actor>> getActorsByMovie(String movieId) async {
    final response = await dio.get('/movie/$movieId/credits');

    final castResponse = CreditsResponse.fromJson(response.data);

    List<Actor> actors = castResponse.cast
        .map((cast) => ActorMapper.castToEntity(cast))
        .toList();

    return actors;
  }
}
