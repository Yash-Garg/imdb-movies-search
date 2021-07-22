class Constants {
  static const API_KEY = '';
  static const TRENDING_URL =
      'https://api.themoviedb.org/3/trending/movie/week?api_key=$API_KEY';
  static const BASE_URL =
      'https://api.themoviedb.org/3/search/movie?api_key=$API_KEY';
  static const BACKDROP_BASE_URL = 'https://image.tmdb.org/t/p/w500';

  static const genres = {
    28: 'Action',
    12: 'Adventure',
    16: 'Animation',
    35: 'Comedy',
    80: 'Crime',
    99: 'Documentary',
    18: 'Drama',
    10751: 'Family',
    14: 'Fantasy',
    36: 'History',
    27: 'Horror',
    10402: 'Music',
    9648: 'Mystery',
    10749: 'Romance',
    878: 'Science Fiction',
    10770: 'TV Movie',
    53: 'Thriller',
    10752: 'War',
    37: 'Western'
  };
}
