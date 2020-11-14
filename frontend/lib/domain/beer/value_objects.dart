import 'package:dartz/dartz.dart';
import 'package:bigger_brew/domain/core/value_failure.dart';
import 'package:bigger_brew/domain/core/value_object.dart';

// TODO: Add validators

class BeerName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory BeerName(String value) {
    return BeerName._(right(value));
  }

  const BeerName._(this.value);
}

class ProductCode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProductCode(String value) {
    return ProductCode._(right(value));
  }

  const ProductCode._(this.value);
}

class ID extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory ID(int value) {
    return ID._(right(value));
  }

  const ID._(this.value);
}

class Quantity extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory Quantity(int value) {
    return Quantity._(right(value));
  }

  const Quantity._(this.value);
}

class Price extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory Price(double value) {
    return Price._(right(value));
  }

  const Price._(this.value);
}
