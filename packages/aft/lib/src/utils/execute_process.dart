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

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:aft/aft.dart';

/// Runs the `flutter` or 'dart' command from the root of [package], using the provided [args],
/// and returns the decoded output.
///
/// If [printStream] is `true`, the output of the command will be piped to [stdout].
Future<String> executeProcess(
  PackageFlavor flavor,
  List<String> args, {
  PackageInfo? package,
  bool printStream = true,
}) async {
  final output = <int>[];
  final completer = Completer<int>();
  final process = await Process.start(
    flavor.name.toLowerCase(),
    args,
    workingDirectory: package?.path ?? Directory.current.path,
  );
  process.stdout.listen(
    (List<int> event) {
      output.addAll(event);
      if (printStream) {
        stdout.add(event);
      }
    },
    onDone: () async {
      return completer.complete(process.exitCode);
    },
  );

  final exitCode = await completer.future;
  if (exitCode != 0) {
    stderr.writeln('flutter ${args.join(' ')} failed with exit code $exitCode');
  }
  return Future<String>.value(utf8.decoder.convert(output).trim());
}
