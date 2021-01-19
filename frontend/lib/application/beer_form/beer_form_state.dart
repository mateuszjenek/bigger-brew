part of 'beer_form_bloc.dart';

@freezed
abstract class BeerFormState with _$BeerFormState {
  const factory BeerFormState({
    @required BeerName name,
    @required ProductCode code,
    @required Price price,
    @required List<String> photos,
    @required String newURL,
  }) = _BeerFormState;

  factory BeerFormState.empty() => BeerFormState(
        name: BeerName(""),
        code: ProductCode(""),
        price: Price(0.0),
        photos: [],
        newURL: "",
      );

  factory BeerFormState.fromBeer(Beer beer) => BeerFormState(
        name: beer.name,
        code: beer.productCode,
        price: beer.price,
        photos: beer.photos,
        newURL: "",
      );
}
