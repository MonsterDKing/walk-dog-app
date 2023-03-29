import 'package:flutter/material.dart';

enum EnvironmentType { dev, staging, production }

class Environment {
  EnvironmentType type = EnvironmentType.dev;
  Color color = Colors.red;
  Map<String, String?> variables = {};
}

extension EnvironmentTypeExtension on EnvironmentType {
  String get name {
    if (this == EnvironmentType.production) {
      return "Production";
    } else if (this == EnvironmentType.staging) {
      return "Staging";
    } else {
      return "Development";
    }
  }
}
