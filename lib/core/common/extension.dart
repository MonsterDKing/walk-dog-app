import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:walk_dog_app/core/common/constants/colors.dart';

enum MessageType { succeed, error, warning, normal }

extension WidgetExtensions on BuildContext {
  void showCustomModalBottomSheet(
    Widget child,
  ) {
    final Size size = MediaQuery.of(this).size;
    showModalBottomSheet(
      isScrollControlled: true,
      context: this,
      builder: (context) => ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          child: Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: backgroundColor,
              ),
              body: child)),
      constraints: BoxConstraints(maxHeight: size.height * .85, minHeight: size.height * .85),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }

  void showMessage(
    String message, {
    required MessageType type,
    TextStyle? style,
  }) {
    final snackBar = SnackBar(
      content: Text(message, style: style?.copyWith(color: Colors.white)),
      backgroundColor: _getMessageColor(type),
    );
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}

Color? _getMessageColor(MessageType type) {
  switch (type) {
    case MessageType.normal:
      return Colors.black;
    case MessageType.error:
      return Colors.red;
    case MessageType.warning:
      return Colors.orange;
    case MessageType.succeed:
      return Colors.green;
    default:
      return null;
  }
}

extension DayofWeek on int {
  String getDayOfWeek() {
    switch (this) {
      case 1:
        return 'Lun';
      case 2:
        return 'Mar';
      case 3:
        return 'Mier';
      case 4:
        return 'Jue';
      case 5:
        return 'Vie';
      case 6:
        return 'Sab';
      case 7:
        return 'Dom';
      default:
        return 'Err';
    }
  }
}
