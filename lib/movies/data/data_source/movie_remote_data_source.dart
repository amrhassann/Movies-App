import 'package:dio/dio.dart';
import 'package:movie_app_clean_arch_course/core/error/exception.dart';
import 'package:movie_app_clean_arch_course/core/network/error_message_model.dart';
import 'package:movie_app_clean_arch_course/core/network/api_constants.dart';
import 'package:movie_app_clean_arch_course/movies/data/models/movie_model.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovies();

  Future<List<MovieModel>> getNowPopularMovies();

  Future<List<MovieModel>> getNowTopRatedMovies();
}

class MovieRemoteDataSource implements BaseMovieRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final response = await Dio().get(ApiConstants.nowPlayingMovies);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getNowPopularMovies() async {
    final response = await Dio().get(ApiConstants.nowPopularMovies);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => ErrorMessageModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getNowTopRatedMovies() async {
    final response = await Dio().get(ApiConstants.nowTopRatedMovies);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
