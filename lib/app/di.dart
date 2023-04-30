import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:walk_dog_app/app/feature/home/provider.dart';
import 'package:walk_dog_app/app/feature/signUp/providers.dart';

import 'package:walk_dog_app/core/api/api_rest_client.dart';

final getIt = GetIt.instance;

void getItSetup() {
  GetIt.I.registerSingleton<ApiRestClient>(ApiRestClientImpl(ApiService.dio));

  authInyections();
  homeInyections();
}
