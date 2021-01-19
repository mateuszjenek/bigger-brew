import 'package:freezed_annotation/freezed_annotation.dart';

part 'beer_event.freezed.dart';
part 'beer_event.g.dart';

@freezed
abstract class BeerEvent with _$BeerEvent {
  const factory BeerEvent.deleteBeer(
    int timestamp,
    int beerId,
  ) = DeleteBeer;
  const factory BeerEvent.registerBeer(
    int timestamp,
    int id,
    String name,
    String productCode,
    double price,
    List<String> photos,
  ) = RegisterBeer;
  const factory BeerEvent.updateBeer(
    int timestamp,
    int beerId,
    String name,
    String productCode,
    double price,
    List<String> photos,
  ) = UpdateBeer;
  const factory BeerEvent.updateQuantity(
    int timestamp,
    int beerId,
    int quantityChange,
  ) = UpdateQunatity;

  factory BeerEvent.fromJson(Map<String, dynamic> json) =>
      _$BeerEventFromJson(json);
}
