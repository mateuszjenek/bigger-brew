part of 'beer_form_bloc.dart';

@freezed
abstract class BeerFormEvent with _$BeerFormEvent {
  const factory BeerFormEvent.nameChanged(String name) = NameChanged;
  const factory BeerFormEvent.codeChanged(String code) = CodeChanged;
  const factory BeerFormEvent.priceChanged(double price) = PriceChanged;
  const factory BeerFormEvent.newUrlChanged(String url) = NewUrlChanged;
  const factory BeerFormEvent.addPhoto(String url) = AddPhoto;
  const factory BeerFormEvent.removePhoto(String url) = RemovePhoto;
}
