import 'package:dartz/dartz.dart';
import 'package:walk_dog_app/core/common/failures.dart';
import 'package:walk_dog_app/app/feature/home/domain/models/card_model.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<CardModel>>> nearYou();
  Future<Either<Failure, List<CardModel>>> suggested();
  Future<Either<Failure, List<CardModel>>> topWalkers();
}
