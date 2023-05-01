import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import 'package:walk_dog_app/app/feature/home/domain/usescases/get_suggested.dart';
import 'package:walk_dog_app/app/feature/home/domain/models/card_model.dart';
import 'package:walk_dog_app/core/common/failures.dart';

part 'suggested_event.dart';
part 'suggested_state.dart';
part 'suggested_bloc.freezed.dart';

class SuggestedBloc extends Bloc<SuggestedEvent, SuggestedState> {
  final GetSuggestedUseCase getSuggestedUseCase;
  final Logger logger;

  SuggestedBloc(this.getSuggestedUseCase, this.logger) : super(const _Initial()) {
    on<SuggestedEvent>((event, emit) async {
      await event.map(
        started: (event) async => await _started(event, emit),
      );
    });
  }

  _started(_Started event, Emitter<SuggestedState> emit) async {
    logger.i('SuggestedBloc started');
    emit(state.copyWith(status: SuggestedStatus.loading));
    final result = await getSuggestedUseCase.call();
    logger.i("result: $result");

    result.fold(
        (l) => l is NoInternetFailure
            ? emit(state.copyWith(status: SuggestedStatus.noInternet))
            : emit(state.copyWith(status: SuggestedStatus.error)),
        (r) => emit(state.copyWith(status: SuggestedStatus.loaded, cards: r)));
  }
}
