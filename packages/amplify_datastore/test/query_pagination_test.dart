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

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  dynamic getJsonFromFile(String path) async {
    path = 'resources/query_pagination/' + path;
    String jsonString = '';
    try {
      jsonString = await File(path).readAsString();
    } catch (e) {
      jsonString = await File('test/' + path).readAsString();
    }
    return jsonDecode(jsonString);
  }

  test('when providing custom page and limit', () async {
    expect(QueryPagination(page: 3, limit: 200).serializeAsMap(),
        await getJsonFromFile('custom_page_and_limit.json'));
  });

  test('when only need first page', () async {
    expect(QueryPagination.firstPage().serializeAsMap(),
        await getJsonFromFile('first_page.json'));
  });

  test('when only need first result', () async {
    expect(QueryPagination.firstResult().serializeAsMap(),
        await getJsonFromFile('first_result.json'));
  });
}
