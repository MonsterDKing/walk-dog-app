import 'package:dio/dio.dart';

class AcceptHeaderInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll(<String, String>{'Accept': 'application/json'});
    super.onRequest(options, handler);
  }
}
