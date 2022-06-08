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

import 'dart:convert';
import 'dart:io';

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

enum InputMode {
  read,
  write,
  delete,
}

final storage = AmplifySecureStorageDart(
  config: AmplifySecureStorageConfig(
    scope: 'default',
  ),
);

Future<void> main() async {
  InputMode? inputMode;

  while (inputMode == null) {
    String rawInput = _prompt(
      'Would you like to read (r), write (w), or delete (d): ',
    );
    final input = rawInput[0].toLowerCase();
    if (input == 'r') {
      inputMode = InputMode.read;
    } else if (input == 'w') {
      inputMode = InputMode.write;
    } else if (input == 'd') {
      inputMode = InputMode.delete;
    }
  }

  switch (inputMode) {
    case InputMode.read:
      await _read();
      break;
    case InputMode.write:
      await _write();
      break;
    case InputMode.delete:
      await _delete();
      break;
  }
}

Future<void> _read() async {
  String key = _prompt('Enter the key to read: ');

  final value = await storage.read(key: key);

  stdout.writeln('The value of $key is $value');
}

Future<void> _write() async {
  String key = _prompt('Enter the key to write to: ');
  String value = _prompt('Enter the value to write: ');

  await storage.write(key: key, value: value);

  stdout.writeln('Wrote $key:$value to storage!');
}

Future<void> _delete() async {
  String key = _prompt('Enter the key to delete: ');

  await storage.delete(key: key);

  stdout.writeln('The value of $key has been deleted!');
}

String _prompt(String prompt) {
  String? value;
  while (value == null) {
    stdout.write(prompt);
    value = stdin.readLineSync(encoding: utf8);
  }
  return value;
}
