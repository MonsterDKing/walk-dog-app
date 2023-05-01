// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardModel _$$_CardModelFromJson(Map<String, dynamic> json) => _$_CardModel(
      image: json['image'] as String,
      name: json['name'] as String,
      distance: json['distance'] as String,
      priceXHour: (json['priceXHour'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CardModelToJson(_$_CardModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'distance': instance.distance,
      'priceXHour': instance.priceXHour,
      'rating': instance.rating,
    };
