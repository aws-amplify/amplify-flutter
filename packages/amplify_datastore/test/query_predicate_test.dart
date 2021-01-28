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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import './test_models/index.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  dynamic getJsonFromFile(String path) async {
    path = 'resources/query_predicate/' + path;
    String jsonString = '';
    try {
      jsonString = await File(path).readAsString();
    } catch (e) {
      jsonString = await File('test/' + path).readAsString();
    }
    return jsonDecode(jsonString);
  }

  test('when id not equals', () async {
    expect(Post.ID.ne("123").serializeAsMap(),
        await getJsonFromFile('id_not_equals.json'));
  });

  test('when rating greater or equal', () async {
    expect(Post.RATING.ge(4).serializeAsMap(),
        await getJsonFromFile('rating_greater_or_equal.json'));
    expect((Post.RATING >= 4).serializeAsMap(),
        await getJsonFromFile('rating_greater_or_equal.json'));
  });

  test('when rating less or equal AND \(id contains or title begins with\)',
      () async {
    QueryPredicate testPredicate = Post.RATING
        .le(4)
        .and(Post.ID.contains("abc").or(Post.TITLE.beginsWith("def")));

    expect(testPredicate.serializeAsMap(),
        await getJsonFromFile('complex_nested.json'));
  });

  test(
      'when rating between AND id contains AND title begins_with AND created equals',
      () async {
    QueryPredicate testPredicate = Post.RATING
        .between(1, 4)
        .and(Post.ID.contains("abc"))
        .and(Post.TITLE.beginsWith("def"))
        .and(Post.CREATED.eq("2020-02-20T20:20:20-08:00"));

    expect(testPredicate.serializeAsMap(),
        await getJsonFromFile('group_with_only_and.json'));
  });

  test('when rating lt AND id eq OR title contains', () async {
    QueryPredicate testPredicate = Post.RATING
        .lt(4)
        .and(Post.ID.contains("abc"))
        .or(Post.TITLE.contains("def"));

    expect(testPredicate.serializeAsMap(),
        await getJsonFromFile('group_mixed_and_or.json'));
  });

  test('when rating gt but not eq', () async {
    QueryPredicate testPredicate =
        Post.RATING.gt(4).and(not(Post.RATING.eq(1)));

    expect(testPredicate.serializeAsMap(),
        await getJsonFromFile('mixed_with_not.json'));
  });

  test('when negate complex predicate', () async {
    QueryPredicate testPredicate = not(Post.RATING
        .eq(1)
        .and(Post.RATING.eq(4).or(Post.TITLE.contains("crap"))));

    expect(testPredicate.serializeAsMap(),
        await getJsonFromFile('negate_complex_predicate.json'));
  });

  test('when operands are bool and double', () async {
    QueryPredicate testPredicate =
        Post.RATING.eq(1.3).and(Post.CREATED.eq(true));

    expect(testPredicate.serializeAsMap(),
        await getJsonFromFile('bool_and_double_operands.json'));
  });
}
