class ApiConstants{
  ApiConstants._();

  //// base
  static const String _baseUrl= 'https://api.themoviedb.org/3';
  static const String _apiKey= '544ce0886e71b2c384c3ae89fa392bf2';



  //// paths

  static const String nowPlayingMovies= '$_baseUrl/movie/now_playing?api_key=$_apiKey';
  static const String nowPopularMovies= '$_baseUrl/movie/popular?api_key=$_apiKey';
  static const String nowTopRatedMovies= '$_baseUrl/movie/top_rated?api_key=$_apiKey';




}