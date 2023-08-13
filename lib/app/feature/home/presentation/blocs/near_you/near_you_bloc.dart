import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'package:walk_dog_app/app/feature/home/domain/usescases/get_near_you.dart';
import 'package:walk_dog_app/app/feature/home/domain/models/card_model.dart';
import 'package:walk_dog_app/core/common/failures.dart';

part 'near_you_event.dart';
part 'near_you_state.dart';
part 'near_you_bloc.freezed.dart';

@Injectable()
class NearYouBloc extends Bloc<NearYouEvent, NearYouState> {
  final GetNearYourUseCase getNearYourUseCase;
  final Logger logger;

  NearYouBloc(this.getNearYourUseCase, this.logger) : super(const _Initial()) {
    on<NearYouEvent>((event, emit) async {
      await event.map(
        started: (event) async => await _started(event, emit),
      );
    });
  }

  _started(NearYouEvent event, Emitter<NearYouState> emit) async {
    logger.i('NearYouBloc started');
    emit(state.copyWith(status: NearYouStatus.loading));
    final result = await getNearYourUseCase.call();
    logger.i("result: $result");

    result.fold(
        (l) => l is NoInternetFailure
            ? emit(state.copyWith(status: NearYouStatus.noInternet))
            : emit(state.copyWith(status: NearYouStatus.error)),
        (r) => emit(state.copyWith(status: NearYouStatus.loaded, cards: r)));
  }
}
