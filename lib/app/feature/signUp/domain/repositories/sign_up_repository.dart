abstract class SignUpRepository {
  Future<Object> signUp({
    required String name,
    required String lastName,
    required String cellPhone,
    required String password,
  });
  Future<void> signUpFacebook();
  Future<void> signUpGoogle();
}
