import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';
part 'card.g.dart';

@freezed
abstract class Card with _$Card {
  const factory Card({
    required String image,
    required String name,
    required String distance,
    required double priceXHour,
    required double raiting,
  }) = _Card;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
}
