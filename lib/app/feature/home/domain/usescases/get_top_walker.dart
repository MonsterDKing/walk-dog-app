import 'package:walk_dog_app/app/feature/home/domain/models/card.dart';
import 'package:walk_dog_app/app/feature/home/domain/repositories/home_repository.dart';

class GetTopWalkersUseCase {
  final HomeRepository _homeRepository;

  GetTopWalkersUseCase(this._homeRepository);

  Future<List<Card>> call() async {
    var res = await _homeRepository.topWalkers();
    return res.fold((l) => [], (r) => r);
  }
}
