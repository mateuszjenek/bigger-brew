part of 'beer_bloc.dart';

@freezed
abstract class BeerEvent with _$BeerEvent {
  const factory BeerEvent.incrementQuantity() = _IncrementQuantity;
  const factory BeerEvent.decrementQuantity() = _DecrementQuantity;
  const factory BeerEvent.updateQuantity() = _WaitForUpdate;
  const factory BeerEvent.updateBeer(String name, String code, double price) =
      _UpdateBeer;
}
