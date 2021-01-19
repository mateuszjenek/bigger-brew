part of 'beers_bloc.dart';

@freezed
abstract class BeersEvent with _$BeersEvent {
  const factory BeersEvent.fetch() = _FetchFromServer;
  const factory BeersEvent.synchronize(Completer<void> completer) = _Refresh;
  const factory BeersEvent.deleteBeer(ID beerId) = _DeleteBeer;
  const factory BeersEvent.registerBeer(
          BeerName name, ProductCode code, Price price, List<String> photos) =
      _RegisterBeer;
}
