import 'package:dartz/dartz.dart';
import 'package:walk_dog_app/app/feature/home/domain/models/card.dart';
import 'package:walk_dog_app/app/feature/home/domain/repositories/home_repository.dart';
import 'package:walk_dog_app/core/common/failures.dart';

class GetNearYourUseCase {
  final HomeRepository _homeRepository;

  GetNearYourUseCase(this._homeRepository);

  Future<Either<Failure, List<Card>>> call() async {
    return await _homeRepository.nearYou();
  }
}
