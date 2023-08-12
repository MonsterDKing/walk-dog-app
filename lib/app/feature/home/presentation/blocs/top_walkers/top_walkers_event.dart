part of 'top_walkers_bloc.dart';

@freezed
class TopWalkersEvent with _$TopWalkersEvent {
  const factory TopWalkersEvent.started() = _Started;
  const factory TopWalkersEvent.loadMore() = _LoadMore;
}
