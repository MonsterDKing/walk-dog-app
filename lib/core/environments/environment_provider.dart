import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import 'environment.dart';
import 'environment_factory.dart';

//const _envFileName = ".env";

const environmentProvider = EnvironmentProvider(EnvironmentFactory());

class EnvironmentProvider {
  final EnvironmentFactory envFactory;

  const EnvironmentProvider(this.envFactory);

  Future<void> load(EnvironmentType type) async {
    await _loadDotEnviFile();

    final environment = envFactory.createEnvironment(type);

    FlavorConfig(
      name: environment.type.name,
      color: environment.color,
      location: environment.type == EnvironmentType.production ? BannerLocation.bottomEnd : BannerLocation.bottomEnd,
      variables: environment.variables,
    );
  }

  Future<void> _loadDotEnviFile() => dotenv.load();
}
