import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'environment.dart';

class DevEnvironment extends Environment {
  DevEnvironment() {
    this
      ..type = EnvironmentType.dev
      ..color = Colors.orange
      ..variables = <String, String?>{
        "baseUrl": dotenv.env['API_URL_DEV'],
        "stripeUrl": dotenv.env['DEV_STRIPE_API']
      };
  }
}
