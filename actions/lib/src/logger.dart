// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/actions.dart';
import 'package:aws_common/aws_common.dart';

final class NodeLoggerPlugin implements AWSLoggerPlugin {
  const NodeLoggerPlugin();

  @override
  void handleLogEntry(LogEntry logEntry) {
    final message = SimpleLogPrinter.formatLogEntry(logEntry);
    switch (logEntry.level) {
      case LogLevel.error:
        core.error(message);
      case LogLevel.warn:
        core.warning(message);
      case LogLevel.info:
        core.info(message);
      case LogLevel.debug:
      case LogLevel.verbose:
        core.debug(message);
      case LogLevel.none:
        break;
    }
  }
}
