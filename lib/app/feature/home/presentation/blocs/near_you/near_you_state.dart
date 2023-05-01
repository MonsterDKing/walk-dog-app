part of 'near_you_bloc.dart';

enum NearYouStatus { initial, loading, loaded, error, noInternet }

@freezed
class NearYouState with _$NearYouState {
  const factory NearYouState.initial([
    @Default(NearYouStatus.initial) NearYouStatus status,
    @Default([]) List<CardModel> cards,
  ]) = _Initial;
}
