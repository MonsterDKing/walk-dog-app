part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.nameChanged(String name) = _NameChanged;
  const factory SignUpEvent.lastNameChanged(String lastName) = _LastNameChanged;
  const factory SignUpEvent.cellphoneChanged(String cellphone) = _CellphoneChanged;
  const factory SignUpEvent.passwordChanged(String password) = _PasswordChanged;
  const factory SignUpEvent.signUp() = _SignUp;
  const factory SignUpEvent.facebookSignUp() = _FacebookSignUp;
  const factory SignUpEvent.googleSignUp() = _GoogleSignUp;
}
