import 'package:bigger_brew/application/beer/beer_bloc.dart';
import 'package:bigger_brew/application/beers/beers_bloc.dart';
import 'package:bigger_brew/domain/beer/beer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_form_page_argument.freezed.dart';

@freezed
abstract class ItemFormPageArgument with _$ItemFormPageArgument {
  const factory ItemFormPageArgument.editBeer(
      Beer beer, BeerBloc beerBloc, BeersBloc beersBloc) = EditBeer;
  const factory ItemFormPageArgument.newBeer(BeersBloc beersBloc) = AddBeer;
}
