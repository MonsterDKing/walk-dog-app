part of 'sign_up_bloc.dart';

enum RegisterStatusEnum { initial, loading, success, failure }

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial(
      [@Default(Name.pure()) Name name,
      @Default(LastName.pure()) LastName lastName,
      @Default(Cellphone.pure()) Cellphone cellphone,
      @Default(Password.pure()) Password password,
      @Default(RegisterStatusEnum.initial) RegisterStatusEnum status,
      @Default(false) bool isValid]) = _Initial;
}
