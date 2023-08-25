import 'package:cinemapedia_flutter/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia_flutter/domain/entities/movie.dart';
import 'package:cinemapedia_flutter/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl extends MoviesRepository {
  final MoviesDatasource datasource;

  MovieRepositoryImpl(this.datasource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    return await datasource.getNowPlaying(page: page);
  }

  @override
  Future<List<Movie>> getPopular({int page = 1}) async {
    return await datasource.getPopular(page: page);
  }

  @override
  Future<List<Movie>> getTopRated({int page = 1}) async {
    return await datasource.getTopRated(page: page);
  }

  @override
  Future<List<Movie>> getUpcoming({int page = 1}) async {
    return await datasource.getUpcoming(page: page);
  }

  @override
  Future<Movie> getMovieById(String movieId) async {
    return await datasource.getMovieById(movieId);
  }
}
