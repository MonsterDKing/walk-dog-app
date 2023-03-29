import 'package:dio/dio.dart';

class AuthorizationInterceptor extends Interceptor {
  final String? _token;

  AuthorizationInterceptor(this._token);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_token != null) {
      options.headers
          .addAll(<String, String>{'Authorization': 'Bearer $_token'});
    }
    super.onRequest(options, handler);
  }
}
