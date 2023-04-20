import 'package:walk_dog_app/app/feature/signIn/data/models/user_model.dart';

abstract class FacebookDataSource {
  Future<UserModel> signIn();
}

class FacebookDataSourceImpl implements FacebookDataSource {
  @override
  Future<UserModel> signIn() {
    // Lógica para realizar la autenticación con Facebook
    return Future.value(UserModel(id: '1', name: 'John Doe', email: 'test'));
  }
}
