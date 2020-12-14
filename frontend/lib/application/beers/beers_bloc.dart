import 'dart:async';

import 'package:bigger_brew/domain/beer/beer_repository_result.dart';
import 'package:bigger_brew/domain/beer/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:bigger_brew/domain/beer/beer.dart';
import 'package:bigger_brew/domain/beer/beer_failure.dart';
import 'package:bigger_brew/domain/beer/i_beer_repository.dart';

part 'beers_event.dart';
part 'beers_state.dart';

part 'beers_bloc.freezed.dart';

@injectable
class BeersBloc extends Bloc<BeersEvent, BeersState> {
  final IBeerRepository repository;

  BeersBloc(this.repository) : super(BeersState.initial());

  @override
  Stream<BeersState> mapEventToState(
    BeersEvent event,
  ) async* {
    yield* event.map(
      fetch: (_) async* {
        yield BeersState.loading();
        var result = await repository.getAll();
        yield result.value.fold(
          (failure) => BeersState.failed(failure),
          (beers) => BeersState.loaded(
            beers,
            result.mode,
            result.queuedTaskFailed,
          ),
        );
      },
      synchronize: (e) async* {
        yield BeersState.loading();
        var result = await repository.getAll();
        yield result.value.fold(
          (failure) => BeersState.failed(failure),
          (beers) => BeersState.loaded(
            beers,
            result.mode,
            result.queuedTaskFailed,
          ),
        );
        e.completer.complete();
      },
      deleteBeer: (e) async* {
        yield BeersState.loading();
        await repository.deleteBeer(e.beerId.getOrCrash());
        var result = await repository.getAll();
        yield result.value.fold(
          (failure) => BeersState.failed(failure),
          (beers) => BeersState.loaded(
            beers,
            result.mode,
            result.queuedTaskFailed,
          ),
        );
      },
      registerBeer: (e) async* {
        yield BeersState.loading();
        await repository.registerBeer(
          e.name.getOrCrash(),
          e.code.getOrCrash(),
          e.price.getOrCrash(),
        );
        var result = await repository.getAll();
        yield result.value.fold(
          (failure) => BeersState.failed(failure),
          (beers) => BeersState.loaded(
            beers,
            result.mode,
            result.queuedTaskFailed,
          ),
        );
      },
    );
  }
}
