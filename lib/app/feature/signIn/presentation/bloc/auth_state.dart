part of 'auth_bloc.dart';

enum AuthStatus {
  initial,
  authenticated,
  unauthenticated,
  loading,
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial({
    @Default(AuthStatus.initial) AuthStatus status,
  }) = _Initial;
}
