import 'package:auto_route/auto_route.dart';
import 'package:bigger_brew/application/beer/beer_bloc.dart';
import 'package:bigger_brew/application/beers/beers_bloc.dart';
import 'package:bigger_brew/domain/beer/i_beer_repository.dart';
import 'package:bigger_brew/presentation/pages/item_form/item_form_page_argument.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:bigger_brew/domain/beer/beer.dart';
import 'package:bigger_brew/presentation/routes/router.gr.dart';
import 'package:get_it/get_it.dart';

class BeersListItem extends HookWidget {
  final Beer beer;

  const BeersListItem(this.beer, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BeerBloc(beer, GetIt.I.get<IBeerRepository>()),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: BlocConsumer<BeerBloc, BeerState>(
            listener: (context, state) {
              print("isBroken: ${state.isBroken}");
              if (state.isBroken) {
                FlushbarHelper.createError(
                  message:
                      "Something wrong happend with beer: ${state.beer.name.getOrCrash()}. Please refresh beer list.",
                ).show(context);
              }
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    trailing: IconButton(
                      color: Colors.blue,
                      onPressed: () => ExtendedNavigator.of(context).push(
                        Routes.itemFormPage,
                        arguments: ItemFormPageArguments(
                          arguments: ItemFormPageArgument.editBeer(
                            state.beer,
                            context.bloc<BeerBloc>(),
                            context.bloc<BeersBloc>(),
                          ),
                        ),
                      ),
                      icon: Icon(Icons.edit),
                    ),
                    title: Text(state.beer.name.getOrCrash()),
                    subtitle: Text(state.beer.productCode.getOrCrash()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "${state.beer.price.getOrCrash()} PLN",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                    child: Text(
                      "Quantity: ${state.beer.quantity.getOrCrash()}",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            color: Colors.blue,
                            onPressed: state.isUpdating
                                ? null
                                : () => context
                                    .bloc<BeerBloc>()
                                    .add(BeerEvent.decrementQuantity()),
                            icon: Icon(Icons.remove)),
                        Text("${state.changeValue}"),
                        IconButton(
                            color: Colors.blue,
                            onPressed: state.isUpdating
                                ? null
                                : () => context
                                    .bloc<BeerBloc>()
                                    .add(BeerEvent.incrementQuantity()),
                            icon: Icon(Icons.add)),
                      ],
                    ),
                  ),
                  Center(
                    child: FlatButton(
                      textColor: Colors.blue,
                      onPressed: state.isUpdating
                          ? null
                          : () {
                              context
                                  .bloc<BeerBloc>()
                                  .add(BeerEvent.updateQuantity());
                            },
                      child: Text(state.isUpdating
                          ? "Updating ..."
                          : "Update quantity"),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
