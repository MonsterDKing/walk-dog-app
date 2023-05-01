import 'package:walk_dog_app/core/api/api_rest_client.dart';
import 'package:walk_dog_app/core/api/api_rest_result.dart';

abstract class HomeRemoteDataSource {
  Future<APIResult> topWalkers();
  Future<APIResult> nearYou();
  Future<APIResult> suggested();
}

class HomeRemoteDataSourceImp with HomeRemoteDataSource {
  final ApiRestClient _apiRestClient;

  HomeRemoteDataSourceImp(this._apiRestClient);

  @override
  Future<APIResult> nearYou() {
    return _apiRestClient.call(HttpMethod.get, 'home/near-you');
  }

  @override
  Future<APIResult> suggested() {
    return _apiRestClient.call(HttpMethod.get, 'home/suggested');
  }

  @override
  Future<APIResult> topWalkers() {
    return _apiRestClient.call(HttpMethod.get, 'home/top-walkers');
  }
}
