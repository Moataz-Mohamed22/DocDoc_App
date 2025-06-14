// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i409;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../feature/auth/login/data/data_source/auth_remote_data_source_dm.dart'
    as _i699;
import '../../feature/auth/login/data/repositories/auth_repository_Impl.dart'
    as _i365;
import '../../feature/auth/login/domain/repositories/data_source/auth_remote_data_source.dart'
    as _i464;
import '../../feature/auth/login/domain/repositories/repo/auth_repository.dart'
    as _i105;
import '../../feature/auth/login/domain/use_case/login_use_case.dart' as _i494;
import '../../feature/auth/login/manager/login_cubit.dart' as _i245;
import '../../feature/auth/register/data/data_source/register_remote_data_source_impl.dart'
    as _i168;
import '../../feature/auth/register/data/repositories/register_repository_impl.dart'
    as _i474;
import '../../feature/auth/register/domain/repositories/data_source/register_remote_data_source.dart'
    as _i167;
import '../../feature/auth/register/domain/repositories/repo/register_repository.dart'
    as _i89;
import '../../feature/auth/register/domain/use_case/register_use_case.dart'
    as _i200;
import '../../feature/auth/register/manager/register_cubit.dart' as _i719;
import '../../feature/home/data/data_source/get_specialization_data_source_dto.dart'
    as _i701;
import '../../feature/home/data/repositories/get_specialization_repository_dto.dart'
    as _i742;
import '../../feature/home/domain/repositories/data_source/get_specialization_data_source.dart'
    as _i766;
import '../../feature/home/domain/repositories/repo/get_specialization_repository.dart'
    as _i359;
import '../../feature/home/domain/useCase/get_specialization_use_case.dart'
    as _i348;
import '../../feature/home/manager/home_cubit.dart' as _i542;
import '../../feature/home/ui/widget/doctor_speciality_list_view.dart' as _i704;
import '../network/api_manager.dart' as _i119;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i119.ApiManager>(() => _i119.ApiManager());
    gh.factory<_i704.DoctorSpecialityListView>(
        () => _i704.DoctorSpecialityListView(key: gh<_i409.Key>()));
    gh.factory<_i464.AuthRemoteDataSource>(() =>
        _i699.AuthRemoteDataSourceImpl(apiManager: gh<_i119.ApiManager>()));
    gh.factory<_i766.GetSpecializationDataSource>(() =>
        _i701.GetSpecializationDataSourceDto(
            apiManager: gh<_i119.ApiManager>()));
    gh.factory<_i167.RegisterRemoteDataSource>(() =>
        _i168.RegisterRemoteDataSourceImpl(apiManager: gh<_i119.ApiManager>()));
    gh.factory<_i359.GetSpecializationRepository>(() =>
        _i742.GetSpecializationRepositoryDto(
            remote: gh<_i766.GetSpecializationDataSource>()));
    gh.factory<_i105.AuthRepository>(() =>
        _i365.AuthRepositoryImpl(remote: gh<_i464.AuthRemoteDataSource>()));
    gh.factory<_i89.RegisterRepository>(() => _i474.RegisterRepositoryImpl(
        remote: gh<_i167.RegisterRemoteDataSource>()));
    gh.factory<_i348.GetSpecializationUseCase>(() =>
        _i348.GetSpecializationUseCase(
            repository: gh<_i359.GetSpecializationRepository>()));
    gh.factory<_i494.LoginUseCase>(
        () => _i494.LoginUseCase(authRepository: gh<_i105.AuthRepository>()));
    gh.factory<_i200.RegisterUseCase>(
        () => _i200.RegisterUseCase(repository: gh<_i89.RegisterRepository>()));
    gh.factory<_i542.HomeCubit>(
        () => _i542.HomeCubit(useCase: gh<_i348.GetSpecializationUseCase>()));
    gh.factory<_i719.RegisterCubit>(
        () => _i719.RegisterCubit(useCase: gh<_i200.RegisterUseCase>()));
    gh.factory<_i245.LoginCubit>(
        () => _i245.LoginCubit(useCase: gh<_i494.LoginUseCase>()));
    return this;
  }
}
