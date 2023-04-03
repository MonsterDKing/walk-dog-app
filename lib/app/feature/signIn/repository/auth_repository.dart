import 'package:walk_dog_app/core/api/api_rest_client.dart';

abstract class IAuthRepository {
  Future<void> signInWithGoogle();
  Future<void> signInWithFacebook();
  Future<void> signIn();
  Future<void> signUp();
}

class AuthRepository implements IAuthRepository {
  final ApiRestClient _apiRestClient;

  AuthRepository(this._apiRestClient);

  @override
  Future<void> signIn() async {
    _apiRestClient.call(HttpMethod.get, "url");
  }

  @override
  Future<void> signInWithFacebook() async {
    _apiRestClient.call(HttpMethod.get, "url");
  }

  @override
  Future<void> signInWithGoogle() async {
    _apiRestClient.call(HttpMethod.get, "url");
  }

  @override
  Future<void> signUp() async {
    _apiRestClient.call(HttpMethod.get, "url");
  }
}
