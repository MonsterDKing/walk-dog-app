part of 'suggested_bloc.dart';

enum SuggestedStatus { initial, loading, loaded, error, noInternet }

@freezed
class SuggestedState with _$SuggestedState {
  const factory SuggestedState.initial([
    @Default(SuggestedStatus.initial) SuggestedStatus status,
    @Default([]) List<CardModel> cards,
  ]) = _Initial;
}
