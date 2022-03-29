/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'dart:convert';
import 'dart:io';

/// Loads the JSON object from the given [path].
Future<dynamic> getJsonFromFile(String path) async {
  path = 'resources/$path';
  String jsonString = '';
  try {
    jsonString = await File(path).readAsString();
    // ignore: avoid_catches_without_on_clauses
  } catch (e) {
    jsonString = await File('test/$path').readAsString();
  }
  return jsonDecode(jsonString);
}
