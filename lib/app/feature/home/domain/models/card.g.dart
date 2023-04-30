// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Card _$$_CardFromJson(Map<String, dynamic> json) => _$_Card(
      image: json['image'] as String,
      name: json['name'] as String,
      distance: json['distance'] as String,
      priceXHour: (json['priceXHour'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CardToJson(_$_Card instance) => <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'distance': instance.distance,
      'priceXHour': instance.priceXHour,
      'rating': instance.rating,
    };
