import 'package:equatable/equatable.dart';
import 'package:movie_app_clean_arch_course/core/network/error_message_model.dart';

abstract class Failure extends Equatable{

  final ErrorMessageModel errorMessageModel;
  const Failure({required this.errorMessageModel});

  @override

  List<Object> get props => [errorMessageModel];

}

class ServerFailure extends Failure{
  const ServerFailure({required super.errorMessageModel});



}