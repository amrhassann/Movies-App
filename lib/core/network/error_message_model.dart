import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable{
  final bool success;
  final int statusCode;
  final String errorMessage;

  const ErrorMessageModel(
      {required this.statusCode,
      required this.errorMessage,
      required this.success});

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
      statusCode: json['status_code'],
      errorMessage: json['error_message'],
      success: json['success'],
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [success,statusCode,errorMessage];
}
