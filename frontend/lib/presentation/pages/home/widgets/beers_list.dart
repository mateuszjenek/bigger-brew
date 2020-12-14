import 'package:bigger_brew/application/network_status/network_status_bloc.dart';
import 'package:bigger_brew/presentation/pages/home/widgets/sync_failed_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:bigger_brew/application/beers/beers_bloc.dart';
import 'package:bigger_brew/presentation/pages/home/widgets/beers_list_item.dart';

class BeersList extends HookWidget {
  const BeersList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BeersBloc, BeersState>(
      listener: (context, state) => state.maybeMap(
        loaded: (state) {
          context
              .bloc<NetworkStatusBloc>()
              .add(NetworkStatusEvent.update(state.mode));

          if (state.isAnyQueuedEventFailed) {
            showDialog(
              context: context,
              child: SyncFailedDialog(),
            );
          }
        },
        orElse: () {},
      ),
      builder: (context, state) => state.map(
        initial: (_) => Container(),
        loading: (_) => Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(child: CircularProgressIndicator()),
        ),
        loaded: (loaded) => ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: loaded.beers.length,
          itemBuilder: (BuildContext context, int index) =>
              BeersListItem(loaded.beers[index]),
        ),
        failed: (failed) => Text(failed.failure.toString()),
      ),
    );
  }
}
