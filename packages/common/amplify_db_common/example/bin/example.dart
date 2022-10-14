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

import 'package:amplify_db_common_example/database.dart';

enum InputMode {
  query,
  insert,
}

final db = MyDatabase();

Future<void> main() async {
  InputMode? inputMode;

  while (inputMode == null) {
    final rawInput = _prompt(
      'Would you like to query (q), or insert (i): ',
    );
    final input = rawInput[0].toLowerCase();
    if (input == 'q') {
      inputMode = InputMode.query;
    } else if (input == 'i') {
      inputMode = InputMode.insert;
    }
  }

  switch (inputMode) {
    case InputMode.query:
      await _query();
      break;
    case InputMode.insert:
      await _insert();
      break;
  }
}

Future<void> _query() async {
  final items = await db.select(db.todos).get();
  stdout.writeln('Current todos:');
  for (final item in items) {
    stdout.writeln(item.toString());
  }
}

Future<void> _insert() async {
  final title = _prompt('Enter the title of the todo: ');
  final content = _prompt('Enter the content of the todo: ');
  await db
      .into(db.todos)
      .insert(TodosCompanion.insert(title: title, content: content));
  stdout.writeln('Inserted new todo into the DB!');
}

String _prompt(String prompt) {
  String? value;
  while (value == null) {
    stdout.write(prompt);
    value = stdin.readLineSync(encoding: utf8);
  }
  return value;
}
