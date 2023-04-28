import 'package:walk_dog_app/app/feature/home/domain/models/card.dart';
import 'package:walk_dog_app/app/feature/home/domain/repositories/home_repository.dart';

class GetNearYourUseCase {
  final HomeRepository _homeRepository;

  GetNearYourUseCase(this._homeRepository);

  Future<List<Card>> call() async {
    var res = await _homeRepository.nearYou();
    return res.fold((l) => [], (r) => r);
  }
}
