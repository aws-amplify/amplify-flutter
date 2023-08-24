// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:ansicolor/ansicolor.dart';
import 'package:qr/qr.dart';

final _black = (AnsiPen()..black(bg: true))(' ');
final _white = (AnsiPen()..white(bg: true))(' ');

extension QrRenderer on QrImage {
  /// Renders the QR image as console text for ANSI color-enabled terminals.
  String renderConsoleText() {
    final output = StringBuffer();
    final border = _white * (moduleCount * 2 + 2);

    output.writeln(border);
    for (var x = 0; x < moduleCount; x++) {
      output.write(_white);
      for (var y = 0; y < moduleCount * 2; y++) {
        output.write(isDark(x, y ~/ 2) ? _black : _white);
      }
      output.writeln(_white);
    }
    output.write(border);

    return output.toString();
  }
}
