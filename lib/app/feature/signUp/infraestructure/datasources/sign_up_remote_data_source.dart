import 'package:injectable/injectable.dart';
import 'package:walk_dog_app/core/api/api_rest_client.dart';
import 'package:walk_dog_app/core/api/api_rest_result.dart';

abstract class SignUpRemoteDataSource {
  Future<APIResult> signUp({
    required String name,
    required String lastName,
    required String cellPhone,
    required String password,
  });
  Future<void> signUpFacebook();
  Future<void> signUpGoogle();
}

@Injectable(as: SignUpRemoteDataSource)
class SignUpRemoteDataSourceImp implements SignUpRemoteDataSource {
  final ApiRestClient apiRestClient;

  SignUpRemoteDataSourceImp(this.apiRestClient);

  @override
  Future<APIResult> signUp(
      {required String name, required String lastName, required String cellPhone, required String password}) {
    return apiRestClient.call(HttpMethod.post, '/auth/register', body: {
      'name': name,
      'lastName': lastName,
      'cellPhone': cellPhone,
      'password': password,
    });
  }

  @override
  Future<void> signUpFacebook() {
    // TODO: implement signUpFacebook
    throw UnimplementedError();
  }

  @override
  Future<void> signUpGoogle() {
    // TODO: implement signUpGoogle
    throw UnimplementedError();
  }
}
