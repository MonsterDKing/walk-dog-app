import 'package:walk_dog_app/app/feature/home/domain/models/card_model.dart';
import 'package:dartz/dartz.dart';
import 'package:walk_dog_app/app/feature/home/domain/repositories/home_repository.dart';
import 'package:walk_dog_app/app/feature/home/infraestructure/datasource/home_remote_data_source.dart';
import 'package:walk_dog_app/core/common/failures.dart';
import 'package:walk_dog_app/core/common/utils/utils.dart';

class HomeRepositoryTestImp with HomeRepository {
  final HomeRemoteDataSource _homeDataSource;

  HomeRepositoryTestImp(this._homeDataSource);

  @override
  Future<Either<Failure, List<CardModel>>> nearYou() async {
    List<CardModel> cards = [
      CardModel(
        distance: "10km",
        name: "Test1",
        image: Utils.generateRandomImage(),
        rating: 4.5,
        priceXHour: 150,
      ),
      CardModel(
        distance: "5km",
        name: "Test2",
        image: Utils.generateRandomImage(),
        rating: 4.0,
        priceXHour: 120,
      ),
      CardModel(
        distance: "3km",
        name: "Test3",
        image: Utils.generateRandomImage(),
        rating: 4.8,
        priceXHour: 200,
      ),
    ];

    await Future.delayed(const Duration(seconds: 5));

    return Right(cards);
  }

  @override
  Future<Either<Failure, List<CardModel>>> suggested() async {
    List<CardModel> cards = [
      CardModel(
        distance: "10km",
        name: "Test1",
        image: Utils.generateRandomImage(),
        rating: 4.5,
        priceXHour: 150,
      ),
      CardModel(
        distance: "5km",
        name: "Test2",
        image: Utils.generateRandomImage(),
        rating: 4.0,
        priceXHour: 120,
      ),
      CardModel(
        distance: "3km",
        name: "Test3",
        image: Utils.generateRandomImage(),
        rating: 4.8,
        priceXHour: 200,
      ),
    ];

    await Future.delayed(const Duration(seconds: 5));

    return Right(cards);
  }

  @override
  Future<Either<Failure, List<CardModel>>> topWalkers() async {
    List<CardModel> cards = [
      CardModel(
        distance: "10km",
        name: "Test1",
        image: Utils.generateRandomImage(),
        rating: 4.5,
        priceXHour: 150,
      ),
      CardModel(
        distance: "5km",
        name: "Test2",
        image: Utils.generateRandomImage(),
        rating: 4.0,
        priceXHour: 120,
      ),
      CardModel(
        distance: "3km",
        name: "Test3",
        image: Utils.generateRandomImage(),
        rating: 4.8,
        priceXHour: 200,
      ),
    ];

    await Future.delayed(const Duration(seconds: 5));

    return Right(cards);
  }
}
