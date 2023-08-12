import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import 'package:walk_dog_app/app/feature/home/domain/usescases/get_load_more_top_walker.dart';
import 'package:walk_dog_app/app/feature/home/domain/usescases/get_top_walker.dart';
import 'package:walk_dog_app/app/feature/home/domain/models/card_model.dart';
import 'package:walk_dog_app/core/common/failures.dart';

part 'top_walkers_event.dart';
part 'top_walkers_state.dart';
part 'top_walkers_bloc.freezed.dart';

class TopWalkersBloc extends Bloc<TopWalkersEvent, TopWalkersState> {
  final GetTopWalkersUseCase getTopWalkersUseCase;
  final GetLoadMoreTopWalkers getLoadMoreTopWalkers;
  final Logger logger;

  TopWalkersBloc(this.getTopWalkersUseCase, this.logger, this.getLoadMoreTopWalkers) : super(const _Initial()) {
    on<TopWalkersEvent>((event, emit) async {
      await event.map(
        started: (event) async => await _started(event, emit),
        loadMore: (event) async => await _loadMore(event, emit),
      );
    });
  }

  _started(_Started event, Emitter<TopWalkersState> emit) async {
    logger.i('TopWalkersBloc started');
    emit(state.copyWith(status: TopWalkersStatus.loading));
    final result = await getTopWalkersUseCase.call();

    result.fold(
        (l) => l is NoInternetFailure
            ? emit(state.copyWith(status: TopWalkersStatus.noInternet))
            : emit(state.copyWith(status: TopWalkersStatus.error)),
        (r) => emit(state.copyWith(status: TopWalkersStatus.loaded, cards: r)));
  }

  _loadMore(_LoadMore event, Emitter<TopWalkersState> emit) async {
    logger.i('TopWalkersBloc loadMore');
    emit(state.copyWith(status: TopWalkersStatus.loading));

    final result = await getLoadMoreTopWalkers.call();

    //get the topwalkers in the state and add the new ones
    List<CardModel> cards = List.from(state.cards);
    final newCards = result.getOrElse(() => <CardModel>[]);
    cards.addAll(newCards);
    emit(state.copyWith(status: TopWalkersStatus.loaded, cards: cards));
  }
}
