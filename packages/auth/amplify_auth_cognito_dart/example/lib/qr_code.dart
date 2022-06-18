// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
