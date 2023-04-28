import 'package:dartz/dartz.dart';
import 'package:walk_dog_app/core/common/failures.dart';
import 'package:walk_dog_app/app/feature/home/domain/models/card.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<Card>>> nearYou();
  Future<Either<Failure, List<Card>>> suggested();
  Future<Either<Failure, List<Card>>> topWalkers();
}
