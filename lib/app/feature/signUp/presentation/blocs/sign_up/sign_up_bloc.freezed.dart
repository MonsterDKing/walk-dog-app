// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String cellphone) cellphoneChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUp,
    required TResult Function() facebookSignUp,
    required TResult Function() googleSignUp,
    required TResult Function() closeSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String cellphone)? cellphoneChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUp,
    TResult? Function()? facebookSignUp,
    TResult? Function()? googleSignUp,
    TResult? Function()? closeSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String cellphone)? cellphoneChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUp,
    TResult Function()? facebookSignUp,
    TResult Function()? googleSignUp,
    TResult Function()? closeSnackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_CellphoneChanged value) cellphoneChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_FacebookSignUp value) facebookSignUp,
    required TResult Function(_GoogleSignUp value) googleSignUp,
    required TResult Function(_CloseSnackBar value) closeSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_CellphoneChanged value)? cellphoneChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_FacebookSignUp value)? facebookSignUp,
    TResult? Function(_GoogleSignUp value)? googleSignUp,
    TResult? Function(_CloseSnackBar value)? closeSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_CellphoneChanged value)? cellphoneChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_FacebookSignUp value)? facebookSignUp,
    TResult Function(_GoogleSignUp value)? googleSignUp,
    TResult Function(_CloseSnackBar value)? closeSnackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NameChangedCopyWith<$Res> {
  factory _$$_NameChangedCopyWith(
          _$_NameChanged value, $Res Function(_$_NameChanged) then) =
      __$$_NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_NameChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_NameChanged>
    implements _$$_NameChangedCopyWith<$Res> {
  __$$_NameChangedCopyWithImpl(
      _$_NameChanged _value, $Res Function(_$_NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_NameChanged(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'SignUpEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      __$$_NameChangedCopyWithImpl<_$_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String cellphone) cellphoneChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUp,
    required TResult Function() facebookSignUp,
    required TResult Function() googleSignUp,
    required TResult Function() closeSnackBar,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String cellphone)? cellphoneChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUp,
    TResult? Function()? facebookSignUp,
    TResult? Function()? googleSignUp,
    TResult? Function()? closeSnackBar,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String cellphone)? cellphoneChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUp,
    TResult Function()? facebookSignUp,
    TResult Function()? googleSignUp,
    TResult Function()? closeSnackBar,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_CellphoneChanged value) cellphoneChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_FacebookSignUp value) facebookSignUp,
    required TResult Function(_GoogleSignUp value) googleSignUp,
    required TResult Function(_CloseSnackBar value) closeSnackBar,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_CellphoneChanged value)? cellphoneChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_FacebookSignUp value)? facebookSignUp,
    TResult? Function(_GoogleSignUp value)? googleSignUp,
    TResult? Function(_CloseSnackBar value)? closeSnackBar,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_CellphoneChanged value)? cellphoneChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_FacebookSignUp value)? facebookSignUp,
    TResult Function(_GoogleSignUp value)? googleSignUp,
    TResult Function(_CloseSnackBar value)? closeSnackBar,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements SignUpEvent {
  const factory _NameChanged(final String name) = _$_NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LastNameChangedCopyWith<$Res> {
  factory _$$_LastNameChangedCopyWith(
          _$_LastNameChanged value, $Res Function(_$_LastNameChanged) then) =
      __$$_LastNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastName});
}

/// @nodoc
class __$$_LastNameChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_LastNameChanged>
    implements _$$_LastNameChangedCopyWith<$Res> {
  __$$_LastNameChangedCopyWithImpl(
      _$_LastNameChanged _value, $Res Function(_$_LastNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastName = null,
  }) {
    return _then(_$_LastNameChanged(
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LastNameChanged implements _LastNameChanged {
  const _$_LastNameChanged(this.lastName);

  @override
  final String lastName;

  @override
  String toString() {
    return 'SignUpEvent.lastNameChanged(lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastNameChanged &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LastNameChangedCopyWith<_$_LastNameChanged> get copyWith =>
      __$$_LastNameChangedCopyWithImpl<_$_LastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String cellphone) cellphoneChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUp,
    required TResult Function() facebookSignUp,
    required TResult Function() googleSignUp,
    required TResult Function() closeSnackBar,
  }) {
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String cellphone)? cellphoneChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUp,
    TResult? Function()? facebookSignUp,
    TResult? Function()? googleSignUp,
    TResult? Function()? closeSnackBar,
  }) {
    return lastNameChanged?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String cellphone)? cellphoneChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUp,
    TResult Function()? facebookSignUp,
    TResult Function()? googleSignUp,
    TResult Function()? closeSnackBar,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_CellphoneChanged value) cellphoneChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_FacebookSignUp value) facebookSignUp,
    required TResult Function(_GoogleSignUp value) googleSignUp,
    required TResult Function(_CloseSnackBar value) closeSnackBar,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_CellphoneChanged value)? cellphoneChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_FacebookSignUp value)? facebookSignUp,
    TResult? Function(_GoogleSignUp value)? googleSignUp,
    TResult? Function(_CloseSnackBar value)? closeSnackBar,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_CellphoneChanged value)? cellphoneChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_FacebookSignUp value)? facebookSignUp,
    TResult Function(_GoogleSignUp value)? googleSignUp,
    TResult Function(_CloseSnackBar value)? closeSnackBar,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class _LastNameChanged implements SignUpEvent {
  const factory _LastNameChanged(final String lastName) = _$_LastNameChanged;

  String get lastName;
  @JsonKey(ignore: true)
  _$$_LastNameChangedCopyWith<_$_LastNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CellphoneChangedCopyWith<$Res> {
  factory _$$_CellphoneChangedCopyWith(
          _$_CellphoneChanged value, $Res Function(_$_CellphoneChanged) then) =
      __$$_CellphoneChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String cellphone});
}

/// @nodoc
class __$$_CellphoneChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_CellphoneChanged>
    implements _$$_CellphoneChangedCopyWith<$Res> {
  __$$_CellphoneChangedCopyWithImpl(
      _$_CellphoneChanged _value, $Res Function(_$_CellphoneChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cellphone = null,
  }) {
    return _then(_$_CellphoneChanged(
      null == cellphone
          ? _value.cellphone
          : cellphone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CellphoneChanged implements _CellphoneChanged {
  const _$_CellphoneChanged(this.cellphone);

  @override
  final String cellphone;

  @override
  String toString() {
    return 'SignUpEvent.cellphoneChanged(cellphone: $cellphone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CellphoneChanged &&
            (identical(other.cellphone, cellphone) ||
                other.cellphone == cellphone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cellphone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CellphoneChangedCopyWith<_$_CellphoneChanged> get copyWith =>
      __$$_CellphoneChangedCopyWithImpl<_$_CellphoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String cellphone) cellphoneChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUp,
    required TResult Function() facebookSignUp,
    required TResult Function() googleSignUp,
    required TResult Function() closeSnackBar,
  }) {
    return cellphoneChanged(cellphone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String cellphone)? cellphoneChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUp,
    TResult? Function()? facebookSignUp,
    TResult? Function()? googleSignUp,
    TResult? Function()? closeSnackBar,
  }) {
    return cellphoneChanged?.call(cellphone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String cellphone)? cellphoneChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUp,
    TResult Function()? facebookSignUp,
    TResult Function()? googleSignUp,
    TResult Function()? closeSnackBar,
    required TResult orElse(),
  }) {
    if (cellphoneChanged != null) {
      return cellphoneChanged(cellphone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_CellphoneChanged value) cellphoneChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_FacebookSignUp value) facebookSignUp,
    required TResult Function(_GoogleSignUp value) googleSignUp,
    required TResult Function(_CloseSnackBar value) closeSnackBar,
  }) {
    return cellphoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_CellphoneChanged value)? cellphoneChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_FacebookSignUp value)? facebookSignUp,
    TResult? Function(_GoogleSignUp value)? googleSignUp,
    TResult? Function(_CloseSnackBar value)? closeSnackBar,
  }) {
    return cellphoneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_CellphoneChanged value)? cellphoneChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_FacebookSignUp value)? facebookSignUp,
    TResult Function(_GoogleSignUp value)? googleSignUp,
    TResult Function(_CloseSnackBar value)? closeSnackBar,
    required TResult orElse(),
  }) {
    if (cellphoneChanged != null) {
      return cellphoneChanged(this);
    }
    return orElse();
  }
}

abstract class _CellphoneChanged implements SignUpEvent {
  const factory _CellphoneChanged(final String cellphone) = _$_CellphoneChanged;

  String get cellphone;
  @JsonKey(ignore: true)
  _$$_CellphoneChangedCopyWith<_$_CellphoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_PasswordChanged>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_PasswordChanged(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignUpEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String cellphone) cellphoneChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUp,
    required TResult Function() facebookSignUp,
    required TResult Function() googleSignUp,
    required TResult Function() closeSnackBar,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String cellphone)? cellphoneChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUp,
    TResult? Function()? facebookSignUp,
    TResult? Function()? googleSignUp,
    TResult? Function()? closeSnackBar,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String cellphone)? cellphoneChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUp,
    TResult Function()? facebookSignUp,
    TResult Function()? googleSignUp,
    TResult Function()? closeSnackBar,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_CellphoneChanged value) cellphoneChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_FacebookSignUp value) facebookSignUp,
    required TResult Function(_GoogleSignUp value) googleSignUp,
    required TResult Function(_CloseSnackBar value) closeSnackBar,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_CellphoneChanged value)? cellphoneChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_FacebookSignUp value)? facebookSignUp,
    TResult? Function(_GoogleSignUp value)? googleSignUp,
    TResult? Function(_CloseSnackBar value)? closeSnackBar,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_CellphoneChanged value)? cellphoneChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_FacebookSignUp value)? facebookSignUp,
    TResult Function(_GoogleSignUp value)? googleSignUp,
    TResult Function(_CloseSnackBar value)? closeSnackBar,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignUpEvent {
  const factory _PasswordChanged(final String password) = _$_PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignUpCopyWith<$Res> {
  factory _$$_SignUpCopyWith(_$_SignUp value, $Res Function(_$_SignUp) then) =
      __$$_SignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignUpCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_SignUp>
    implements _$$_SignUpCopyWith<$Res> {
  __$$_SignUpCopyWithImpl(_$_SignUp _value, $Res Function(_$_SignUp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignUp implements _SignUp {
  const _$_SignUp();

  @override
  String toString() {
    return 'SignUpEvent.signUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String cellphone) cellphoneChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUp,
    required TResult Function() facebookSignUp,
    required TResult Function() googleSignUp,
    required TResult Function() closeSnackBar,
  }) {
    return signUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String cellphone)? cellphoneChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUp,
    TResult? Function()? facebookSignUp,
    TResult? Function()? googleSignUp,
    TResult? Function()? closeSnackBar,
  }) {
    return signUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String cellphone)? cellphoneChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUp,
    TResult Function()? facebookSignUp,
    TResult Function()? googleSignUp,
    TResult Function()? closeSnackBar,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_CellphoneChanged value) cellphoneChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_FacebookSignUp value) facebookSignUp,
    required TResult Function(_GoogleSignUp value) googleSignUp,
    required TResult Function(_CloseSnackBar value) closeSnackBar,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_CellphoneChanged value)? cellphoneChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_FacebookSignUp value)? facebookSignUp,
    TResult? Function(_GoogleSignUp value)? googleSignUp,
    TResult? Function(_CloseSnackBar value)? closeSnackBar,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_CellphoneChanged value)? cellphoneChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_FacebookSignUp value)? facebookSignUp,
    TResult Function(_GoogleSignUp value)? googleSignUp,
    TResult Function(_CloseSnackBar value)? closeSnackBar,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements SignUpEvent {
  const factory _SignUp() = _$_SignUp;
}

/// @nodoc
abstract class _$$_FacebookSignUpCopyWith<$Res> {
  factory _$$_FacebookSignUpCopyWith(
          _$_FacebookSignUp value, $Res Function(_$_FacebookSignUp) then) =
      __$$_FacebookSignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FacebookSignUpCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_FacebookSignUp>
    implements _$$_FacebookSignUpCopyWith<$Res> {
  __$$_FacebookSignUpCopyWithImpl(
      _$_FacebookSignUp _value, $Res Function(_$_FacebookSignUp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FacebookSignUp implements _FacebookSignUp {
  const _$_FacebookSignUp();

  @override
  String toString() {
    return 'SignUpEvent.facebookSignUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FacebookSignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String cellphone) cellphoneChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUp,
    required TResult Function() facebookSignUp,
    required TResult Function() googleSignUp,
    required TResult Function() closeSnackBar,
  }) {
    return facebookSignUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String cellphone)? cellphoneChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUp,
    TResult? Function()? facebookSignUp,
    TResult? Function()? googleSignUp,
    TResult? Function()? closeSnackBar,
  }) {
    return facebookSignUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String cellphone)? cellphoneChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUp,
    TResult Function()? facebookSignUp,
    TResult Function()? googleSignUp,
    TResult Function()? closeSnackBar,
    required TResult orElse(),
  }) {
    if (facebookSignUp != null) {
      return facebookSignUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_CellphoneChanged value) cellphoneChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_FacebookSignUp value) facebookSignUp,
    required TResult Function(_GoogleSignUp value) googleSignUp,
    required TResult Function(_CloseSnackBar value) closeSnackBar,
  }) {
    return facebookSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_CellphoneChanged value)? cellphoneChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_FacebookSignUp value)? facebookSignUp,
    TResult? Function(_GoogleSignUp value)? googleSignUp,
    TResult? Function(_CloseSnackBar value)? closeSnackBar,
  }) {
    return facebookSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_CellphoneChanged value)? cellphoneChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_FacebookSignUp value)? facebookSignUp,
    TResult Function(_GoogleSignUp value)? googleSignUp,
    TResult Function(_CloseSnackBar value)? closeSnackBar,
    required TResult orElse(),
  }) {
    if (facebookSignUp != null) {
      return facebookSignUp(this);
    }
    return orElse();
  }
}

abstract class _FacebookSignUp implements SignUpEvent {
  const factory _FacebookSignUp() = _$_FacebookSignUp;
}

/// @nodoc
abstract class _$$_GoogleSignUpCopyWith<$Res> {
  factory _$$_GoogleSignUpCopyWith(
          _$_GoogleSignUp value, $Res Function(_$_GoogleSignUp) then) =
      __$$_GoogleSignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GoogleSignUpCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_GoogleSignUp>
    implements _$$_GoogleSignUpCopyWith<$Res> {
  __$$_GoogleSignUpCopyWithImpl(
      _$_GoogleSignUp _value, $Res Function(_$_GoogleSignUp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GoogleSignUp implements _GoogleSignUp {
  const _$_GoogleSignUp();

  @override
  String toString() {
    return 'SignUpEvent.googleSignUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GoogleSignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String cellphone) cellphoneChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUp,
    required TResult Function() facebookSignUp,
    required TResult Function() googleSignUp,
    required TResult Function() closeSnackBar,
  }) {
    return googleSignUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String cellphone)? cellphoneChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUp,
    TResult? Function()? facebookSignUp,
    TResult? Function()? googleSignUp,
    TResult? Function()? closeSnackBar,
  }) {
    return googleSignUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String cellphone)? cellphoneChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUp,
    TResult Function()? facebookSignUp,
    TResult Function()? googleSignUp,
    TResult Function()? closeSnackBar,
    required TResult orElse(),
  }) {
    if (googleSignUp != null) {
      return googleSignUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_CellphoneChanged value) cellphoneChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_FacebookSignUp value) facebookSignUp,
    required TResult Function(_GoogleSignUp value) googleSignUp,
    required TResult Function(_CloseSnackBar value) closeSnackBar,
  }) {
    return googleSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_CellphoneChanged value)? cellphoneChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_FacebookSignUp value)? facebookSignUp,
    TResult? Function(_GoogleSignUp value)? googleSignUp,
    TResult? Function(_CloseSnackBar value)? closeSnackBar,
  }) {
    return googleSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_CellphoneChanged value)? cellphoneChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_FacebookSignUp value)? facebookSignUp,
    TResult Function(_GoogleSignUp value)? googleSignUp,
    TResult Function(_CloseSnackBar value)? closeSnackBar,
    required TResult orElse(),
  }) {
    if (googleSignUp != null) {
      return googleSignUp(this);
    }
    return orElse();
  }
}

abstract class _GoogleSignUp implements SignUpEvent {
  const factory _GoogleSignUp() = _$_GoogleSignUp;
}

/// @nodoc
abstract class _$$_CloseSnackBarCopyWith<$Res> {
  factory _$$_CloseSnackBarCopyWith(
          _$_CloseSnackBar value, $Res Function(_$_CloseSnackBar) then) =
      __$$_CloseSnackBarCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CloseSnackBarCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_CloseSnackBar>
    implements _$$_CloseSnackBarCopyWith<$Res> {
  __$$_CloseSnackBarCopyWithImpl(
      _$_CloseSnackBar _value, $Res Function(_$_CloseSnackBar) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CloseSnackBar implements _CloseSnackBar {
  const _$_CloseSnackBar();

  @override
  String toString() {
    return 'SignUpEvent.closeSnackBar()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CloseSnackBar);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String cellphone) cellphoneChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUp,
    required TResult Function() facebookSignUp,
    required TResult Function() googleSignUp,
    required TResult Function() closeSnackBar,
  }) {
    return closeSnackBar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String cellphone)? cellphoneChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUp,
    TResult? Function()? facebookSignUp,
    TResult? Function()? googleSignUp,
    TResult? Function()? closeSnackBar,
  }) {
    return closeSnackBar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String cellphone)? cellphoneChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUp,
    TResult Function()? facebookSignUp,
    TResult Function()? googleSignUp,
    TResult Function()? closeSnackBar,
    required TResult orElse(),
  }) {
    if (closeSnackBar != null) {
      return closeSnackBar();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_CellphoneChanged value) cellphoneChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_FacebookSignUp value) facebookSignUp,
    required TResult Function(_GoogleSignUp value) googleSignUp,
    required TResult Function(_CloseSnackBar value) closeSnackBar,
  }) {
    return closeSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_CellphoneChanged value)? cellphoneChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_FacebookSignUp value)? facebookSignUp,
    TResult? Function(_GoogleSignUp value)? googleSignUp,
    TResult? Function(_CloseSnackBar value)? closeSnackBar,
  }) {
    return closeSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_CellphoneChanged value)? cellphoneChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_FacebookSignUp value)? facebookSignUp,
    TResult Function(_GoogleSignUp value)? googleSignUp,
    TResult Function(_CloseSnackBar value)? closeSnackBar,
    required TResult orElse(),
  }) {
    if (closeSnackBar != null) {
      return closeSnackBar(this);
    }
    return orElse();
  }
}

abstract class _CloseSnackBar implements SignUpEvent {
  const factory _CloseSnackBar() = _$_CloseSnackBar;
}

/// @nodoc
mixin _$SignUpState {
  Name get name => throw _privateConstructorUsedError;
  LastName get lastName => throw _privateConstructorUsedError;
  Cellphone get cellphone => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  RegisterStatusEnum get status => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Name name, LastName lastName, Cellphone cellphone,
            Password password, RegisterStatusEnum status, bool isValid)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Name name, LastName lastName, Cellphone cellphone,
            Password password, RegisterStatusEnum status, bool isValid)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Name name, LastName lastName, Cellphone cellphone,
            Password password, RegisterStatusEnum status, bool isValid)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {Name name,
      LastName lastName,
      Cellphone cellphone,
      Password password,
      RegisterStatusEnum status,
      bool isValid});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lastName = null,
    Object? cellphone = null,
    Object? password = null,
    Object? status = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      cellphone: null == cellphone
          ? _value.cellphone
          : cellphone // ignore: cast_nullable_to_non_nullable
              as Cellphone,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStatusEnum,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Name name,
      LastName lastName,
      Cellphone cellphone,
      Password password,
      RegisterStatusEnum status,
      bool isValid});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lastName = null,
    Object? cellphone = null,
    Object? password = null,
    Object? status = null,
    Object? isValid = null,
  }) {
    return _then(_$_Initial(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      null == cellphone
          ? _value.cellphone
          : cellphone // ignore: cast_nullable_to_non_nullable
              as Cellphone,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStatusEnum,
      null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      [this.name = const Name.pure(),
      this.lastName = const LastName.pure(),
      this.cellphone = const Cellphone.pure(),
      this.password = const Password.pure(),
      this.status = RegisterStatusEnum.initial,
      this.isValid = false]);

  @override
  @JsonKey()
  final Name name;
  @override
  @JsonKey()
  final LastName lastName;
  @override
  @JsonKey()
  final Cellphone cellphone;
  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final RegisterStatusEnum status;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'SignUpState.initial(name: $name, lastName: $lastName, cellphone: $cellphone, password: $password, status: $status, isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.cellphone, cellphone) ||
                other.cellphone == cellphone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, lastName, cellphone, password, status, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Name name, LastName lastName, Cellphone cellphone,
            Password password, RegisterStatusEnum status, bool isValid)
        initial,
  }) {
    return initial(name, lastName, cellphone, password, status, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Name name, LastName lastName, Cellphone cellphone,
            Password password, RegisterStatusEnum status, bool isValid)?
        initial,
  }) {
    return initial?.call(name, lastName, cellphone, password, status, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Name name, LastName lastName, Cellphone cellphone,
            Password password, RegisterStatusEnum status, bool isValid)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(name, lastName, cellphone, password, status, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignUpState {
  const factory _Initial(
      [final Name name,
      final LastName lastName,
      final Cellphone cellphone,
      final Password password,
      final RegisterStatusEnum status,
      final bool isValid]) = _$_Initial;

  @override
  Name get name;
  @override
  LastName get lastName;
  @override
  Cellphone get cellphone;
  @override
  Password get password;
  @override
  RegisterStatusEnum get status;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
