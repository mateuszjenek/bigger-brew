import 'dart:async';
import 'package:bigger_brew/domain/beer/beer_repository_result.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'network_status_event.dart';
part 'network_status_state.dart';

part 'network_status_bloc.freezed.dart';

@injectable
class NetworkStatusBloc extends Bloc<NetworkStatusEvent, NetworkStatusState> {
  NetworkStatusBloc() : super(NetworkStatusState.online());

  @override
  Stream<NetworkStatusState> mapEventToState(NetworkStatusEvent event) async* {
    yield event.map(update: (state) {
      if (state.mode == BeerRepositoryMode.ONLINE)
        return NetworkStatusState.online();
      else
        return NetworkStatusState.offline();
    });
  }
}
