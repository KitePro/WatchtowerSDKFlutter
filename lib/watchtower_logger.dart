// Package imports:
import "package:logger/logger.dart";

class WatchtowerOutput extends LogOutput {
  Function eventHandler;
  String? moduleName;

  WatchtowerOutput({required this.eventHandler, this.moduleName});

  @override
  void output(OutputEvent event) {
    // We send to the server only info, warning and error level messages and skip debug messages
    if (event.level == Level.error ||
        event.level == Level.warning ||
        event.level == Level.info) {
      eventHandler(
          level: event.level,
          message: event.origin.message,
          moduleName: moduleName);
    }
  }
}

Logger getLogger(String? moduleName, {LogOutput? output, LogFilter? filter}) {
  return Logger(
      printer: CleanLogPrinter(moduleName),
      output: output ?? ConsoleOutput(),
      filter: filter);
}

class CleanLogPrinter extends LogPrinter {
  String? moduleName;
  CleanLogPrinter(this.moduleName);

  @override
  List<String> log(LogEvent event) {
    var color = PrettyPrinter.levelColors[event.level];
    return [color!("$moduleName | ${event.level} | ${event.message}")];
  }
}
