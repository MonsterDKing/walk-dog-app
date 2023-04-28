import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:walk_dog_app/app/feature/home/domain/usescases/get_suggested.dart';

part 'suggested_event.dart';
part 'suggested_state.dart';
part 'suggested_bloc.freezed.dart';

class SuggestedBloc extends Bloc<SuggestedEvent, SuggestedState> {
  final GetSuggestedUseCase getSuggestedUseCase;
  final Logger logger;

  SuggestedBloc(this.getSuggestedUseCase, this.logger) : super(const _Initial()) {
    on<SuggestedEvent>((event, emit) {});
  }
}
