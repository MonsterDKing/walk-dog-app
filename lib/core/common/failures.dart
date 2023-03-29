import 'package:equatable/equatable.dart';
import 'package:walk_dog_app/core/common/constants/constants.dart';
import 'package:walk_dog_app/core/common/extension.dart';
import 'package:walk_dog_app/core/common/utils/utils.dart';

abstract class Failure extends Equatable {
  String? message;

  Failure({this.message});

  withBodyMessage(dynamic body) {
    message = Utils().getErrorMessage(body);
  }

  @override
  List<Object?> get props => [message];
}

class ServerFailure extends Failure {
  final String? message;

  ServerFailure({this.message = serverErrorMessage}) : super(message: message);
}

class UnexpectedFailure extends Failure {
  UnexpectedFailure() : super();
}
