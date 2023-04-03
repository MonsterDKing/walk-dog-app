part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUp() = _SignUp;
  const factory AuthEvent.signIn() = _SignIn;
  const factory AuthEvent.signInFacebook() = _SignInFacebook;
  const factory AuthEvent.signInGoogle() = _SignInGoogle;
}
