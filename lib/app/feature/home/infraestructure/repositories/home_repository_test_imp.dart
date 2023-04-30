import 'package:walk_dog_app/app/feature/home/domain/models/card.dart';
import 'package:dartz/dartz.dart';
import 'package:walk_dog_app/app/feature/home/domain/repositories/home_repository.dart';
import 'package:walk_dog_app/app/feature/home/infraestructure/datasource/home_remote_data_source.dart';
import 'package:walk_dog_app/core/common/failures.dart';
import 'package:walk_dog_app/core/common/utils/utils.dart';

class HomeRepositoryTestImp with HomeRepository {
  final HomeRemoteDataSource _homeDataSource;

  HomeRepositoryTestImp(this._homeDataSource);

  @override
  Future<Either<Failure, List<Card>>> nearYou() {
    List<Card> cards = [
      Card(
        distance: "10km",
        name: "Test1",
        image: Utils.generateRandomImage(),
        rating: 4.5,
        priceXHour: 150,
      ),
      Card(
        distance: "5km",
        name: "Test2",
        image: Utils.generateRandomImage(),
        rating: 4.0,
        priceXHour: 120,
      ),
      Card(
        distance: "3km",
        name: "Test3",
        image: Utils.generateRandomImage(),
        rating: 4.8,
        priceXHour: 200,
      ),
    ];

    return Future.delayed(
      const Duration(seconds: 5),
      () => Right(cards),
    );
  }

  @override
  Future<Either<Failure, List<Card>>> suggested() {
    List<Card> cards = [
      Card(
        distance: "10km",
        name: "Test1",
        image: Utils.generateRandomImage(),
        rating: 4.5,
        priceXHour: 150,
      ),
      Card(
        distance: "5km",
        name: "Test2",
        image: Utils.generateRandomImage(),
        rating: 4.0,
        priceXHour: 120,
      ),
      Card(
        distance: "3km",
        name: "Test3",
        image: Utils.generateRandomImage(),
        rating: 4.8,
        priceXHour: 200,
      ),
    ];

    return Future.delayed(
      const Duration(seconds: 5),
      () => Right(cards),
    );
  }

  @override
  Future<Either<Failure, List<Card>>> topWalkers() {
    List<Card> cards = [
      Card(
        distance: "10km",
        name: "Test1",
        image: Utils.generateRandomImage(),
        rating: 4.5,
        priceXHour: 150,
      ),
      Card(
        distance: "5km",
        name: "Test2",
        image: Utils.generateRandomImage(),
        rating: 4.0,
        priceXHour: 120,
      ),
      Card(
        distance: "3km",
        name: "Test3",
        image: Utils.generateRandomImage(),
        rating: 4.8,
        priceXHour: 200,
      ),
    ];

    return Future.delayed(
      const Duration(seconds: 5),
      () => Right(cards),
    );
  }
}
