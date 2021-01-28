/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:flutter_test/flutter_test.dart';
import './test_models/index.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {});

  tearDown(() {});

  dynamic getJsonFromFile(String path) async {
    path = 'resources/query_sort/' + path;
    String jsonString = '';
    try {
      jsonString = await File(path).readAsString();
    } catch (e) {
      jsonString = await File('test/' + path).readAsString();
    }
    return jsonDecode(jsonString);
  }

  test('when sorting by Id ascending', () async {
    expect([Post.ID.ascending().serializeAsMap()],
        await getJsonFromFile('sort_by_id_ascending.json'));
  });

  test('when sorting by Id ascending and then rating descending', () async {
    expect([
      Post.ID.ascending().serializeAsMap(),
      Post.RATING.descending().serializeAsMap()
    ], await getJsonFromFile('multiple_sorting.json'));
  });
}
