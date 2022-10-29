import 'package:movie_app_clean_arch_course/core/network/error_message_model.dart';

class ServerException implements Exception{

  const ServerException({required this.errorMessageModel});
  final ErrorMessageModel errorMessageModel;

}


