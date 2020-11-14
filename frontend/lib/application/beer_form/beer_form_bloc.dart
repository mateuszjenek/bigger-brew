import 'dart:async';

import 'package:bigger_brew/domain/beer/beer.dart';
import 'package:bigger_brew/domain/beer/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beer_form_event.dart';
part 'beer_form_state.dart';
part 'beer_form_bloc.freezed.dart';

class BeerFormBloc extends Bloc<BeerFormEvent, BeerFormState> {
  BeerFormBloc() : super(BeerFormState.empty());
  BeerFormBloc.fromBeer(Beer beer) : super(BeerFormState.fromBeer(beer));

  @override
  Stream<BeerFormState> mapEventToState(
    BeerFormEvent event,
  ) async* {
    yield event.map(
      nameChanged: (e) => state.copyWith(name: BeerName(e.name)),
      codeChanged: (e) => state.copyWith(code: ProductCode(e.code)),
      priceChanged: (e) => state.copyWith(price: Price(e.price)),
    );
  }
}
