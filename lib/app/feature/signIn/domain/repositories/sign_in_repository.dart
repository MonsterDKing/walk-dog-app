import 'package:walk_dog_app/app/feature/signIn/domain/entities/user_entity.dart';

abstract class SignInRepository {
  Future<User> signInWithFacebook();
  Future<User> signInWithGoogle();
  Future<User> signInWithCredentials(String email, String password);
}
