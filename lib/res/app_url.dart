class AppUrl {
  static var photoBaseUrl = "https://image.tmdb.org/t/p/w500";

  static var moviesBaseUrl = 'https://api.themoviedb.org/3/movie';

  static var personBaseUrl = 'https://api.themoviedb.org/3/person';
  // ignore: todo
  //TODO : "Sign up and add Your apiKey https://www.themoviedb.org/documentation/api."
  static var apiKey = '';

  static var moviesPopularMovie = '$moviesBaseUrl/popular?api_key=$apiKey';

  static var moviesUpComingMovie = '$moviesBaseUrl/upcoming?api_key=$apiKey';

  static var moviesTopRatedMovie = '$moviesBaseUrl/top_rated?api_key=$apiKey';
}
