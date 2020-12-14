part of 'network_status_bloc.dart';

@freezed
abstract class NetworkStatusState with _$NetworkStatusState {
  const factory NetworkStatusState.online() = Online;
  const factory NetworkStatusState.offline() = Offline;
}
