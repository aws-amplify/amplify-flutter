// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
