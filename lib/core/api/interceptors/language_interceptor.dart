import 'package:dio/dio.dart';

class LanguageInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll(<String, String>{'Accept-Language': 'es-mx'});
    super.onRequest(options, handler);
  }
}
