import 'dart:async';

import 'package:bigger_brew/domain/beer/beer.dart';
import 'package:bigger_brew/domain/beer/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';

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
    yield* event.map(
      nameChanged: (e) async* {
        yield state.copyWith(name: BeerName(e.name));
      },
      codeChanged: (e) async* {
        yield state.copyWith(code: ProductCode(e.code));
      },
      priceChanged: (e) async* {
        yield state.copyWith(price: Price(e.price));
      },
      newUrlChanged: (e) async* {
        yield state.copyWith(newURL: e.url);
      },
      addPhoto: (e) async* {
        if (!state.photos.contains(e.url) && e.url != "") {
          try {
            var result = await get(e.url);
            if (result.statusCode >= 200 && result.statusCode < 300) {
              state.photos.add(e.url);
              yield state.copyWith(newURL: "");
            }
          } catch (_) {}
        } else {
          yield state;
        }
      },
      removePhoto: (e) async* {
        state.photos.remove(e.url);
        yield state.copyWith(newURL: "");
      },
    );
  }
}
