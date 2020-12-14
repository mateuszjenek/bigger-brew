import 'dart:convert';

import 'package:bigger_brew/domain/configuration/I_configuration_repository.dart';
import 'package:bigger_brew/domain/configuration/configuration.dart';
import 'package:bigger_brew/infrastructure/configuration/configuration_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IConfigurationRepository)
class ConfigurationRepository implements IConfigurationRepository {
  @override
  Future<Configuration> get() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var configurationStr = prefs.getString("configuration");
    if (configurationStr == null) {
      return Configuration.initial();
    }
    var json = jsonDecode(configurationStr);
    return ConfigurationDto.fromJson(json).toDomain();
  }

  @override
  Future<Configuration> update(Configuration configuration) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var config = ConfigurationDto(isOfflineMode: configuration.isOfflineMode);
    var isUpdated =
        await prefs.setString("configuration", jsonEncode(config.toJson()));
    if (isUpdated) {
      return configuration;
    }
    return get();
  }
}
