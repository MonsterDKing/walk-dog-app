// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fullName, String cellPhone, String password)
        signUp,
    required TResult Function() signIn,
    required TResult Function() signInFacebook,
    required TResult Function() signInGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fullName, String cellPhone, String password)?
        signUp,
    TResult? Function()? signIn,
    TResult? Function()? signInFacebook,
    TResult? Function()? signInGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName, String cellPhone, String password)?
        signUp,
    TResult Function()? signIn,
    TResult Function()? signInFacebook,
    TResult Function()? signInGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignInFacebook value) signInFacebook,
    required TResult Function(_SignInGoogle value) signInGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignInFacebook value)? signInFacebook,
    TResult? Function(_SignInGoogle value)? signInGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignInFacebook value)? signInFacebook,
    TResult Function(_SignInGoogle value)? signInGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignUpCopyWith<$Res> {
  factory _$$_SignUpCopyWith(_$_SignUp value, $Res Function(_$_SignUp) then) =
      __$$_SignUpCopyWithImpl<$Res>;
  @useResult
  $Res call({String fullName, String cellPhone, String password});
}

/// @nodoc
class __$$_SignUpCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignUp>
    implements _$$_SignUpCopyWith<$Res> {
  __$$_SignUpCopyWithImpl(_$_SignUp _value, $Res Function(_$_SignUp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? cellPhone = null,
    Object? password = null,
  }) {
    return _then(_$_SignUp(
      null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      null == cellPhone
          ? _value.cellPhone
          : cellPhone // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUp implements _SignUp {
  const _$_SignUp(this.fullName, this.cellPhone, this.password);

  @override
  final String fullName;
  @override
  final String cellPhone;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signUp(fullName: $fullName, cellPhone: $cellPhone, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUp &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.cellPhone, cellPhone) ||
                other.cellPhone == cellPhone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName, cellPhone, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpCopyWith<_$_SignUp> get copyWith =>
      __$$_SignUpCopyWithImpl<_$_SignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fullName, String cellPhone, String password)
        signUp,
    required TResult Function() signIn,
    required TResult Function() signInFacebook,
    required TResult Function() signInGoogle,
  }) {
    return signUp(fullName, cellPhone, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fullName, String cellPhone, String password)?
        signUp,
    TResult? Function()? signIn,
    TResult? Function()? signInFacebook,
    TResult? Function()? signInGoogle,
  }) {
    return signUp?.call(fullName, cellPhone, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName, String cellPhone, String password)?
        signUp,
    TResult Function()? signIn,
    TResult Function()? signInFacebook,
    TResult Function()? signInGoogle,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(fullName, cellPhone, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignInFacebook value) signInFacebook,
    required TResult Function(_SignInGoogle value) signInGoogle,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignInFacebook value)? signInFacebook,
    TResult? Function(_SignInGoogle value)? signInGoogle,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignInFacebook value)? signInFacebook,
    TResult Function(_SignInGoogle value)? signInGoogle,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements AuthEvent {
  const factory _SignUp(final String fullName, final String cellPhone,
      final String password) = _$_SignUp;

  String get fullName;
  String get cellPhone;
  String get password;
  @JsonKey(ignore: true)
  _$$_SignUpCopyWith<_$_SignUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInCopyWith<$Res> {
  factory _$$_SignInCopyWith(_$_SignIn value, $Res Function(_$_SignIn) then) =
      __$$_SignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignIn>
    implements _$$_SignInCopyWith<$Res> {
  __$$_SignInCopyWithImpl(_$_SignIn _value, $Res Function(_$_SignIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignIn implements _SignIn {
  const _$_SignIn();

  @override
  String toString() {
    return 'AuthEvent.signIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fullName, String cellPhone, String password)
        signUp,
    required TResult Function() signIn,
    required TResult Function() signInFacebook,
    required TResult Function() signInGoogle,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fullName, String cellPhone, String password)?
        signUp,
    TResult? Function()? signIn,
    TResult? Function()? signInFacebook,
    TResult? Function()? signInGoogle,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName, String cellPhone, String password)?
        signUp,
    TResult Function()? signIn,
    TResult Function()? signInFacebook,
    TResult Function()? signInGoogle,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignInFacebook value) signInFacebook,
    required TResult Function(_SignInGoogle value) signInGoogle,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignInFacebook value)? signInFacebook,
    TResult? Function(_SignInGoogle value)? signInGoogle,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignInFacebook value)? signInFacebook,
    TResult Function(_SignInGoogle value)? signInGoogle,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements AuthEvent {
  const factory _SignIn() = _$_SignIn;
}

/// @nodoc
abstract class _$$_SignInFacebookCopyWith<$Res> {
  factory _$$_SignInFacebookCopyWith(
          _$_SignInFacebook value, $Res Function(_$_SignInFacebook) then) =
      __$$_SignInFacebookCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInFacebookCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignInFacebook>
    implements _$$_SignInFacebookCopyWith<$Res> {
  __$$_SignInFacebookCopyWithImpl(
      _$_SignInFacebook _value, $Res Function(_$_SignInFacebook) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInFacebook implements _SignInFacebook {
  const _$_SignInFacebook();

  @override
  String toString() {
    return 'AuthEvent.signInFacebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInFacebook);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fullName, String cellPhone, String password)
        signUp,
    required TResult Function() signIn,
    required TResult Function() signInFacebook,
    required TResult Function() signInGoogle,
  }) {
    return signInFacebook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fullName, String cellPhone, String password)?
        signUp,
    TResult? Function()? signIn,
    TResult? Function()? signInFacebook,
    TResult? Function()? signInGoogle,
  }) {
    return signInFacebook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName, String cellPhone, String password)?
        signUp,
    TResult Function()? signIn,
    TResult Function()? signInFacebook,
    TResult Function()? signInGoogle,
    required TResult orElse(),
  }) {
    if (signInFacebook != null) {
      return signInFacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignInFacebook value) signInFacebook,
    required TResult Function(_SignInGoogle value) signInGoogle,
  }) {
    return signInFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignInFacebook value)? signInFacebook,
    TResult? Function(_SignInGoogle value)? signInGoogle,
  }) {
    return signInFacebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignInFacebook value)? signInFacebook,
    TResult Function(_SignInGoogle value)? signInGoogle,
    required TResult orElse(),
  }) {
    if (signInFacebook != null) {
      return signInFacebook(this);
    }
    return orElse();
  }
}

abstract class _SignInFacebook implements AuthEvent {
  const factory _SignInFacebook() = _$_SignInFacebook;
}

/// @nodoc
abstract class _$$_SignInGoogleCopyWith<$Res> {
  factory _$$_SignInGoogleCopyWith(
          _$_SignInGoogle value, $Res Function(_$_SignInGoogle) then) =
      __$$_SignInGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInGoogleCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignInGoogle>
    implements _$$_SignInGoogleCopyWith<$Res> {
  __$$_SignInGoogleCopyWithImpl(
      _$_SignInGoogle _value, $Res Function(_$_SignInGoogle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInGoogle implements _SignInGoogle {
  const _$_SignInGoogle();

  @override
  String toString() {
    return 'AuthEvent.signInGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fullName, String cellPhone, String password)
        signUp,
    required TResult Function() signIn,
    required TResult Function() signInFacebook,
    required TResult Function() signInGoogle,
  }) {
    return signInGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fullName, String cellPhone, String password)?
        signUp,
    TResult? Function()? signIn,
    TResult? Function()? signInFacebook,
    TResult? Function()? signInGoogle,
  }) {
    return signInGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName, String cellPhone, String password)?
        signUp,
    TResult Function()? signIn,
    TResult Function()? signInFacebook,
    TResult Function()? signInGoogle,
    required TResult orElse(),
  }) {
    if (signInGoogle != null) {
      return signInGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignInFacebook value) signInFacebook,
    required TResult Function(_SignInGoogle value) signInGoogle,
  }) {
    return signInGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignInFacebook value)? signInFacebook,
    TResult? Function(_SignInGoogle value)? signInGoogle,
  }) {
    return signInGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignInFacebook value)? signInFacebook,
    TResult Function(_SignInGoogle value)? signInGoogle,
    required TResult orElse(),
  }) {
    if (signInGoogle != null) {
      return signInGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInGoogle implements AuthEvent {
  const factory _SignInGoogle() = _$_SignInGoogle;
}

/// @nodoc
mixin _$AuthState {
  AuthStatus get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthStatus status) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthStatus status)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthStatus status)? initial,
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
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({AuthStatus status});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthStatus status});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_Initial(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.status = AuthStatus.initial});

  @override
  @JsonKey()
  final AuthStatus status;

  @override
  String toString() {
    return 'AuthState.initial(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthStatus status) initial,
  }) {
    return initial(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthStatus status)? initial,
  }) {
    return initial?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthStatus status)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status);
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

abstract class _Initial implements AuthState {
  const factory _Initial({final AuthStatus status}) = _$_Initial;

  @override
  AuthStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
