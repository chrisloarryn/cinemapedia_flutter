import 'package:cinemapedia_flutter/domain/entities/movie.dart';
import 'package:cinemapedia_flutter/infrastructure/models/moviedb/moviedb_response.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDb movie) => Movie(
        adult: movie.adult,
        backdropPath: (movie.backdropPath != '')
            ? 'https://image.tmdb.org/t/p/w500${movie.backdropPath}'
            : 'https://via.placeholder.com/500x750?text=No+Image',
        genreIds: movie.genreIds.map((e) => e.toString()).toList(),
        id: movie.id,
        originalLanguage: movie.originalLanguage,
        originalTitle: movie.originalTitle,
        overview: movie.overview,
        popularity: movie.popularity,
        posterPath: (movie.posterPath != '')
            ? 'https://image.tmdb.org/t/p/w500${movie.posterPath}'
            : 'no-poster',
        releaseDate: movie.releaseDate,
        title: movie.title,
        video: movie.video,
        voteAverage: movie.voteAverage,
        voteCount: movie.voteCount,
      );
}
