import 'package:flutter/material.dart';
import 'package:movie_app_clean_arch_course/movies/data/data_source/movie_remote_data_source.dart';
import 'package:movie_app_clean_arch_course/movies/data/repository/movies_repository.dart';
import 'package:movie_app_clean_arch_course/movies/domain/entities/movie.dart';
import 'package:movie_app_clean_arch_course/movies/domain/respository/base_movies_repository.dart';
import 'package:movie_app_clean_arch_course/movies/domain/use_cases/get_now_playing_use_case.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  _MoviesScreenState createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {

  List<Movie> movies = [];
  @override
  void initState() {

    _getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }

  void _getData() async{
    BaseMovieRemoteDataSource baseMovieRemoteDataSource = MovieRemoteDataSource();
    BaseMoviesRepository baseMoviesRepository = MoviesRepository(baseMovieRemoteDataSource: baseMovieRemoteDataSource);

    final value = await GetNowPlayingUseCase(baseMoviesRepository: baseMoviesRepository).execute();

   value.fold((l) => null, (r) => movies=r );
   print(movies.length);
  }
}
