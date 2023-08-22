import 'package:cinemapedia_flutter/domain/entities/movie.dart';

abstract class MovieRepository {
  Future<List<Movie>> getNowPlaying({int page = 1});
}
