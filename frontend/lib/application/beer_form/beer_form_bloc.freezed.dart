// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'beer_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BeerFormEventTearOff {
  const _$BeerFormEventTearOff();

// ignore: unused_element
  NameChanged nameChanged(String name) {
    return NameChanged(
      name,
    );
  }

// ignore: unused_element
  CodeChanged codeChanged(String code) {
    return CodeChanged(
      code,
    );
  }

// ignore: unused_element
  PriceChanged priceChanged(double price) {
    return PriceChanged(
      price,
    );
  }

// ignore: unused_element
  NewUrlChanged newUrlChanged(String url) {
    return NewUrlChanged(
      url,
    );
  }

// ignore: unused_element
  AddPhoto addPhoto(String url) {
    return AddPhoto(
      url,
    );
  }

// ignore: unused_element
  RemovePhoto removePhoto(String url) {
    return RemovePhoto(
      url,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BeerFormEvent = _$BeerFormEventTearOff();

/// @nodoc
mixin _$BeerFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result codeChanged(String code),
    @required Result priceChanged(double price),
    @required Result newUrlChanged(String url),
    @required Result addPhoto(String url),
    @required Result removePhoto(String url),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result codeChanged(String code),
    Result priceChanged(double price),
    Result newUrlChanged(String url),
    Result addPhoto(String url),
    Result removePhoto(String url),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result priceChanged(PriceChanged value),
    @required Result newUrlChanged(NewUrlChanged value),
    @required Result addPhoto(AddPhoto value),
    @required Result removePhoto(RemovePhoto value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result codeChanged(CodeChanged value),
    Result priceChanged(PriceChanged value),
    Result newUrlChanged(NewUrlChanged value),
    Result addPhoto(AddPhoto value),
    Result removePhoto(RemovePhoto value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $BeerFormEventCopyWith<$Res> {
  factory $BeerFormEventCopyWith(
          BeerFormEvent value, $Res Function(BeerFormEvent) then) =
      _$BeerFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BeerFormEventCopyWithImpl<$Res>
    implements $BeerFormEventCopyWith<$Res> {
  _$BeerFormEventCopyWithImpl(this._value, this._then);

  final BeerFormEvent _value;
  // ignore: unused_field
  final $Res Function(BeerFormEvent) _then;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res> extends _$BeerFormEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(NameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'BeerFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result codeChanged(String code),
    @required Result priceChanged(double price),
    @required Result newUrlChanged(String url),
    @required Result addPhoto(String url),
    @required Result removePhoto(String url),
  }) {
    assert(nameChanged != null);
    assert(codeChanged != null);
    assert(priceChanged != null);
    assert(newUrlChanged != null);
    assert(addPhoto != null);
    assert(removePhoto != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result codeChanged(String code),
    Result priceChanged(double price),
    Result newUrlChanged(String url),
    Result addPhoto(String url),
    Result removePhoto(String url),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result priceChanged(PriceChanged value),
    @required Result newUrlChanged(NewUrlChanged value),
    @required Result addPhoto(AddPhoto value),
    @required Result removePhoto(RemovePhoto value),
  }) {
    assert(nameChanged != null);
    assert(codeChanged != null);
    assert(priceChanged != null);
    assert(newUrlChanged != null);
    assert(addPhoto != null);
    assert(removePhoto != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result codeChanged(CodeChanged value),
    Result priceChanged(PriceChanged value),
    Result newUrlChanged(NewUrlChanged value),
    Result addPhoto(AddPhoto value),
    Result removePhoto(RemovePhoto value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements BeerFormEvent {
  const factory NameChanged(String name) = _$NameChanged;

  String get name;
  $NameChangedCopyWith<NameChanged> get copyWith;
}

/// @nodoc
abstract class $CodeChangedCopyWith<$Res> {
  factory $CodeChangedCopyWith(
          CodeChanged value, $Res Function(CodeChanged) then) =
      _$CodeChangedCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class _$CodeChangedCopyWithImpl<$Res> extends _$BeerFormEventCopyWithImpl<$Res>
    implements $CodeChangedCopyWith<$Res> {
  _$CodeChangedCopyWithImpl(
      CodeChanged _value, $Res Function(CodeChanged) _then)
      : super(_value, (v) => _then(v as CodeChanged));

  @override
  CodeChanged get _value => super._value as CodeChanged;

  @override
  $Res call({
    Object code = freezed,
  }) {
    return _then(CodeChanged(
      code == freezed ? _value.code : code as String,
    ));
  }
}

/// @nodoc
class _$CodeChanged implements CodeChanged {
  const _$CodeChanged(this.code) : assert(code != null);

  @override
  final String code;

  @override
  String toString() {
    return 'BeerFormEvent.codeChanged(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CodeChanged &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @override
  $CodeChangedCopyWith<CodeChanged> get copyWith =>
      _$CodeChangedCopyWithImpl<CodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result codeChanged(String code),
    @required Result priceChanged(double price),
    @required Result newUrlChanged(String url),
    @required Result addPhoto(String url),
    @required Result removePhoto(String url),
  }) {
    assert(nameChanged != null);
    assert(codeChanged != null);
    assert(priceChanged != null);
    assert(newUrlChanged != null);
    assert(addPhoto != null);
    assert(removePhoto != null);
    return codeChanged(code);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result codeChanged(String code),
    Result priceChanged(double price),
    Result newUrlChanged(String url),
    Result addPhoto(String url),
    Result removePhoto(String url),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (codeChanged != null) {
      return codeChanged(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result priceChanged(PriceChanged value),
    @required Result newUrlChanged(NewUrlChanged value),
    @required Result addPhoto(AddPhoto value),
    @required Result removePhoto(RemovePhoto value),
  }) {
    assert(nameChanged != null);
    assert(codeChanged != null);
    assert(priceChanged != null);
    assert(newUrlChanged != null);
    assert(addPhoto != null);
    assert(removePhoto != null);
    return codeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result codeChanged(CodeChanged value),
    Result priceChanged(PriceChanged value),
    Result newUrlChanged(NewUrlChanged value),
    Result addPhoto(AddPhoto value),
    Result removePhoto(RemovePhoto value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (codeChanged != null) {
      return codeChanged(this);
    }
    return orElse();
  }
}

abstract class CodeChanged implements BeerFormEvent {
  const factory CodeChanged(String code) = _$CodeChanged;

  String get code;
  $CodeChangedCopyWith<CodeChanged> get copyWith;
}

/// @nodoc
abstract class $PriceChangedCopyWith<$Res> {
  factory $PriceChangedCopyWith(
          PriceChanged value, $Res Function(PriceChanged) then) =
      _$PriceChangedCopyWithImpl<$Res>;
  $Res call({double price});
}

/// @nodoc
class _$PriceChangedCopyWithImpl<$Res> extends _$BeerFormEventCopyWithImpl<$Res>
    implements $PriceChangedCopyWith<$Res> {
  _$PriceChangedCopyWithImpl(
      PriceChanged _value, $Res Function(PriceChanged) _then)
      : super(_value, (v) => _then(v as PriceChanged));

  @override
  PriceChanged get _value => super._value as PriceChanged;

  @override
  $Res call({
    Object price = freezed,
  }) {
    return _then(PriceChanged(
      price == freezed ? _value.price : price as double,
    ));
  }
}

/// @nodoc
class _$PriceChanged implements PriceChanged {
  const _$PriceChanged(this.price) : assert(price != null);

  @override
  final double price;

  @override
  String toString() {
    return 'BeerFormEvent.priceChanged(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PriceChanged &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(price);

  @override
  $PriceChangedCopyWith<PriceChanged> get copyWith =>
      _$PriceChangedCopyWithImpl<PriceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result codeChanged(String code),
    @required Result priceChanged(double price),
    @required Result newUrlChanged(String url),
    @required Result addPhoto(String url),
    @required Result removePhoto(String url),
  }) {
    assert(nameChanged != null);
    assert(codeChanged != null);
    assert(priceChanged != null);
    assert(newUrlChanged != null);
    assert(addPhoto != null);
    assert(removePhoto != null);
    return priceChanged(price);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result codeChanged(String code),
    Result priceChanged(double price),
    Result newUrlChanged(String url),
    Result addPhoto(String url),
    Result removePhoto(String url),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (priceChanged != null) {
      return priceChanged(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result priceChanged(PriceChanged value),
    @required Result newUrlChanged(NewUrlChanged value),
    @required Result addPhoto(AddPhoto value),
    @required Result removePhoto(RemovePhoto value),
  }) {
    assert(nameChanged != null);
    assert(codeChanged != null);
    assert(priceChanged != null);
    assert(newUrlChanged != null);
    assert(addPhoto != null);
    assert(removePhoto != null);
    return priceChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result codeChanged(CodeChanged value),
    Result priceChanged(PriceChanged value),
    Result newUrlChanged(NewUrlChanged value),
    Result addPhoto(AddPhoto value),
    Result removePhoto(RemovePhoto value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (priceChanged != null) {
      return priceChanged(this);
    }
    return orElse();
  }
}

abstract class PriceChanged implements BeerFormEvent {
  const factory PriceChanged(double price) = _$PriceChanged;

  double get price;
  $PriceChangedCopyWith<PriceChanged> get copyWith;
}

/// @nodoc
abstract class $NewUrlChangedCopyWith<$Res> {
  factory $NewUrlChangedCopyWith(
          NewUrlChanged value, $Res Function(NewUrlChanged) then) =
      _$NewUrlChangedCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$NewUrlChangedCopyWithImpl<$Res>
    extends _$BeerFormEventCopyWithImpl<$Res>
    implements $NewUrlChangedCopyWith<$Res> {
  _$NewUrlChangedCopyWithImpl(
      NewUrlChanged _value, $Res Function(NewUrlChanged) _then)
      : super(_value, (v) => _then(v as NewUrlChanged));

  @override
  NewUrlChanged get _value => super._value as NewUrlChanged;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(NewUrlChanged(
      url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
class _$NewUrlChanged implements NewUrlChanged {
  const _$NewUrlChanged(this.url) : assert(url != null);

  @override
  final String url;

  @override
  String toString() {
    return 'BeerFormEvent.newUrlChanged(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewUrlChanged &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @override
  $NewUrlChangedCopyWith<NewUrlChanged> get copyWith =>
      _$NewUrlChangedCopyWithImpl<NewUrlChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result codeChanged(String code),
    @required Result priceChanged(double price),
    @required Result newUrlChanged(String url),
    @required Result addPhoto(String url),
    @required Result removePhoto(String url),
  }) {
    assert(nameChanged != null);
    assert(codeChanged != null);
    assert(priceChanged != null);
    assert(newUrlChanged != null);
    assert(addPhoto != null);
    assert(removePhoto != null);
    return newUrlChanged(url);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result codeChanged(String code),
    Result priceChanged(double price),
    Result newUrlChanged(String url),
    Result addPhoto(String url),
    Result removePhoto(String url),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newUrlChanged != null) {
      return newUrlChanged(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result priceChanged(PriceChanged value),
    @required Result newUrlChanged(NewUrlChanged value),
    @required Result addPhoto(AddPhoto value),
    @required Result removePhoto(RemovePhoto value),
  }) {
    assert(nameChanged != null);
    assert(codeChanged != null);
    assert(priceChanged != null);
    assert(newUrlChanged != null);
    assert(addPhoto != null);
    assert(removePhoto != null);
    return newUrlChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result codeChanged(CodeChanged value),
    Result priceChanged(PriceChanged value),
    Result newUrlChanged(NewUrlChanged value),
    Result addPhoto(AddPhoto value),
    Result removePhoto(RemovePhoto value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newUrlChanged != null) {
      return newUrlChanged(this);
    }
    return orElse();
  }
}

abstract class NewUrlChanged implements BeerFormEvent {
  const factory NewUrlChanged(String url) = _$NewUrlChanged;

  String get url;
  $NewUrlChangedCopyWith<NewUrlChanged> get copyWith;
}

/// @nodoc
abstract class $AddPhotoCopyWith<$Res> {
  factory $AddPhotoCopyWith(AddPhoto value, $Res Function(AddPhoto) then) =
      _$AddPhotoCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$AddPhotoCopyWithImpl<$Res> extends _$BeerFormEventCopyWithImpl<$Res>
    implements $AddPhotoCopyWith<$Res> {
  _$AddPhotoCopyWithImpl(AddPhoto _value, $Res Function(AddPhoto) _then)
      : super(_value, (v) => _then(v as AddPhoto));

  @override
  AddPhoto get _value => super._value as AddPhoto;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(AddPhoto(
      url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
class _$AddPhoto implements AddPhoto {
  const _$AddPhoto(this.url) : assert(url != null);

  @override
  final String url;

  @override
  String toString() {
    return 'BeerFormEvent.addPhoto(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddPhoto &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @override
  $AddPhotoCopyWith<AddPhoto> get copyWith =>
      _$AddPhotoCopyWithImpl<AddPhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result codeChanged(String code),
    @required Result priceChanged(double price),
    @required Result newUrlChanged(String url),
    @required Result addPhoto(String url),
    @required Result removePhoto(String url),
  }) {
    assert(nameChanged != null);
    assert(codeChanged != null);
    assert(priceChanged != null);
    assert(newUrlChanged != null);
    assert(addPhoto != null);
    assert(removePhoto != null);
    return addPhoto(url);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result codeChanged(String code),
    Result priceChanged(double price),
    Result newUrlChanged(String url),
    Result addPhoto(String url),
    Result removePhoto(String url),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addPhoto != null) {
      return addPhoto(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result priceChanged(PriceChanged value),
    @required Result newUrlChanged(NewUrlChanged value),
    @required Result addPhoto(AddPhoto value),
    @required Result removePhoto(RemovePhoto value),
  }) {
    assert(nameChanged != null);
    assert(codeChanged != null);
    assert(priceChanged != null);
    assert(newUrlChanged != null);
    assert(addPhoto != null);
    assert(removePhoto != null);
    return addPhoto(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result codeChanged(CodeChanged value),
    Result priceChanged(PriceChanged value),
    Result newUrlChanged(NewUrlChanged value),
    Result addPhoto(AddPhoto value),
    Result removePhoto(RemovePhoto value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addPhoto != null) {
      return addPhoto(this);
    }
    return orElse();
  }
}

abstract class AddPhoto implements BeerFormEvent {
  const factory AddPhoto(String url) = _$AddPhoto;

  String get url;
  $AddPhotoCopyWith<AddPhoto> get copyWith;
}

/// @nodoc
abstract class $RemovePhotoCopyWith<$Res> {
  factory $RemovePhotoCopyWith(
          RemovePhoto value, $Res Function(RemovePhoto) then) =
      _$RemovePhotoCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$RemovePhotoCopyWithImpl<$Res> extends _$BeerFormEventCopyWithImpl<$Res>
    implements $RemovePhotoCopyWith<$Res> {
  _$RemovePhotoCopyWithImpl(
      RemovePhoto _value, $Res Function(RemovePhoto) _then)
      : super(_value, (v) => _then(v as RemovePhoto));

  @override
  RemovePhoto get _value => super._value as RemovePhoto;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(RemovePhoto(
      url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
class _$RemovePhoto implements RemovePhoto {
  const _$RemovePhoto(this.url) : assert(url != null);

  @override
  final String url;

  @override
  String toString() {
    return 'BeerFormEvent.removePhoto(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemovePhoto &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @override
  $RemovePhotoCopyWith<RemovePhoto> get copyWith =>
      _$RemovePhotoCopyWithImpl<RemovePhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result codeChanged(String code),
    @required Result priceChanged(double price),
    @required Result newUrlChanged(String url),
    @required Result addPhoto(String url),
    @required Result removePhoto(String url),
  }) {
    assert(nameChanged != null);
    assert(codeChanged != null);
    assert(priceChanged != null);
    assert(newUrlChanged != null);
    assert(addPhoto != null);
    assert(removePhoto != null);
    return removePhoto(url);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result codeChanged(String code),
    Result priceChanged(double price),
    Result newUrlChanged(String url),
    Result addPhoto(String url),
    Result removePhoto(String url),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removePhoto != null) {
      return removePhoto(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result priceChanged(PriceChanged value),
    @required Result newUrlChanged(NewUrlChanged value),
    @required Result addPhoto(AddPhoto value),
    @required Result removePhoto(RemovePhoto value),
  }) {
    assert(nameChanged != null);
    assert(codeChanged != null);
    assert(priceChanged != null);
    assert(newUrlChanged != null);
    assert(addPhoto != null);
    assert(removePhoto != null);
    return removePhoto(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result codeChanged(CodeChanged value),
    Result priceChanged(PriceChanged value),
    Result newUrlChanged(NewUrlChanged value),
    Result addPhoto(AddPhoto value),
    Result removePhoto(RemovePhoto value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removePhoto != null) {
      return removePhoto(this);
    }
    return orElse();
  }
}

abstract class RemovePhoto implements BeerFormEvent {
  const factory RemovePhoto(String url) = _$RemovePhoto;

  String get url;
  $RemovePhotoCopyWith<RemovePhoto> get copyWith;
}

/// @nodoc
class _$BeerFormStateTearOff {
  const _$BeerFormStateTearOff();

// ignore: unused_element
  _BeerFormState call(
      {@required BeerName name,
      @required ProductCode code,
      @required Price price,
      @required List<String> photos,
      @required String newURL}) {
    return _BeerFormState(
      name: name,
      code: code,
      price: price,
      photos: photos,
      newURL: newURL,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BeerFormState = _$BeerFormStateTearOff();

/// @nodoc
mixin _$BeerFormState {
  BeerName get name;
  ProductCode get code;
  Price get price;
  List<String> get photos;
  String get newURL;

  $BeerFormStateCopyWith<BeerFormState> get copyWith;
}

/// @nodoc
abstract class $BeerFormStateCopyWith<$Res> {
  factory $BeerFormStateCopyWith(
          BeerFormState value, $Res Function(BeerFormState) then) =
      _$BeerFormStateCopyWithImpl<$Res>;
  $Res call(
      {BeerName name,
      ProductCode code,
      Price price,
      List<String> photos,
      String newURL});
}

/// @nodoc
class _$BeerFormStateCopyWithImpl<$Res>
    implements $BeerFormStateCopyWith<$Res> {
  _$BeerFormStateCopyWithImpl(this._value, this._then);

  final BeerFormState _value;
  // ignore: unused_field
  final $Res Function(BeerFormState) _then;

  @override
  $Res call({
    Object name = freezed,
    Object code = freezed,
    Object price = freezed,
    Object photos = freezed,
    Object newURL = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as BeerName,
      code: code == freezed ? _value.code : code as ProductCode,
      price: price == freezed ? _value.price : price as Price,
      photos: photos == freezed ? _value.photos : photos as List<String>,
      newURL: newURL == freezed ? _value.newURL : newURL as String,
    ));
  }
}

/// @nodoc
abstract class _$BeerFormStateCopyWith<$Res>
    implements $BeerFormStateCopyWith<$Res> {
  factory _$BeerFormStateCopyWith(
          _BeerFormState value, $Res Function(_BeerFormState) then) =
      __$BeerFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BeerName name,
      ProductCode code,
      Price price,
      List<String> photos,
      String newURL});
}

/// @nodoc
class __$BeerFormStateCopyWithImpl<$Res>
    extends _$BeerFormStateCopyWithImpl<$Res>
    implements _$BeerFormStateCopyWith<$Res> {
  __$BeerFormStateCopyWithImpl(
      _BeerFormState _value, $Res Function(_BeerFormState) _then)
      : super(_value, (v) => _then(v as _BeerFormState));

  @override
  _BeerFormState get _value => super._value as _BeerFormState;

  @override
  $Res call({
    Object name = freezed,
    Object code = freezed,
    Object price = freezed,
    Object photos = freezed,
    Object newURL = freezed,
  }) {
    return _then(_BeerFormState(
      name: name == freezed ? _value.name : name as BeerName,
      code: code == freezed ? _value.code : code as ProductCode,
      price: price == freezed ? _value.price : price as Price,
      photos: photos == freezed ? _value.photos : photos as List<String>,
      newURL: newURL == freezed ? _value.newURL : newURL as String,
    ));
  }
}

/// @nodoc
class _$_BeerFormState implements _BeerFormState {
  const _$_BeerFormState(
      {@required this.name,
      @required this.code,
      @required this.price,
      @required this.photos,
      @required this.newURL})
      : assert(name != null),
        assert(code != null),
        assert(price != null),
        assert(photos != null),
        assert(newURL != null);

  @override
  final BeerName name;
  @override
  final ProductCode code;
  @override
  final Price price;
  @override
  final List<String> photos;
  @override
  final String newURL;

  @override
  String toString() {
    return 'BeerFormState(name: $name, code: $code, price: $price, photos: $photos, newURL: $newURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BeerFormState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.newURL, newURL) ||
                const DeepCollectionEquality().equals(other.newURL, newURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(newURL);

  @override
  _$BeerFormStateCopyWith<_BeerFormState> get copyWith =>
      __$BeerFormStateCopyWithImpl<_BeerFormState>(this, _$identity);
}

abstract class _BeerFormState implements BeerFormState {
  const factory _BeerFormState(
      {@required BeerName name,
      @required ProductCode code,
      @required Price price,
      @required List<String> photos,
      @required String newURL}) = _$_BeerFormState;

  @override
  BeerName get name;
  @override
  ProductCode get code;
  @override
  Price get price;
  @override
  List<String> get photos;
  @override
  String get newURL;
  @override
  _$BeerFormStateCopyWith<_BeerFormState> get copyWith;
}
