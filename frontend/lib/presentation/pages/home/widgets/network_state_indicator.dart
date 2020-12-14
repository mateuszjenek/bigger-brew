import 'package:bigger_brew/application/network_status/network_status_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class NetworkStateIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NetworkStatusBloc, NetworkStatusState>(
      listener: (context, state) {
        print(state);
      },
      builder: (context, state) => state.map(
        offline: (_) => ListTile(
          tileColor: Colors.red,
          leading: Icon(Icons.wifi_off, color: Colors.white),
          title: Text(
            "You are in offline mode, but don't worry all your work will be saved.",
            style: TextStyle(color: Colors.white),
          ),
        ),
        online: (_) => Column(),
      ),
    );
  }
}
