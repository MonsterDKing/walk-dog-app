import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:walk_dog_app/app/feature/signUp/domain/repositories/sign_up_repository.dart';
import 'package:walk_dog_app/app/feature/signUp/domain/usescase/sign_up_normal_reigster.dart';
import 'package:walk_dog_app/app/feature/signUp/infraestructure/datasources/sign_up_remote_data_source.dart';
import 'package:walk_dog_app/app/feature/signUp/infraestructure/repositories/sign_up_repository_impl.dart';

import 'package:walk_dog_app/app/feature/signUp/presentation/blocs/sign_up/sign_up_bloc.dart';

import 'package:walk_dog_app/core/api/api_rest_client.dart';

authInyections() {
  //inyectios for logger
  GetIt.I.registerLazySingleton<Logger>(() => Logger());

  //inyections for SignUpRemoteDataSource
  GetIt.I.registerLazySingleton<SignUpRemoteDataSource>(() => SignUpRemoteDataSourceImp(GetIt.I<ApiRestClient>()));

  //inyections for SignUpRepository
  GetIt.I.registerLazySingleton<SignUpRepository>(() => SignUpRepositoryImp(GetIt.I<SignUpRemoteDataSource>()));

  //inyections for SignUpNormalRegister
  GetIt.I.registerLazySingleton<SignUpNormalRegisterUseCase>(
    () => SignUpNormalRegisterUseCase(
      GetIt.I<SignUpRepository>(),
    ),
  );

  //inyections for AuthBloc
  GetIt.I.registerLazySingleton<SignUpBloc>(
    () => SignUpBloc(
      GetIt.I<SignUpNormalRegisterUseCase>(),
      GetIt.I<Logger>(),
    ),
  );
}

final signUpBlocs = [BlocProvider(create: (context) => GetIt.I<SignUpBloc>())];
