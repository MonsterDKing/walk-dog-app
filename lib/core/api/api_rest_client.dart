import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'api_rest_result.dart';
import 'interceptors/accept_header_interceptor.dart';
import 'interceptors/authorization_interceptor.dart';

class ApiService {
  static Dio dio = Dio(BaseOptions(
    baseUrl: "http://localhost:3000/api/v1/",
    contentType: Headers.jsonContentType,
    headers: <String, String>{
      'Accept': 'application/json',
    },
  ))
    ..interceptors.add(AcceptHeaderInterceptor());
}

enum HttpMethod { get, put, post, delete, patch }

abstract class ApiRestClient {
  void authorization(String? token);

  Future<APIResult> call(
    HttpMethod method,
    String url, {
    Object? body,
    Options options,
  });
}

@Injectable(as: ApiRestClient)
class ApiRestClientImpl implements ApiRestClient {
  final Dio _httpClient;

  ApiRestClientImpl(this._httpClient);

  /// Add the [token] to Authorization header to each request
  @override
  void authorization(String? token) {
    Interceptor? currentInterceptor;

    for (final interceptor in _httpClient.interceptors) {
      if (interceptor is AuthorizationInterceptor) {
        currentInterceptor = interceptor;
        break;
      }
    }

    if (token == null) {
      if (currentInterceptor != null) {
        _httpClient.interceptors.remove(currentInterceptor);
      }
    } else {
      if (currentInterceptor == null) {
        _httpClient.interceptors.add(AuthorizationInterceptor(token));
      }
    }
  }

  /// Make the request to api rest [url]
  /// with optional [body] and [options] based on the http [method]
  /// And return [APIResult] object
  @override
  Future<APIResult> call(
    HttpMethod method,
    String url, {
    Object? body,
    Options? options,
  }) {
    switch (method) {
      case HttpMethod.get:
        return _get(
          url,
          options: options,
        );
      case HttpMethod.post:
        return _post(url, body: body, options: options);
      case HttpMethod.put:
        return _put(url, body: body);
      case HttpMethod.delete:
        return _delete(url);
      case HttpMethod.patch:
        return _patch(url, body: body);
      default:
        return _get(url);
    }
  }

  /// Make a http get request to the specific [url]
  Future<APIResult> _get(String url, {Options? options, Object? body}) async {
    try {
      final response = await _httpClient.get<Object>(
        url,
        options: options?.copyWith(
          responseType: ResponseType.json,
        ),
      );
      return _mapResponse(response);
    } on DioError catch (exception) {
      return _mapResponse(exception.response);
    }
  }

  /// Make a http post request to the specific [url]
  /// With the specific [body] and [options]
  Future<APIResult> _post(
    String url, {
    Object? body,
    Options? options,
  }) async {
    try {
      final response = await _httpClient.post<Object>(
        url,
        data: body,
        options: options?.copyWith(responseType: ResponseType.json),
      );
      return _mapResponse(response);
    } on DioError catch (exception) {
      return _mapResponse(exception.response);
    }
  }

  /// Make a http put request to the specific [url]
  /// With the specific [body] and [options]
  Future<APIResult> _put(
    String url, {
    Object? body,
    Options? options,
  }) async {
    try {
      final response = await _httpClient.put<Object>(
        url,
        data: body,
        options: options?.copyWith(responseType: ResponseType.json),
      );
      return _mapResponse(response);
    } on DioError catch (exception) {
      return _mapResponse(exception.response);
    }
  }

  /// Make a http patch request to the specific [url]
  /// With the specific [body] and [options]
  Future<APIResult> _patch(
    String url, {
    Object? body,
    Options? options,
  }) async {
    try {
      final response = await _httpClient.patch<Object>(
        url,
        data: body,
        options: options?.copyWith(responseType: ResponseType.json),
      );
      return _mapResponse(response);
    } on DioError catch (exception) {
      return _mapResponse(exception.response);
    }
  }

  /// Make a http delete request to the specific [url]
  Future<APIResult> _delete(String url) async {
    try {
      final response = await _httpClient.delete<Object>(
        url,
        options: Options(responseType: ResponseType.json),
      );
      return _mapResponse(response);
    } on DioError catch (exception) {
      return _mapResponse(exception.response);
    }
  }

  /// Map HTTP [Response] object to [APIResult]
  APIResult _mapResponse(Response? response) {
    if (response != null) {
      debugPrint(response.toString());
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        return APIResult.succeeded(response.data as Object);
      } else {
        return APIResult.failed(response.data as Object);
      }
    } else {
      debugPrint("Unexpected error");
      return const APIResult.error("Unexpected error");
    }
  }
}
