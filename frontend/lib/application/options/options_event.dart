part of 'options_bloc.dart';

@freezed
abstract class OptionsEvent with _$OptionsEvent {
  const factory OptionsEvent.getConfiguration() = GetConfiguration;
  const factory OptionsEvent.changeNetworkMode(
    bool isOffline,
  ) = ChangeNetworkMode;
}
