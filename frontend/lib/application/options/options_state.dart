part of 'options_bloc.dart';

@freezed
abstract class OptionsState with _$OptionsState {
  const factory OptionsState.loading() = Loading;
  const factory OptionsState.loaded(Configuration configuration) = Loaded;
}
