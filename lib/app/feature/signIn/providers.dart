import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:walk_dog_app/app/feature/signIn/data/datasources/%20facebook_datasource.dart';
import 'package:walk_dog_app/app/feature/signIn/data/datasources/credentials_datasource.dart';
import 'package:walk_dog_app/app/feature/signIn/data/datasources/google_datasource.dart';
import 'package:walk_dog_app/app/feature/signIn/data/repositories/sign_in_repo_imp.dart';
import 'package:walk_dog_app/app/feature/signIn/presentation/bloc/auth_bloc.dart';

import 'package:walk_dog_app/core/api/api_rest_client.dart';
import 'package:walk_dog_app/core/common/utils/logger.dart';
import 'package:walk_dog_app/app/feature/signIn/domain/usecase/sign_in_use_case.dart';

authInyections() {
  GetIt.I.registerLazySingleton<SignInRepositoryImp>(() => SignInRepositoryImp(
        facebookDataSource: GetIt.I<FacebookDataSource>(),
        googleDataSource: GetIt.I<GoogleDataSource>(),
        credentialsDataSource: GetIt.I<CredentialsDataSource>(),
      ));

  GetIt.I
      .registerLazySingleton<SignInUseCase>(() => SignInUseCaseImpl(signInRepository: GetIt.I<SignInRepositoryImp>()));

  GetIt.I.registerLazySingleton<AuthBloc>(() => AuthBloc(
      getLogger('Auth Bloc'), GetIt.I<SignInUseCaseImpl>(), GetIt.I<SignInUseCase>(), GetIt.I<SignInUseCase>()));
}

final authBlocs = [BlocProvider(create: (context) => GetIt.I<AuthBloc>())];
