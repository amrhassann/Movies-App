import 'package:dartz/dartz.dart';
import 'package:movie_app_clean_arch_course/core/error/failure.dart';
import 'package:movie_app_clean_arch_course/movies/domain/entities/movie.dart';

abstract class BaseMoviesRepository{

  Future<Either<Failure,List<Movie>>>getNowPlayingMovies();
  Future<Either<Failure,List<Movie>>>getPopularMovies();
  Future<Either<Failure,List<Movie>>> getTopRatedMovies();

}