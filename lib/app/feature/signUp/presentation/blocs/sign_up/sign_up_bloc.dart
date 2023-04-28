import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:walk_dog_app/app/feature/signUp/domain/usescase/sign_up_normal_reigster.dart';
import 'package:walk_dog_app/core/inputs/index.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpNormalRegisterUseCase signUpNormalRegisterUsecase;
  Logger logger;

  SignUpBloc(this.signUpNormalRegisterUsecase, this.logger) : super(_Initial()) {
    on<SignUpEvent>((event, emit) async {
      await event.map(
        nameChanged: (event) async => await _nameChanged(event, emit),
        lastNameChanged: (event) async => await _lastNameChanged(event, emit),
        cellphoneChanged: (event) async => await _cellphoneChanged(event, emit),
        passwordChanged: (event) async => await _passwordChanged(event, emit),
        signUp: (event) async => await _signUp(event, emit),
        facebookSignUp: (event) async => await _facebookSignUp(event, emit),
        googleSignUp: (event) async => await _googleSignUp(event, emit),
      );
    });
  }

  _nameChanged(event, Emitter<SignUpState> emit) {
    logger.i(event);
    final name = Name.dirty(event.name);
    emit(state.copyWith(name: name, isValid: Formz.validate([name, state.lastName, state.cellphone, state.password])));
  }

  _lastNameChanged(event, Emitter<SignUpState> emit) {
    logger.i(event);
    final lastName = LastName.dirty(event.lastName);
    emit(state.copyWith(
        lastName: lastName, isValid: Formz.validate([state.name, lastName, state.cellphone, state.password])));
  }

  _cellphoneChanged(event, Emitter<SignUpState> emit) {
    logger.i(event);
    final cellphone = Cellphone.dirty(event.cellphone);
    emit(state.copyWith(
        cellphone: cellphone, isValid: Formz.validate([state.name, state.lastName, cellphone, state.password])));
    logger.i(state);
  }

  _passwordChanged(event, Emitter<SignUpState> emit) {
    logger.i(event);
    final password = Password.dirty(event.password);
    emit(state.copyWith(
        password: password, isValid: Formz.validate([state.name, state.lastName, state.cellphone, password])));
    logger.i(state.isValid);
  }

  _signUp(_SignUp event, Emitter<SignUpState> emit) async {
    logger.i(event);
    if (!state.isValid) {
      logger.i('invalid form');
      return;
    }
    emit(state.copyWith(status: RegisterStatusEnum.loading));
    var resp = await signUpNormalRegisterUsecase.call(
        name: state.name.value,
        lastName: state.lastName.value,
        cellPhone: state.cellphone.value,
        password: state.password.value);

    //resp fold
    resp.fold(
      (left) => logger.e(left),
      (right) => emit(state.copyWith(status: RegisterStatusEnum.success)),
    );
  }

  _facebookSignUp(event, Emitter<SignUpState> emit) {
    logger.i(event);
  }

  _googleSignUp(event, Emitter<SignUpState> emit) {
    logger.i(event);
  }
}
