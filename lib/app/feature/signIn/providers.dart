import 'package:get_it/get_it.dart';
import 'package:walk_dog_app/app/feature/signIn/repository/auth_repository.dart';
import 'package:walk_dog_app/core/api/api_rest_client.dart';

authInyections() {
  GetIt.I.registerSingleton<IAuthRepository>(AuthRepository(
    GetIt.I<ApiRestClient>(),
  ));
}
