import 'package:dartz/dartz.dart';
import 'package:walk_dog_app/app/feature/home/domain/models/card_model.dart';
import 'package:walk_dog_app/app/feature/home/domain/repositories/home_repository.dart';
import 'package:walk_dog_app/core/common/failures.dart';

class GetSuggestedUseCase {
  final HomeRepository _homeRepository;

  GetSuggestedUseCase(this._homeRepository);

  Future<Either<Failure, List<CardModel>>> call() async {
    return await _homeRepository.suggested();
  }
}
