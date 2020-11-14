part of 'beer_form_bloc.dart';

@freezed
abstract class BeerFormState with _$BeerFormState {
  const factory BeerFormState({
    @required BeerName name,
    @required ProductCode code,
    @required Price price,
  }) = _BeerFormState;

  factory BeerFormState.empty() => BeerFormState(
        name: BeerName(""),
        code: ProductCode(""),
        price: Price(0.0),
      );

  factory BeerFormState.fromBeer(Beer beer) => BeerFormState(
        name: beer.name,
        code: beer.productCode,
        price: beer.price,
      );
}
