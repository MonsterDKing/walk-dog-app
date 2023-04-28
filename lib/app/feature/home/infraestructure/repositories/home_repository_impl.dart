import 'package:walk_dog_app/app/feature/home/domain/models/card.dart';
import 'package:dartz/dartz.dart';
import 'package:walk_dog_app/app/feature/home/domain/repositories/home_repository.dart';
import 'package:walk_dog_app/app/feature/home/infraestructure/datasource/home_remote_data_source.dart';
import 'package:walk_dog_app/core/common/failures.dart';

class HomeRepositoryImp with HomeRepository {
  final HomeRemoteDataSource _homeDataSource;

  HomeRepositoryImp(this._homeDataSource);

  @override
  Future<Either<Failure, List<Card>>> nearYou() async {
    var res = await _homeDataSource.nearYou();

    res.when(succeeded: (succeeded) {
      var cards = succeeded as Map<String, dynamic>;
      var list = cards['data'] as List<dynamic>;
      var cardsList = list.map((e) => Card.fromJson(e)).toList();
      return Right(cardsList);
    }, failed: (failed) {
      return Left(ServerFailure(message: "Error"));
    }, error: (error) {
      return Left(ServerFailure(message: "Error"));
    });

    return Left(ServerFailure(message: "Error"));
  }

  @override
  Future<Either<Failure, List<Card>>> suggested() async {
    var res = await _homeDataSource.suggested();
    res.when(succeeded: (succeeded) {
      var cards = succeeded as Map<String, dynamic>;
      var list = cards['data'] as List<dynamic>;
      var cardsList = list.map((e) => Card.fromJson(e)).toList();
      return Right(cardsList);
    }, failed: (failed) {
      return Left(ServerFailure(message: "Error"));
    }, error: (error) {
      return Left(ServerFailure(message: "Error"));
    });

    return Left(ServerFailure(message: "Error"));
  }

  @override
  Future<Either<Failure, List<Card>>> topWalkers() async {
    var res = await _homeDataSource.topWalkers();
    res.when(succeeded: (succeeded) {
      var cards = succeeded as Map<String, dynamic>;
      var list = cards['data'] as List<dynamic>;
      var cardsList = list.map((e) => Card.fromJson(e)).toList();
      return Right(cardsList);
    }, failed: (failed) {
      return Left(ServerFailure(message: "Error"));
    }, error: (error) {
      return Left(ServerFailure(message: "Error"));
    });

    return Left(ServerFailure(message: "Error"));
  }
}
