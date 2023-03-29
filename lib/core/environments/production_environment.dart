import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'environment.dart';

class ProductionEnvironment extends Environment {
  ProductionEnvironment() {
    this
      ..type = EnvironmentType.production
      ..color = Colors.red
      ..variables = <String, String?>{
        "baseUrl": dotenv.env['API_URL_PRODUCTION'],
        "stripeUrl": dotenv.env['PRODUCTION_STRIPE_API']
      };
  }
}
