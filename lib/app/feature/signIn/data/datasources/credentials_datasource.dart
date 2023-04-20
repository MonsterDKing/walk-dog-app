import 'package:walk_dog_app/app/feature/signIn/data/models/user_model.dart';

abstract class CredentialsDataSource {
  Future<UserModel> signIn(
    String email,
    String password,
  );
}

class CredentialsDataSourceImpl implements CredentialsDataSource {
  @override
  Future<UserModel> signIn(String email, String password) {
    // Lógica para realizar la autenticación con Facebook
    return Future.value(UserModel(id: '1', name: 'John Doe', email: 'test'));
  }
}
