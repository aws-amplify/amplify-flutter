// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

/// Loads the JSON object from the given [path].
Future<dynamic> getJsonFromFile(String path) async {
  path = 'resources/$path';
  String jsonString = '';
  try {
    jsonString = await File(path).readAsString();
  } on Object {
    jsonString = await File('test/$path').readAsString();
  }
  return jsonDecode(jsonString);
}
