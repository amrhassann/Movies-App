import 'package:dartz/dartz.dart';
import 'package:movie_app_clean_arch_course/core/error/exception.dart';
import 'package:movie_app_clean_arch_course/core/error/failure.dart';
import 'package:movie_app_clean_arch_course/movies/data/data_source/movie_remote_data_source.dart';
import 'package:movie_app_clean_arch_course/movies/domain/entities/movie.dart';
import 'package:movie_app_clean_arch_course/movies/domain/respository/base_movies_repository.dart';

class MoviesRepository extends BaseMoviesRepository{

  MoviesRepository({required this.baseMovieRemoteDataSource});

  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  @override
  Future<Either<Failure,List<Movie>>> getNowPlayingMovies() async{
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try{
      return Right(result);
    }on ServerException catch (failure){
      return Left(ServerFailure(errorMessageModel: failure.errorMessageModel));
    }


    throw UnimplementedError();
  }

  @override
  Future<Either<Failure,List<Movie>>> getPopularMovies() async{

    final result = await baseMovieRemoteDataSource.getNowPopularMovies();
    try{
      return Right(result);
    }on ServerException catch (failure){
      return Left(ServerFailure(errorMessageModel: failure.errorMessageModel));
    }

  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async{

    final result = await baseMovieRemoteDataSource.getNowTopRatedMovies();
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(errorMessageModel: failure.errorMessageModel));
    }
    // TODO: implement getTopRatedMovies
    throw UnimplementedError();
  }


}