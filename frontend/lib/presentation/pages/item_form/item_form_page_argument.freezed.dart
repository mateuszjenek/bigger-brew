// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_form_page_argument.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ItemFormPageArgumentTearOff {
  const _$ItemFormPageArgumentTearOff();

// ignore: unused_element
  EditBeer editBeer(Beer beer, BeerBloc beerBloc, BeersBloc beersBloc) {
    return EditBeer(
      beer,
      beerBloc,
      beersBloc,
    );
  }

// ignore: unused_element
  AddBeer newBeer(BeersBloc beersBloc) {
    return AddBeer(
      beersBloc,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ItemFormPageArgument = _$ItemFormPageArgumentTearOff();

/// @nodoc
mixin _$ItemFormPageArgument {
  BeersBloc get beersBloc;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result editBeer(Beer beer, BeerBloc beerBloc, BeersBloc beersBloc),
    @required Result newBeer(BeersBloc beersBloc),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result editBeer(Beer beer, BeerBloc beerBloc, BeersBloc beersBloc),
    Result newBeer(BeersBloc beersBloc),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result editBeer(EditBeer value),
    @required Result newBeer(AddBeer value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result editBeer(EditBeer value),
    Result newBeer(AddBeer value),
    @required Result orElse(),
  });

  $ItemFormPageArgumentCopyWith<ItemFormPageArgument> get copyWith;
}

/// @nodoc
abstract class $ItemFormPageArgumentCopyWith<$Res> {
  factory $ItemFormPageArgumentCopyWith(ItemFormPageArgument value,
          $Res Function(ItemFormPageArgument) then) =
      _$ItemFormPageArgumentCopyWithImpl<$Res>;
  $Res call({BeersBloc beersBloc});
}

/// @nodoc
class _$ItemFormPageArgumentCopyWithImpl<$Res>
    implements $ItemFormPageArgumentCopyWith<$Res> {
  _$ItemFormPageArgumentCopyWithImpl(this._value, this._then);

  final ItemFormPageArgument _value;
  // ignore: unused_field
  final $Res Function(ItemFormPageArgument) _then;

  @override
  $Res call({
    Object beersBloc = freezed,
  }) {
    return _then(_value.copyWith(
      beersBloc:
          beersBloc == freezed ? _value.beersBloc : beersBloc as BeersBloc,
    ));
  }
}

/// @nodoc
abstract class $EditBeerCopyWith<$Res>
    implements $ItemFormPageArgumentCopyWith<$Res> {
  factory $EditBeerCopyWith(EditBeer value, $Res Function(EditBeer) then) =
      _$EditBeerCopyWithImpl<$Res>;
  @override
  $Res call({Beer beer, BeerBloc beerBloc, BeersBloc beersBloc});

  $BeerCopyWith<$Res> get beer;
}

/// @nodoc
class _$EditBeerCopyWithImpl<$Res>
    extends _$ItemFormPageArgumentCopyWithImpl<$Res>
    implements $EditBeerCopyWith<$Res> {
  _$EditBeerCopyWithImpl(EditBeer _value, $Res Function(EditBeer) _then)
      : super(_value, (v) => _then(v as EditBeer));

  @override
  EditBeer get _value => super._value as EditBeer;

  @override
  $Res call({
    Object beer = freezed,
    Object beerBloc = freezed,
    Object beersBloc = freezed,
  }) {
    return _then(EditBeer(
      beer == freezed ? _value.beer : beer as Beer,
      beerBloc == freezed ? _value.beerBloc : beerBloc as BeerBloc,
      beersBloc == freezed ? _value.beersBloc : beersBloc as BeersBloc,
    ));
  }

  @override
  $BeerCopyWith<$Res> get beer {
    if (_value.beer == null) {
      return null;
    }
    return $BeerCopyWith<$Res>(_value.beer, (value) {
      return _then(_value.copyWith(beer: value));
    });
  }
}

/// @nodoc
class _$EditBeer implements EditBeer {
  const _$EditBeer(this.beer, this.beerBloc, this.beersBloc)
      : assert(beer != null),
        assert(beerBloc != null),
        assert(beersBloc != null);

  @override
  final Beer beer;
  @override
  final BeerBloc beerBloc;
  @override
  final BeersBloc beersBloc;

  @override
  String toString() {
    return 'ItemFormPageArgument.editBeer(beer: $beer, beerBloc: $beerBloc, beersBloc: $beersBloc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditBeer &&
            (identical(other.beer, beer) ||
                const DeepCollectionEquality().equals(other.beer, beer)) &&
            (identical(other.beerBloc, beerBloc) ||
                const DeepCollectionEquality()
                    .equals(other.beerBloc, beerBloc)) &&
            (identical(other.beersBloc, beersBloc) ||
                const DeepCollectionEquality()
                    .equals(other.beersBloc, beersBloc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(beer) ^
      const DeepCollectionEquality().hash(beerBloc) ^
      const DeepCollectionEquality().hash(beersBloc);

  @override
  $EditBeerCopyWith<EditBeer> get copyWith =>
      _$EditBeerCopyWithImpl<EditBeer>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result editBeer(Beer beer, BeerBloc beerBloc, BeersBloc beersBloc),
    @required Result newBeer(BeersBloc beersBloc),
  }) {
    assert(editBeer != null);
    assert(newBeer != null);
    return editBeer(beer, beerBloc, beersBloc);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result editBeer(Beer beer, BeerBloc beerBloc, BeersBloc beersBloc),
    Result newBeer(BeersBloc beersBloc),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editBeer != null) {
      return editBeer(beer, beerBloc, beersBloc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result editBeer(EditBeer value),
    @required Result newBeer(AddBeer value),
  }) {
    assert(editBeer != null);
    assert(newBeer != null);
    return editBeer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result editBeer(EditBeer value),
    Result newBeer(AddBeer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editBeer != null) {
      return editBeer(this);
    }
    return orElse();
  }
}

abstract class EditBeer implements ItemFormPageArgument {
  const factory EditBeer(Beer beer, BeerBloc beerBloc, BeersBloc beersBloc) =
      _$EditBeer;

  Beer get beer;
  BeerBloc get beerBloc;
  @override
  BeersBloc get beersBloc;
  @override
  $EditBeerCopyWith<EditBeer> get copyWith;
}

/// @nodoc
abstract class $AddBeerCopyWith<$Res>
    implements $ItemFormPageArgumentCopyWith<$Res> {
  factory $AddBeerCopyWith(AddBeer value, $Res Function(AddBeer) then) =
      _$AddBeerCopyWithImpl<$Res>;
  @override
  $Res call({BeersBloc beersBloc});
}

/// @nodoc
class _$AddBeerCopyWithImpl<$Res>
    extends _$ItemFormPageArgumentCopyWithImpl<$Res>
    implements $AddBeerCopyWith<$Res> {
  _$AddBeerCopyWithImpl(AddBeer _value, $Res Function(AddBeer) _then)
      : super(_value, (v) => _then(v as AddBeer));

  @override
  AddBeer get _value => super._value as AddBeer;

  @override
  $Res call({
    Object beersBloc = freezed,
  }) {
    return _then(AddBeer(
      beersBloc == freezed ? _value.beersBloc : beersBloc as BeersBloc,
    ));
  }
}

/// @nodoc
class _$AddBeer implements AddBeer {
  const _$AddBeer(this.beersBloc) : assert(beersBloc != null);

  @override
  final BeersBloc beersBloc;

  @override
  String toString() {
    return 'ItemFormPageArgument.newBeer(beersBloc: $beersBloc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddBeer &&
            (identical(other.beersBloc, beersBloc) ||
                const DeepCollectionEquality()
                    .equals(other.beersBloc, beersBloc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(beersBloc);

  @override
  $AddBeerCopyWith<AddBeer> get copyWith =>
      _$AddBeerCopyWithImpl<AddBeer>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result editBeer(Beer beer, BeerBloc beerBloc, BeersBloc beersBloc),
    @required Result newBeer(BeersBloc beersBloc),
  }) {
    assert(editBeer != null);
    assert(newBeer != null);
    return newBeer(beersBloc);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result editBeer(Beer beer, BeerBloc beerBloc, BeersBloc beersBloc),
    Result newBeer(BeersBloc beersBloc),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newBeer != null) {
      return newBeer(beersBloc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result editBeer(EditBeer value),
    @required Result newBeer(AddBeer value),
  }) {
    assert(editBeer != null);
    assert(newBeer != null);
    return newBeer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result editBeer(EditBeer value),
    Result newBeer(AddBeer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newBeer != null) {
      return newBeer(this);
    }
    return orElse();
  }
}

abstract class AddBeer implements ItemFormPageArgument {
  const factory AddBeer(BeersBloc beersBloc) = _$AddBeer;

  @override
  BeersBloc get beersBloc;
  @override
  $AddBeerCopyWith<AddBeer> get copyWith;
}
