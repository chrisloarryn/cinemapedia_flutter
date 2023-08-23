import 'package:cinemapedia_flutter/config/constants/environment.dart';
import 'package:cinemapedia_flutter/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia_flutter/domain/entities/movie.dart';
import 'package:cinemapedia_flutter/infrastructure/mappers/movie_mapper.dart';
import 'package:cinemapedia_flutter/infrastructure/models/moviedb/moviedb_response.dart';
import 'package:dio/dio.dart';

class MoviedbDatasource extends MoviesDatasource {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3',
    queryParameters: {
      'api_key': Environment.theMovieDbKey,
      'language': 'en-UK',
    },
  ));

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    var opts = dio.options;
    print(opts.baseUrl);
    print(opts.queryParameters);
    final response = await dio.get('/movie/now_playing', queryParameters: {
      'page': page,
    });

    final movieDbResponse = MovieDbResponse.fromJson(response.data);

    final List<Movie> movies = movieDbResponse.results
        .map((moviedb) => MovieMapper.movieDBToEntity(moviedb))
        .where((moviedb) => moviedb.posterPath != 'no-poster')
        .toList();

    return movies;
  }
}
