// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardModel _$CardModelFromJson(Map<String, dynamic> json) {
  return _CardModel.fromJson(json);
}

/// @nodoc
mixin _$CardModel {
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get distance => throw _privateConstructorUsedError;
  double get priceXHour => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardModelCopyWith<CardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardModelCopyWith<$Res> {
  factory $CardModelCopyWith(CardModel value, $Res Function(CardModel) then) =
      _$CardModelCopyWithImpl<$Res, CardModel>;
  @useResult
  $Res call(
      {String image,
      String name,
      String distance,
      double priceXHour,
      double rating});
}

/// @nodoc
class _$CardModelCopyWithImpl<$Res, $Val extends CardModel>
    implements $CardModelCopyWith<$Res> {
  _$CardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
    Object? distance = null,
    Object? priceXHour = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
      priceXHour: null == priceXHour
          ? _value.priceXHour
          : priceXHour // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardModelCopyWith<$Res> implements $CardModelCopyWith<$Res> {
  factory _$$_CardModelCopyWith(
          _$_CardModel value, $Res Function(_$_CardModel) then) =
      __$$_CardModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String image,
      String name,
      String distance,
      double priceXHour,
      double rating});
}

/// @nodoc
class __$$_CardModelCopyWithImpl<$Res>
    extends _$CardModelCopyWithImpl<$Res, _$_CardModel>
    implements _$$_CardModelCopyWith<$Res> {
  __$$_CardModelCopyWithImpl(
      _$_CardModel _value, $Res Function(_$_CardModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
    Object? distance = null,
    Object? priceXHour = null,
    Object? rating = null,
  }) {
    return _then(_$_CardModel(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
      priceXHour: null == priceXHour
          ? _value.priceXHour
          : priceXHour // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardModel implements _CardModel {
  const _$_CardModel(
      {required this.image,
      required this.name,
      required this.distance,
      required this.priceXHour,
      required this.rating});

  factory _$_CardModel.fromJson(Map<String, dynamic> json) =>
      _$$_CardModelFromJson(json);

  @override
  final String image;
  @override
  final String name;
  @override
  final String distance;
  @override
  final double priceXHour;
  @override
  final double rating;

  @override
  String toString() {
    return 'CardModel(image: $image, name: $name, distance: $distance, priceXHour: $priceXHour, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardModel &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.priceXHour, priceXHour) ||
                other.priceXHour == priceXHour) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, image, name, distance, priceXHour, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardModelCopyWith<_$_CardModel> get copyWith =>
      __$$_CardModelCopyWithImpl<_$_CardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardModelToJson(
      this,
    );
  }
}

abstract class _CardModel implements CardModel {
  const factory _CardModel(
      {required final String image,
      required final String name,
      required final String distance,
      required final double priceXHour,
      required final double rating}) = _$_CardModel;

  factory _CardModel.fromJson(Map<String, dynamic> json) =
      _$_CardModel.fromJson;

  @override
  String get image;
  @override
  String get name;
  @override
  String get distance;
  @override
  double get priceXHour;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$_CardModelCopyWith<_$_CardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
