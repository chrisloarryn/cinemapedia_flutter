import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  // 'no-key';
  static String theMovieDbKey =
      dotenv.env['THE_MOVIEDB_KEY'] ?? '4631cecccf3cf39dcaac0181723e12af';
}
