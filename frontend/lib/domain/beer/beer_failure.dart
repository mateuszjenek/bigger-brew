import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beer_failure.freezed.dart';

@freezed
abstract class BeerFailure with _$BeerFailure {
  const factory BeerFailure.unexpected() = Unexpected;
  const factory BeerFailure.serverError() = ServerError;
}
