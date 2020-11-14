import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bigger_brew/domain/beer/value_objects.dart';

part 'beer.freezed.dart';

@freezed
abstract class Beer with _$Beer {
  const factory Beer({
    @required ID id,
    @required BeerName name,
    @required ProductCode productCode,
    @required Quantity quantity,
    @required Price price,
  }) = _Beer;
}
