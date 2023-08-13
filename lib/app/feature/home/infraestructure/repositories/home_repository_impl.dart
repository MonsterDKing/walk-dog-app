import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:walk_dog_app/app/feature/home/domain/models/card_model.dart';
import 'package:dartz/dartz.dart';
import 'package:walk_dog_app/app/feature/home/domain/repositories/home_repository.dart';
import 'package:walk_dog_app/app/feature/home/infraestructure/datasource/home_remote_data_source.dart';
import 'package:walk_dog_app/core/common/failures.dart';
import 'package:walk_dog_app/core/common/utils/utils.dart';

// @Injectable(as: HomeRepository)
class HomeRepositoryImp with HomeRepository {
  final HomeRemoteDataSource _homeDataSource;
  final Connectivity _connectivity;

  HomeRepositoryImp(this._homeDataSource, this._connectivity);

  @override
  Future<Either<Failure, List<CardModel>>> nearYou() async {
    var res = await _homeDataSource.nearYou();
    var connectivity = await _connectivity.checkConnectivity();
    if (connectivity == ConnectivityResult.none) {
      return Left(NoInternetFailure(message: "No internet"));
    }

    return res.when(succeeded: (succeeded) {
      // var cards = succeeded as Map<String, dynamic>;
      var list = succeeded as List<dynamic>;
      var cardsList = list.map((e) => CardModel.fromJson(e)).toList();
      return Right(cardsList);
    }, failed: (failed) {
      return Left(ServerFailure(message: "Error"));
    }, error: (error) {
      return Left(ServerFailure(message: "Error"));
    });
  }

  @override
  Future<Either<Failure, List<CardModel>>> suggested() async {
    var res = await _homeDataSource.suggested();
    var connectivity = await _connectivity.checkConnectivity();
    if (connectivity == ConnectivityResult.none) {
      return Left(NoInternetFailure(message: "No internet"));
    }

    return res.when(succeeded: (succeeded) {
      // var cards = succeeded as Map<String, dynamic>;
      var list = succeeded as List<dynamic>;
      var cardsList = list.map((e) => CardModel.fromJson(e)).toList();
      return Right(cardsList);
    }, failed: (failed) {
      return Left(ServerFailure(message: "Error"));
    }, error: (error) {
      return Left(ServerFailure(message: "Error"));
    });
  }

  @override
  Future<Either<Failure, List<CardModel>>> topWalkers() async {
    var res = await _homeDataSource.topWalkers();
    var connectivity = await _connectivity.checkConnectivity();
    if (connectivity == ConnectivityResult.none) {
      return Left(NoInternetFailure(message: "No internet"));
    }

    return res.when(succeeded: (succeeded) {
      // var cards = succeeded as Map<String, dynamic>;
      var list = succeeded as List<dynamic>;
      var cardsList = list.map((e) => CardModel.fromJson(e)).toList();
      return Right(cardsList);
    }, failed: (failed) {
      return Left(ServerFailure(message: "Error"));
    }, error: (error) {
      return Left(ServerFailure(message: "Error"));
    });
  }

  @override
  Future<Either<Failure, List<CardModel>>> loadMoreTopWalkers() async {
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
