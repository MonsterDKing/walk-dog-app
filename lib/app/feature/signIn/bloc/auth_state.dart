part of 'auth_bloc.dart';

enum AuthStatus { initial, authenticated, unauthenticated }

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial({
    @Default(AuthStatus.initial) AuthStatus status,
  }) = _Initial;
}
