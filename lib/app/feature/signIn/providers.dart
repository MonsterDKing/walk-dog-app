import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:walk_dog_app/app/feature/signIn/bloc/auth_bloc.dart';
import 'package:walk_dog_app/app/feature/signIn/repository/auth_repository.dart';
import 'package:walk_dog_app/core/api/api_rest_client.dart';
import 'package:walk_dog_app/core/common/utils/logger.dart';

authInyections() {
  GetIt.I.registerLazySingleton<AuthRepository>(() => AuthRepository(GetIt.I<ApiRestClient>()));
  GetIt.I.registerLazySingleton<AuthBloc>(() => AuthBloc(GetIt.I<AuthRepository>(), getLogger('Auth Bloc')));
}

final authBlocs = [BlocProvider(create: (context) => GetIt.I<AuthBloc>())];
