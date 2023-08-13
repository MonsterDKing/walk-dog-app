import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class RegisterModule {
  @Singleton()
  Dio get dio => Dio();

  @Singleton()
  Logger get logger => Logger();

  @Singleton()
  Connectivity get connectivity => Connectivity();
}
