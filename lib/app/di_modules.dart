import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:walk_dog_app/core/api/interceptors/accept_header_interceptor.dart';

@module
abstract class RegisterModule {
  //url for api
  @lazySingleton
  String get url => "http://localhost:3000/api/v1/";

  @Singleton()
  Dio get dio => Dio(BaseOptions(
        baseUrl: url,
        contentType: Headers.jsonContentType,
        headers: <String, String>{
          'Accept': 'application/json',
        },
      ))
        ..interceptors.add(AcceptHeaderInterceptor());

  @Singleton()
  Logger get logger => Logger();

  @Singleton()
  Connectivity get connectivity => Connectivity();
}
