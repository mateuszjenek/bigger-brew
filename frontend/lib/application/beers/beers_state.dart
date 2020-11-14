part of 'beers_bloc.dart';

@freezed
abstract class BeersState with _$BeersState {
  const factory BeersState.initial() = Inital;
  const factory BeersState.loading() = Loading;
  const factory BeersState.loaded(List<Beer> beers) = Loaded;
  const factory BeersState.failed(BeerFailure failure) = Failed;
}
