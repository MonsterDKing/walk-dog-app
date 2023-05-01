import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_model.freezed.dart';
part 'card_model.g.dart';

@freezed
abstract class CardModel with _$CardModel {
  const factory CardModel({
    required String image,
    required String name,
    required String distance,
    required double priceXHour,
    required double rating,
  }) = _CardModel;

  factory CardModel.fromJson(Map<String, dynamic> json) => _$CardModelFromJson(json);
}
