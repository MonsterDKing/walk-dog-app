import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:walk_dog_app/app/feature/home/domain/usescases/get_near_you.dart';

part 'near_you_event.dart';
part 'near_you_state.dart';
part 'near_you_bloc.freezed.dart';

class NearYouBloc extends Bloc<NearYouEvent, NearYouState> {
  final GetNearYourUseCase getNearYourUseCase;
  final Logger logger;

  NearYouBloc(this.getNearYourUseCase, this.logger) : super(const _Initial()) {
    on<NearYouEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
