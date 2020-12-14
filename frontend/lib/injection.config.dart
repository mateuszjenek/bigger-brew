// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/auth_bloc.dart';
import 'application/auth_form/auth_form_bloc.dart';
import 'infrastructure/beer/beer_event_queue.dart';
import 'infrastructure/beer/beer_repository.dart';
import 'application/beers/beers_bloc.dart';
import 'infrastructure/configuration/configuration_repository.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/auth/firebase_injectable_module.dart';
import 'infrastructure/auth/firebase_user_mapper.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/beer/i_beer_repository.dart';
import 'domain/configuration/I_configuration_repository.dart';
import 'infrastructure/beer/sources/local_beer_source.dart';
import 'application/network_status/network_status_bloc.dart';
import 'application/options/options_bloc.dart';
import 'infrastructure/beer/sources/remote_beer_source.dart';

/// Environment names
const _prod = 'prod';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<BeerEventQueue>(() => BeerEventQueue());
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseUserMapper>(() => FirebaseUserMapper());
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(
            get<FirebaseAuth>(),
            get<GoogleSignIn>(),
            get<FirebaseUserMapper>(),
          ),
      registerFor: {_prod});
  gh.lazySingleton<IConfigurationRepository>(() => ConfigurationRepository(),
      registerFor: {_prod});
  gh.lazySingleton<LocalBeerSource>(
      () => LocalBeerSource(get<BeerEventQueue>()));
  gh.factory<NetworkStatusBloc>(() => NetworkStatusBloc());
  gh.factory<OptionsBloc>(() => OptionsBloc(get<IConfigurationRepository>()));
  gh.lazySingleton<RemoteBeerSource>(
      () => RemoteBeerSource(get<IAuthFacade>(), get<LocalBeerSource>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  gh.factory<AuthFormBloc>(() => AuthFormBloc(get<IAuthFacade>()));
  gh.lazySingleton<IBeerRepository>(
      () => BeerRepository(
            get<LocalBeerSource>(),
            get<RemoteBeerSource>(),
            get<IConfigurationRepository>(),
            get<BeerEventQueue>(),
          ),
      registerFor: {_prod});
  gh.factory<BeersBloc>(() => BeersBloc(get<IBeerRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
