// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;

import '../core/api/api_rest_client.dart' as _i8;
import '../core/common/utils/logger.dart' as _i7;
import 'blocs/language_cubit.dart' as _i5;
import 'di_modules.dart' as _i24;
import 'feature/home/domain/repositories/home_repository.dart' as _i10;
import 'feature/home/domain/usescases/get_load_more_top_walker.dart' as _i15;
import 'feature/home/domain/usescases/get_near_you.dart' as _i16;
import 'feature/home/domain/usescases/get_suggested.dart' as _i17;
import 'feature/home/domain/usescases/get_top_walker.dart' as _i18;
import 'feature/home/infraestructure/datasource/home_remote_data_source.dart'
    as _i9;
import 'feature/home/infraestructure/repositories/home_repository_test_imp.dart'
    as _i11;
import 'feature/home/presentation/blocs/near_you/near_you_bloc.dart' as _i19;
import 'feature/home/presentation/blocs/suggested/suggested_bloc.dart' as _i21;
import 'feature/home/presentation/blocs/top_walkers/top_walkers_bloc.dart'
    as _i22;
import 'feature/signUp/domain/repositories/sign_up_repository.dart' as _i13;
import 'feature/signUp/domain/usescase/sign_up_normal_reigster.dart' as _i20;
import 'feature/signUp/infraestructure/datasources/sign_up_remote_data_source.dart'
    as _i12;
import 'feature/signUp/infraestructure/repositories/sign_up_repository_impl.dart'
    as _i14;
import 'feature/signUp/presentation/blocs/sign_up/sign_up_bloc.dart' as _i23;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.Connectivity>(registerModule.connectivity);
    gh.singleton<_i4.Dio>(registerModule.dio);
    gh.factory<_i5.LanguageCubit>(() => _i5.LanguageCubit());
    gh.singleton<_i6.Logger>(registerModule.logger);
    gh.factory<_i7.LoggerPrinter>(() => _i7.LoggerPrinter(gh<String>()));
    gh.factory<_i8.ApiRestClient>(() => _i8.ApiRestClientImpl(gh<_i4.Dio>()));
    gh.factory<_i9.HomeRemoteDataSource>(
        () => _i9.HomeRemoteDataSourceImp(gh<_i8.ApiRestClient>()));
    gh.factory<_i10.HomeRepository>(
        () => _i11.HomeRepositoryTestImp(gh<_i9.HomeRemoteDataSource>()));
    gh.factory<_i12.SignUpRemoteDataSource>(
        () => _i12.SignUpRemoteDataSourceImp(gh<_i8.ApiRestClient>()));
    gh.factory<_i13.SignUpRepository>(
        () => _i14.SignUpRepositoryImp(gh<_i12.SignUpRemoteDataSource>()));
    gh.factory<_i15.GetLoadMoreTopWalkers>(
        () => _i15.GetLoadMoreTopWalkers(gh<_i10.HomeRepository>()));
    gh.factory<_i16.GetNearYourUseCase>(
        () => _i16.GetNearYourUseCase(gh<_i10.HomeRepository>()));
    gh.factory<_i17.GetSuggestedUseCase>(
        () => _i17.GetSuggestedUseCase(gh<_i10.HomeRepository>()));
    gh.factory<_i18.GetTopWalkersUseCase>(
        () => _i18.GetTopWalkersUseCase(gh<_i10.HomeRepository>()));
    gh.factory<_i19.NearYouBloc>(() => _i19.NearYouBloc(
          gh<_i16.GetNearYourUseCase>(),
          gh<_i6.Logger>(),
        ));
    gh.factory<_i20.SignUpNormalRegisterUseCase>(
        () => _i20.SignUpNormalRegisterUseCase(gh<_i13.SignUpRepository>()));
    gh.factory<_i21.SuggestedBloc>(() => _i21.SuggestedBloc(
          gh<_i17.GetSuggestedUseCase>(),
          gh<_i6.Logger>(),
        ));
    gh.factory<_i22.TopWalkersBloc>(() => _i22.TopWalkersBloc(
          gh<_i18.GetTopWalkersUseCase>(),
          gh<_i6.Logger>(),
          gh<_i15.GetLoadMoreTopWalkers>(),
        ));
    gh.factory<_i23.SignUpBloc>(() => _i23.SignUpBloc(
          gh<_i20.SignUpNormalRegisterUseCase>(),
          gh<_i6.Logger>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i24.RegisterModule {}
