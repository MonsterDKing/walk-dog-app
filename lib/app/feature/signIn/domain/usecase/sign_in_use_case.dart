import 'package:walk_dog_app/app/feature/signIn/domain/repositories/sign_in_repository.dart';

abstract class SignInUseCase {
  Future<SignInResult> execute(SignInRequest request);
}

class SignInRequest {
  final String email;
  final String password;

  SignInRequest({required this.email, required this.password});
}

class SignInResult {
  final bool success;
  final String? errorMessage;

  SignInResult({required this.success, this.errorMessage});
}

class SignInUseCaseImpl implements SignInUseCase {
  final SignInRepository signInRepository;

  SignInUseCaseImpl({required this.signInRepository});

  @override
  Future<SignInResult> execute(SignInRequest request) async {
    try {
      // Realizar la validación de los datos de entrada
      if (request.email.isEmpty || request.password.isEmpty) {
        return SignInResult(success: false, errorMessage: "Los datos de inicio de sesión son inválidos");
      }

      // Llamar al repositorio para realizar la autenticación del usuario
      final user = await signInRepository.signInWithCredentials(request.email, request.password);

      // Devolver el resultado de la autenticación
      return SignInResult(success: true);
    } catch (e) {
      // Devolver el resultado del error de autenticación
      return SignInResult(success: false, errorMessage: "Error al iniciar sesión");
    }
  }
}
