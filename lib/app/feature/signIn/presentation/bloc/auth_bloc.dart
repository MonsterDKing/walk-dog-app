import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:walk_dog_app/app/feature/signIn/domain/usecase/sign_in_use_case.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Logger _logger;
  final SignInUseCase signInUseCaseUser;
  final SignInUseCase signInUseCaseFacebook;
  final SignInUseCase signInUseCaseGoogle;

  AuthBloc(this._logger, this.signInUseCaseUser, this.signInUseCaseFacebook, this.signInUseCaseGoogle)
      : super(_Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        signIn: (event) async => await _sigIn(event, emit),
        signUp: (event) async => await _sigUp(event, emit),
        signInFacebook: (event) async => await _sigInFacebook(event, emit),
        signInGoogle: (event) async => await _sigInGoogle(event, emit),
      );
    });
  }

  _sigIn(_SignIn event, Emitter<AuthState> emit) async {
    _logger.d('SignIn');
    emit(state.copyWith(status: AuthStatus.loading));
  }

  _sigUp(_SignUp event, Emitter<AuthState> emit) {
    _logger.d('SignUp');
    emit(state.copyWith(status: AuthStatus.loading));
  }

  _sigInFacebook(_SignInFacebook event, Emitter<AuthState> emit) {
    _logger.d('SignInFacebook');
  }

  _sigInGoogle(_SignInGoogle event, Emitter<AuthState> emit) {
    _logger.d('SignInGoogle');
  }
}
