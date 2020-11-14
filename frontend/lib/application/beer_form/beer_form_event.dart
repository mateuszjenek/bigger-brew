part of 'beer_form_bloc.dart';

@freezed
abstract class BeerFormEvent with _$BeerFormEvent {
  const factory BeerFormEvent.nameChanged(String name) = NameChanged;
  const factory BeerFormEvent.codeChanged(String code) = CodeChanged;
  const factory BeerFormEvent.priceChanged(double price) = PriceChanged;
}
