import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_rest_result.freezed.dart';

@freezed
abstract class APIResult with _$APIResult {
  const factory APIResult.succeeded(Object data) = Succeeded;
  const factory APIResult.failed(Object data) = Failed;
  const factory APIResult.error(String message) = Error;
}
