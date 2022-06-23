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

/// Starts a flutter [Process]
///
/// Passes [args] directly to [Process.start]
/// Passes [package] to the [Process.start] workingDirectory parameter,
/// after navigating to the amplify-flutter packages directory and appending "/example"
/// Uses [printStream] to determine whether the events should be added to [stdout].
Future<String> startFlutterProcess(
  List<String> args,
  String package, {
  bool printStream = true,
}) async {
  stderr.write('Running "flutter ${args.join(' ')}".\n');
  final output = <int>[];
  final completer = Completer<void>();
  final process = await Process.start(
    'flutter',
    args,
    workingDirectory: '../../$package/example',
  );
  process.stdout.listen(
    (List<int> event) {
      output.addAll(event);
      if (printStream) {
        stdout.add(event);
      }
    },
    onDone: () async {
      return completer.complete();
    },
  );

  await completer.future;
  return Future<String>.value(utf8.decoder.convert(output).trim());
}
