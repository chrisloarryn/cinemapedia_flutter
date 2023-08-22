import 'package:cinemapedia_flutter/domain/entities/movie.dart';
import 'package:cinemapedia_flutter/presentation/providers/movies/movies_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nowPlayingMoviesProvider =
    StateNotifierProvider<MoviesNotifier, List<Movie>>((ref) {
  final fetchMoreMovies = ref.watch(movieRepositoryProvider).getNowPlaying;
  return MoviesNotifier(
    fethMoreMovies: fetchMoreMovies,
  );
});

typedef MovieCallback = Future<List<Movie>> Function({int page});

class MoviesNotifier extends StateNotifier<List<Movie>> {
  int currentPage = 0;
  MovieCallback fethMoreMovies;

  MoviesNotifier({
    required this.fethMoreMovies,
  }) : super([]);

  Future<void> loadNextPage() async {
    currentPage++;
    final movies = await fethMoreMovies(page: currentPage);
    state = [...state, ...movies];
  }
}
