import 'dev_environment.dart';
import 'environment.dart';
import 'production_environment.dart';

class EnvironmentFactory {
  const EnvironmentFactory();

  Environment createEnvironment(EnvironmentType type) {
    Environment environment = DevEnvironment();

    if (type == EnvironmentType.dev) {
      environment = DevEnvironment();
    } else if (type == EnvironmentType.production) {
      environment = ProductionEnvironment();
    }

    return environment;
  }
}
