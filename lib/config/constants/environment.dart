import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  // static String theMovieDbKey = dotenv.env['THE_MOVIEDB_KEY'] ?? 'no-key';
  static String theMovieDbKey =
      String.fromEnvironment('THE_MOVIEDB_KEY', defaultValue: 'no-key');
}
