part of 'top_walkers_bloc.dart';

enum TopWalkersStatus { initial, loading, loaded, error, noInternet }

@freezed
class TopWalkersState with _$TopWalkersState {
  const factory TopWalkersState.initial([
    @Default(TopWalkersStatus.initial) TopWalkersStatus status,
    @Default([]) List<CardModel> cards,
  ]) = _Initial;
}
