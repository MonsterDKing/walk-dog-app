import 'package:logger/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walk_dog_app/app/feature/home/domain/models/card.dart';
import 'package:walk_dog_app/app/feature/home/domain/usescases/get_near_you.dart';

part 'near_you_event.dart';
part 'near_you_state.dart';
part 'near_you_bloc.freezed.dart';

class NearYouBloc extends Bloc<NearYouEvent, NearYouState> {
  final GetNearYourUseCase getNearYourUseCase;
  final Logger logger;

  NearYouBloc(this.getNearYourUseCase, this.logger) : super(const _Initial()) {
    on<NearYouEvent>((event, emit) async {
      event.map(started: (started) => _started(started, emit));
    });
  }

  Future<void> _started(NearYouEvent event, Emitter<NearYouState> emit) async {
    logger.i('NearYouBloc started');

    final result = await getNearYourUseCase.call();
    logger.d("results $result");
    result.fold((l) => emit(state.copyWith(status: NearYouStatus.error)),
        (r) => emit(state.copyWith(status: NearYouStatus.loaded, cards: r)));
  }
}
