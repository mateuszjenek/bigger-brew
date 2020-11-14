import 'package:auto_route/auto_route.dart';
import 'package:bigger_brew/application/auth/auth_bloc.dart';
import 'package:bigger_brew/application/beer/beer_bloc.dart';
import 'package:bigger_brew/application/beer_form/beer_form_bloc.dart';
import 'package:bigger_brew/application/beers/beers_bloc.dart';
import 'package:bigger_brew/domain/auth/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'item_form_page_argument.dart';

class ItemFormPage extends StatelessWidget implements AutoRouteWrapper {
  final ItemFormPageArgument arguments;
  const ItemFormPage(this.arguments);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.map(
          editBeer: (_) => "Edit Beer",
          newBeer: (_) => "Add Beer",
        )),
      ),
      body: BlocBuilder<BeerFormBloc, BeerFormState>(
        builder: (context, state) {
          return BlocBuilder<AuthBloc, AuthState>(
              builder: (context, authState) {
            return Form(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          TextFormField(
                            initialValue: state.name.getOrCrash(),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            onChanged: (value) => context
                                .bloc<BeerFormBloc>()
                                .add(BeerFormEvent.nameChanged(value)),
                            validator: (_) => state.name.value
                                .fold((f) => f.toString(), (_) => null),
                            decoration: InputDecoration(labelText: "Name"),
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            onEditingComplete: () {
                              FocusScope.of(context).nextFocus();
                            },
                          ),
                          TextFormField(
                            initialValue: state.code.getOrCrash(),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            onChanged: (value) => context
                                .bloc<BeerFormBloc>()
                                .add(BeerFormEvent.codeChanged(value)),
                            validator: (_) => state.code.value
                                .fold((f) => f.toString(), (_) => null),
                            decoration: InputDecoration(labelText: "Code"),
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.numberWithOptions(),
                            onEditingComplete: () {
                              FocusScope.of(context).nextFocus();
                            },
                          ),
                          TextFormField(
                            initialValue: state.price.getOrCrash().toString(),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            onChanged: (value) => context
                                .bloc<BeerFormBloc>()
                                .add(BeerFormEvent.priceChanged(
                                    double.parse(value))),
                            validator: (_) => state.price.value
                                .fold((f) => f.toString(), (_) => null),
                            decoration: InputDecoration(labelText: "Price"),
                            textInputAction: TextInputAction.done,
                            keyboardType:
                                TextInputType.numberWithOptions(decimal: true),
                            onEditingComplete: () {
                              FocusScope.of(context).unfocus();
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Row(
                              children: arguments.map(
                                editBeer: (arg) => [
                                  authState.maybeWhen(
                                    authenticated: (s) => s.role == Role.ADMIN
                                        ? Expanded(
                                            child: FlatButton(
                                              child: Text(
                                                "Delete",
                                                style: TextStyle(
                                                    color: Colors.red),
                                              ),
                                              onPressed: () {
                                                arg.beersBloc.add(
                                                  BeersEvent.deleteBeer(
                                                      arg.beer.id),
                                                );
                                                ExtendedNavigator.of(context)
                                                    .pop();
                                              },
                                            ),
                                          )
                                        : Container(),
                                    orElse: () => Container(),
                                  ),
                                  Expanded(
                                    child: RaisedButton(
                                      child: Text("Update"),
                                      onPressed: () {
                                        arg.beerBloc.add(BeerEvent.updateBeer(
                                            state.name.getOrCrash(),
                                            state.code.getOrCrash(),
                                            state.price.getOrCrash()));
                                        ExtendedNavigator.of(context).pop();
                                      },
                                    ),
                                  ),
                                ],
                                newBeer: (arg) => [
                                  Expanded(
                                    child: RaisedButton(
                                      child: Text("Register"),
                                      onPressed: () {
                                        arg.beersBloc
                                            .add(BeersEvent.registerBeer(
                                          state.name,
                                          state.code,
                                          state.price,
                                        ));
                                        ExtendedNavigator.of(context).pop();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          });
        },
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BeerFormBloc>(
          lazy: false,
          create: (context) {
            return arguments.map(
              editBeer: (args) => BeerFormBloc.fromBeer(args.beer),
              newBeer: (_) => BeerFormBloc(),
            );
          },
        ),
      ],
      child: this,
    );
  }
}
