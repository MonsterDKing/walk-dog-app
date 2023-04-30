part of 'near_you_bloc.dart';

enum NearYouStatus { initial, loading, loaded, error }

@freezed
class NearYouState with _$NearYouState {
  const factory NearYouState.initial([
    @Default(NearYouStatus.initial) NearYouStatus status,
    @Default([]) List<Card> cards,
  ]) = _Initial;
}
