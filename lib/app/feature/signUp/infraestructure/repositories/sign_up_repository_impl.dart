import 'package:walk_dog_app/app/feature/signUp/domain/repositories/sign_up_repository.dart';
import 'package:walk_dog_app/app/feature/signUp/infraestructure/datasources/sign_up_remote_data_source.dart';

class SignUpRepositoryImp implements SignUpRepository {
  SignUpRemoteDataSource signUpRemoteDataSource;

  SignUpRepositoryImp(this.signUpRemoteDataSource);

  @override
  Future<Object> signUp(
      {required String name, required String lastName, required String cellPhone, required String password}) async {
    final res = await this.signUpRemoteDataSource.signUp(
          name: name,
          lastName: lastName,
          cellPhone: cellPhone,
          password: password,
        );

    return res;
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
