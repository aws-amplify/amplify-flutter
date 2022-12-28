// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
    final rawInput = _prompt(
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
  final key = _prompt('Enter the key to read: ');

  final value = await storage.read(key: key);

  stdout.writeln('The value of $key is $value');
}

Future<void> _write() async {
  final key = _prompt('Enter the key to write to: ');
  final value = _prompt('Enter the value to write: ');

  await storage.write(key: key, value: value);

  stdout.writeln('Wrote $key:$value to storage!');
}

Future<void> _delete() async {
  final key = _prompt('Enter the key to delete: ');

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
