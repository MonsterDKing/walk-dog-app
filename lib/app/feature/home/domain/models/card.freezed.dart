// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Card _$CardFromJson(Map<String, dynamic> json) {
  return _Card.fromJson(json);
}

/// @nodoc
mixin _$Card {
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get distance => throw _privateConstructorUsedError;
  double get priceXHour => throw _privateConstructorUsedError;
  double get raiting => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardCopyWith<Card> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res, Card>;
  @useResult
  $Res call(
      {String image,
      String name,
      String distance,
      double priceXHour,
      double raiting});
}

/// @nodoc
class _$CardCopyWithImpl<$Res, $Val extends Card>
    implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

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
    Object? raiting = null,
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
      raiting: null == raiting
          ? _value.raiting
          : raiting // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$$_CardCopyWith(_$_Card value, $Res Function(_$_Card) then) =
      __$$_CardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String image,
      String name,
      String distance,
      double priceXHour,
      double raiting});
}

/// @nodoc
class __$$_CardCopyWithImpl<$Res> extends _$CardCopyWithImpl<$Res, _$_Card>
    implements _$$_CardCopyWith<$Res> {
  __$$_CardCopyWithImpl(_$_Card _value, $Res Function(_$_Card) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
    Object? distance = null,
    Object? priceXHour = null,
    Object? raiting = null,
  }) {
    return _then(_$_Card(
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
      raiting: null == raiting
          ? _value.raiting
          : raiting // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Card implements _Card {
  const _$_Card(
      {required this.image,
      required this.name,
      required this.distance,
      required this.priceXHour,
      required this.raiting});

  factory _$_Card.fromJson(Map<String, dynamic> json) => _$$_CardFromJson(json);

  @override
  final String image;
  @override
  final String name;
  @override
  final String distance;
  @override
  final double priceXHour;
  @override
  final double raiting;

  @override
  String toString() {
    return 'Card(image: $image, name: $name, distance: $distance, priceXHour: $priceXHour, raiting: $raiting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Card &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.priceXHour, priceXHour) ||
                other.priceXHour == priceXHour) &&
            (identical(other.raiting, raiting) || other.raiting == raiting));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, image, name, distance, priceXHour, raiting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardCopyWith<_$_Card> get copyWith =>
      __$$_CardCopyWithImpl<_$_Card>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardToJson(
      this,
    );
  }
}

abstract class _Card implements Card {
  const factory _Card(
      {required final String image,
      required final String name,
      required final String distance,
      required final double priceXHour,
      required final double raiting}) = _$_Card;

  factory _Card.fromJson(Map<String, dynamic> json) = _$_Card.fromJson;

  @override
  String get image;
  @override
  String get name;
  @override
  String get distance;
  @override
  double get priceXHour;
  @override
  double get raiting;
  @override
  @JsonKey(ignore: true)
  _$$_CardCopyWith<_$_Card> get copyWith => throw _privateConstructorUsedError;
}
