import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walk_dog_app/core/common/constants/colors.dart';
import 'package:intl/intl.dart';

class Utils {
  Utils();

  String getErrorMessage(dynamic response) {
    try {
      return response['errors'][0] as String;
    } catch (e) {
      return 'Parece que algo anda mal, intenta mas tarde';
    }
  }
}
