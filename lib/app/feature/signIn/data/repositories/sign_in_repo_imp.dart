import 'package:walk_dog_app/app/feature/signIn/data/datasources/%20facebook_datasource.dart';
import 'package:walk_dog_app/app/feature/signIn/data/datasources/credentials_datasource.dart';
import 'package:walk_dog_app/app/feature/signIn/data/datasources/google_datasource.dart';
import 'package:walk_dog_app/app/feature/signIn/data/models/user_model.dart';
import 'package:walk_dog_app/app/feature/signIn/domain/entities/user_entity.dart';

import 'package:walk_dog_app/app/feature/signIn/domain/repositories/sign_in_repository.dart';

class SignInRepositoryImp implements SignInRepository {
  final FacebookDataSource _facebookDataSource;
  final GoogleDataSource _googleDataSource;
  final CredentialsDataSource _credentialsDataSource;

  SignInRepositoryImp({
    required FacebookDataSource facebookDataSource,
    required GoogleDataSource googleDataSource,
    required CredentialsDataSource credentialsDataSource,
  })  : _facebookDataSource = facebookDataSource,
        _googleDataSource = googleDataSource,
        _credentialsDataSource = credentialsDataSource;

  @override
  Future<User> signInWithFacebook() async {
    final userData = await _facebookDataSource.signIn();
    final userEntity = UserModel(id: userData.id, name: userData.name, email: userData.email);
    final user = User(age: 10, id: "1", name: "john dow");
    return user;
  }

  @override
  Future<User> signInWithGoogle() async {
    final userData = await _googleDataSource.signIn();
    final userEntity = UserModel(id: userData.id, name: userData.name, email: userData.email);
    final user = User(age: 10, id: "1", name: "john dow");
    return user;
  }

  @override
  Future<User> signInWithCredentials(String email, String password) async {
    final userData = await _credentialsDataSource.signIn(email, password);
    final userEntity = UserModel(id: userData.id, name: userData.name, email: userData.email);
    final user = User(age: 10, id: "1", name: "john dow");
    return user;
  }
}
