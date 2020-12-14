import 'dart:async';
import 'package:bigger_brew/domain/configuration/I_configuration_repository.dart';
import 'package:bigger_brew/domain/configuration/configuration.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'options_event.dart';
part 'options_state.dart';

part 'options_bloc.freezed.dart';

@injectable
class OptionsBloc extends Bloc<OptionsEvent, OptionsState> {
  final IConfigurationRepository repository;
  OptionsBloc(this.repository) : super(OptionsState.loading());

  @override
  Stream<OptionsState> mapEventToState(OptionsEvent event) async* {
    yield* event.map(
      getConfiguration: (GetConfiguration value) async* {
        yield OptionsState.loading();
        var config = await repository.get();
        yield OptionsState.loaded(config);
      },
      changeNetworkMode: (event) async* {
        yield OptionsState.loading();
        var config = await repository.get();
        var newConfig = config.copyWith(
          isOfflineMode: event.isOffline,
        );
        var updatedConfig = await repository.update(newConfig);
        yield OptionsState.loaded(updatedConfig);
      },
    );
  }
}
