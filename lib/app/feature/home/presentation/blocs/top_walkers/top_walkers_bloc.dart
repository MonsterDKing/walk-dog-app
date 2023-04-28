import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:walk_dog_app/app/feature/home/domain/usescases/get_top_walker.dart';

part 'top_walkers_event.dart';
part 'top_walkers_state.dart';
part 'top_walkers_bloc.freezed.dart';

class TopWalkersBloc extends Bloc<TopWalkersEvent, TopWalkersState> {
  final GetTopWalkersUseCase getTopWalkersUseCase;
  final Logger logger;

  TopWalkersBloc(this.getTopWalkersUseCase, this.logger) : super(const _Initial()) {
    on<TopWalkersEvent>((event, emit) {});
  }
}
