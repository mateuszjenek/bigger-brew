part of 'network_status_bloc.dart';

@freezed
abstract class NetworkStatusEvent with _$NetworkStatusEvent {
  const factory NetworkStatusEvent.update(BeerRepositoryMode mode) = Update;
}
