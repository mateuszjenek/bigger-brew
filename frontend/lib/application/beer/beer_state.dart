part of 'beer_bloc.dart';

@freezed
abstract class BeerState with _$BeerState {
  const factory BeerState({
    @required int changeValue,
    @required bool isUpdating,
    @required Beer beer,
    @required bool isBroken,
  }) = _BeerState;

  factory BeerState.initial(Beer beer) => BeerState(
        changeValue: 0,
        isUpdating: false,
        beer: beer,
        isBroken: false,
      );
}
