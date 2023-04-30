import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:walk_dog_app/app/feature/home/infraestructure/repositories/home_repository_test_imp.dart';
import 'package:walk_dog_app/app/feature/home/presentation/blocs/top_walkers/top_walkers_bloc.dart';
import 'package:walk_dog_app/core/api/api_rest_client.dart';

import 'package:walk_dog_app/app/feature/home/domain/repositories/home_repository.dart';
import 'package:walk_dog_app/app/feature/home/domain/usescases/get_near_you.dart';
import 'package:walk_dog_app/app/feature/home/domain/usescases/get_suggested.dart';
import 'package:walk_dog_app/app/feature/home/domain/usescases/get_top_walker.dart';
import 'package:walk_dog_app/app/feature/home/infraestructure/datasource/home_remote_data_source.dart';
import 'package:walk_dog_app/app/feature/home/infraestructure/repositories/home_repository_impl.dart';
import 'package:walk_dog_app/app/feature/home/presentation/blocs/near_you/near_you_bloc.dart';
import 'package:walk_dog_app/app/feature/home/presentation/blocs/suggested/suggested_bloc.dart';

homeInyections() {
  //inyections for logger

  //inyections for HomeRemoteDataSource
  GetIt.I.registerLazySingleton<HomeRemoteDataSource>(() => HomeRemoteDataSourceImp(GetIt.I<ApiRestClient>()));

  //inyections for HomeRepository prod
  // GetIt.I.registerLazySingleton<HomeRepository>(() => HomeRepositoryImp(GetIt.I<HomeRemoteDataSource>()));

  //inyectiosn for Homerepository test
  GetIt.I.registerLazySingleton<HomeRepository>(() => HomeRepositoryTestImp(GetIt.I<HomeRemoteDataSource>()));

  //inyections for get_near_you_usecase
  GetIt.I.registerLazySingleton<GetNearYourUseCase>(() => GetNearYourUseCase(GetIt.I<HomeRepository>()));

  //inyections for get_suggested
  GetIt.I.registerLazySingleton<GetSuggestedUseCase>(() => GetSuggestedUseCase(GetIt.I<HomeRepository>()));

  //inyection for get_top_walkers
  GetIt.I.registerLazySingleton<GetTopWalkersUseCase>(() => GetTopWalkersUseCase(GetIt.I<HomeRepository>()));

  //inyection for near_you_bloc
  GetIt.I.registerLazySingleton<NearYouBloc>(
    () => NearYouBloc(
      GetIt.I<GetNearYourUseCase>(),
      GetIt.I<Logger>(),
    ),
  );

  //inyection for suggested_bloc
  GetIt.I.registerLazySingleton<SuggestedBloc>(
    () => SuggestedBloc(
      GetIt.I<GetSuggestedUseCase>(),
      GetIt.I<Logger>(),
    ),
  );

  //inyection for top_walkers_bloc
  GetIt.I.registerLazySingleton<TopWalkersBloc>(
    () => TopWalkersBloc(
      GetIt.I<GetTopWalkersUseCase>(),
      GetIt.I<Logger>(),
    ),
  );
}

final homeBlocs = [
  BlocProvider<NearYouBloc>(
    create: (context) => GetIt.I<NearYouBloc>(),
  ),
  BlocProvider<SuggestedBloc>(
    create: (context) => GetIt.I<SuggestedBloc>(),
  ),
  BlocProvider<TopWalkersBloc>(
    create: (context) => GetIt.I<TopWalkersBloc>(),
  ),
];
