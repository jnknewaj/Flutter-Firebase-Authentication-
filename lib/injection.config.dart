// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:cloud_firestore/cloud_firestore.dart';
// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import 'application/auth/auth_check/auth_check_bloc.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'application/profile/profile_form/profile_form_bloc.dart';
import 'application/profile/profile_watcher/profile_watcher_bloc.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/profile/i_app_user_repository.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'infrastructure/core/third_party_packages_injectable_module.dart';
import 'infrastructure/profile/app_user_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final thirdPartyPackagesInjectableModule =
      _$ThirdPartyPackagesInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googeSignIn);
  gh.lazySingleton<IAuthFacade>(() => FirebaseAuthFacade(
        get<FirebaseAuth>(),
        get<GoogleSignIn>(),
        get<FirebaseFirestore>(),
      ));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.lazySingleton<Uuid>(() => thirdPartyPackagesInjectableModule.uuid);
  gh.factory<AuthCheckBloc>(() => AuthCheckBloc(get<IAuthFacade>()));
  gh.lazySingleton<IAppUserRepository>(() => AppUserRepository(
        get<FirebaseFirestore>(),
        get<FirebaseStorage>(),
        get<Uuid>(),
      ));
  gh.factory<ProfileFormBloc>(() => ProfileFormBloc(get<IAppUserRepository>()));
  gh.factory<ProfileWatcherBloc>(
      () => ProfileWatcherBloc(get<IAppUserRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}

class _$ThirdPartyPackagesInjectableModule
    extends ThirdPartyPackagesInjectableModule {}
