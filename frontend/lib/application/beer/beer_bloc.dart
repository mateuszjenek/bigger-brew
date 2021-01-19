import 'dart:async';

import 'package:bigger_brew/domain/beer/beer_repository_result.dart';
import 'package:bigger_brew/domain/beer/i_beer_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:bigger_brew/domain/beer/beer.dart';

part 'beer_event.dart';
part 'beer_state.dart';

part 'beer_bloc.freezed.dart';

class BeerBloc extends Bloc<BeerEvent, BeerState> {
  final IBeerRepository repository;
  BeerBloc(Beer beer, this.repository) : super(BeerState.initial(beer));

  @override
  Stream<BeerState> mapEventToState(BeerEvent event) async* {
    yield* event.map(
      incrementQuantity: (e) async* {
        var qunatity = state.beer.quantity.getOrCrash();
        var newValue = state.changeValue + 1;
        if (qunatity + newValue > 255) newValue = state.changeValue;

        yield state.copyWith(
          changeValue: newValue,
          isBroken: false,
          isAnyQueuedEventFailed: false,
        );
      },
      decrementQuantity: (e) async* {
        var qunatity = state.beer.quantity.getOrCrash();
        var newValue = state.changeValue - 1;
        if (qunatity + newValue < 0) newValue = state.changeValue;

        yield state.copyWith(
          changeValue: newValue,
          isBroken: false,
          isAnyQueuedEventFailed: false,
        );
      },
      updateQuantity: (e) async* {
        yield state.copyWith(isUpdating: true);
        var result = await repository.updateQuantity(
          state.beer.id.getOrCrash(),
          state.changeValue,
        );
        yield result.value.fold(
          (_) => state.copyWith(
              isUpdating: false,
              isBroken: true,
              isAnyQueuedEventFailed: result.queuedTaskFailed,
              mode: result.mode),
          (beer) => BeerState.initial(beer),
        );
      },
      updateBeer: (e) async* {
        yield state.copyWith(isUpdating: true);
        var result = await repository.updateBeer(
            state.beer.id.getOrCrash(), e.name, e.code, e.price, e.photos);
        yield result.value.fold(
          (_) => state.copyWith(
            isUpdating: false,
            isBroken: true,
            isAnyQueuedEventFailed: result.queuedTaskFailed,
            mode: result.mode,
          ),
          (beer) => state.copyWith(
            isUpdating: false,
            beer: beer,
            isBroken: false,
            isAnyQueuedEventFailed: result.queuedTaskFailed,
            mode: result.mode,
          ),
        );
      },
    );
  }
}
