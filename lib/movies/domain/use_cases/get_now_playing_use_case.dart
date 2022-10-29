import 'package:dartz/dartz.dart';
import 'package:movie_app_clean_arch_course/core/error/failure.dart';
import 'package:movie_app_clean_arch_course/movies/domain/entities/movie.dart';
import 'package:movie_app_clean_arch_course/movies/domain/respository/base_movies_repository.dart';

class GetNowPlayingUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingUseCase({required this.baseMoviesRepository});

  Future<Either<Failure,List<Movie>>> execute() async =>
      await baseMoviesRepository.getNowPlayingMovies();
}
