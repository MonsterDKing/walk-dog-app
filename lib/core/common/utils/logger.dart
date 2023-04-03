import 'package:logger/logger.dart';

class LoggerPrinter extends LogPrinter {
  LoggerPrinter(
    this.className,
  );

  final String className;

  @override
  List<String> log(LogEvent event) {
    final Level level = event.level;
    final dynamic message = event.message;

    final AnsiColor? color = PrettyPrinter.levelColors[level];
    final String? emoji = PrettyPrinter.levelEmojis[level];

    return <String>[color!('$emoji $className - $message')];
  }
}

Logger getLogger(String className) {
  return Logger(printer: LoggerPrinter(className));
}
