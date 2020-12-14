import 'configuration.dart';

abstract class IConfigurationRepository {
  Future<Configuration> get();
  Future<Configuration> update(Configuration configuration);
}
