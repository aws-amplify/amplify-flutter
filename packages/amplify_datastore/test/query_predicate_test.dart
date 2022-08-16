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
import 'package:amplify_test/test_models/ModelProvider.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('query predicate serialization', () {
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

    test('bad model id field naming backwards compatibility', () async {
      QueryPredicate testPredicateWithBadIdFiledNaming =
          QueryField(fieldName: 'blog.id').ne('123');
      expect(
        testPredicateWithBadIdFiledNaming.serializeAsMap(),
        await getJsonFromFile('id_not_equals.json'),
      );
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

    test('when value is a temporal type', () async {
      QueryPredicate testPredicate = Post.CREATED.eq(
        TemporalDateTime(DateTime.utc(2020, 01, 01)),
      );

      expect(testPredicate.serializeAsMap(),
          await getJsonFromFile('temporal_predicate.json'));
    });

    test('when query by model identifier with eq()', () async {
      final testPredicate = Inventory.MODEL_IDENTIFIER.eq(
        InventoryModelIdentifier(
          productID: 'product-id',
          name: 'product-name',
          warehouseID: 'warehouse-id',
          region: 'some region',
        ),
      );

      final serialized = testPredicate.serializeAsMap();
      expect(serialized, await getJsonFromFile('model_identifier_equals.json'));
    });

    test('when query by model identifier with ne()', () async {
      final testPredicate = Inventory.MODEL_IDENTIFIER.ne(
        InventoryModelIdentifier(
          productID: 'product-id',
          name: 'product-name',
          warehouseID: 'warehouse-id',
          region: 'some region',
        ),
      );

      final serialized = testPredicate.serializeAsMap();
      expect(serialized,
          await getJsonFromFile('model_identifier_not_equals.json'));
    });

    test('when query by model identifier with not(eq())', () async {
      final testPredicate = not(
        Inventory.MODEL_IDENTIFIER.eq(
          InventoryModelIdentifier(
            productID: 'product-id',
            name: 'product-name',
            warehouseID: 'warehouse-id',
            region: 'some region',
          ),
        ),
      );

      final serialized = testPredicate.serializeAsMap();
      expect(serialized,
          await getJsonFromFile('model_identifier_group_not_equals.json'));
    });

    test('when query by model identifier with not(ne())', () async {
      final testPredicate = not(
        Inventory.MODEL_IDENTIFIER.ne(
          InventoryModelIdentifier(
            productID: 'product-id',
            name: 'product-name',
            warehouseID: 'warehouse-id',
            region: 'some region',
          ),
        ),
      );

      final serialized = testPredicate.serializeAsMap();
      expect(serialized,
          await getJsonFromFile('model_identifier_group_equals.json'));
    });
  });

  group('query predicate comparison', () {
    Post post1 = Post(
      title: 'post one',
      rating: 1,
      likeCount: 1,
      created: TemporalDateTime(DateTime(2020, 01, 01, 10, 30)),
    );

    Post post2 = Post(
      title: 'post two',
      rating: 10,
      likeCount: 10,
      created: TemporalDateTime(DateTime(2020, 01, 01, 12, 00)),
    );

    Post post3 = Post(
      title: 'post three',
      rating: 100,
      likeCount: 100,
      created: TemporalDateTime(DateTime(2021, 01, 01, 12, 00)),
    );

    Post post4 = Post(
      title: 'post four',
      rating: 1000,
    );

    StringListTypeModel stringListTypeModel1 = StringListTypeModel(
      value: ['abc'],
    );

    StringListTypeModel stringListTypeModel2 = StringListTypeModel(
      value: ['abc', 'xyz'],
    );

    StringListTypeModel stringListTypeModel3 = StringListTypeModel(
      value: ['xyz'],
    );

    test('equals', () {
      QueryPredicate testPredicate = Post.LIKECOUNT.eq(1);
      expect(testPredicate.evaluate(post1), isTrue);
      expect(testPredicate.evaluate(post2), isFalse);
      expect(testPredicate.evaluate(post4), isFalse);
    });

    test('equals (ID)', () {
      QueryPredicate testPredicate = Post.ID.eq(post2.id);
      expect(testPredicate.evaluate(post1), isFalse);
      expect(testPredicate.evaluate(post2), isTrue);
      expect(testPredicate.evaluate(post4), isFalse);
    });

    test('not equals', () {
      QueryPredicate testPredicate = Post.LIKECOUNT.ne(1);
      expect(testPredicate.evaluate(post1), isFalse);
      expect(testPredicate.evaluate(post2), isTrue);
      expect(testPredicate.evaluate(post4), isTrue);
    });

    test('less than', () {
      QueryPredicate testPredicate = Post.LIKECOUNT.lt(5);
      expect(testPredicate.evaluate(post1), isTrue);
      expect(testPredicate.evaluate(post2), isFalse);
      expect(testPredicate.evaluate(post4), isFalse);
    });

    test('less than or equal', () {
      QueryPredicate testPredicate = Post.LIKECOUNT.le(10);
      expect(testPredicate.evaluate(post1), isTrue);
      expect(testPredicate.evaluate(post2), isTrue);
      expect(testPredicate.evaluate(post3), isFalse);
      expect(testPredicate.evaluate(post4), isFalse);
    });

    test('greater than', () {
      QueryPredicate testPredicate = Post.LIKECOUNT.gt(5);
      expect(testPredicate.evaluate(post1), isFalse);
      expect(testPredicate.evaluate(post2), isTrue);
      expect(testPredicate.evaluate(post4), isFalse);
    });

    test('greater than or equal', () {
      QueryPredicate testPredicate = Post.LIKECOUNT.ge(10);
      expect(testPredicate.evaluate(post1), isFalse);
      expect(testPredicate.evaluate(post2), isTrue);
      expect(testPredicate.evaluate(post3), isTrue);
      expect(testPredicate.evaluate(post4), isFalse);
    });

    test('between', () {
      QueryPredicate testPredicate = Post.LIKECOUNT.between(5, 100);
      expect(testPredicate.evaluate(post1), isFalse);
      expect(testPredicate.evaluate(post2), isTrue);
      expect(testPredicate.evaluate(post3), isTrue);
      expect(testPredicate.evaluate(post4), isFalse);
    });

    test('contains', () {
      QueryPredicate testPredicate = Post.TITLE.contains("one");
      expect(testPredicate.evaluate(post1), isTrue);
      expect(testPredicate.evaluate(post2), isFalse);
    });

    test('beginsWith', () {
      QueryPredicate testPredicate = Post.TITLE.beginsWith("post o");
      expect(testPredicate.evaluate(post1), isTrue);
      expect(testPredicate.evaluate(post2), isFalse);
    });

    test('and', () {
      QueryPredicate testPredicate =
          Post.TITLE.contains("post") & Post.RATING.lt(10);
      expect(testPredicate.evaluate(post1), isTrue);
      expect(testPredicate.evaluate(post2), isFalse);
    });

    test('or', () {
      QueryPredicate testPredicate =
          Post.TITLE.contains("two") | Post.RATING.lt(10);
      expect(testPredicate.evaluate(post1), isTrue);
      expect(testPredicate.evaluate(post2), isTrue);
      expect(testPredicate.evaluate(post3), isFalse);
    });

    test('not', () {
      QueryPredicate testPredicate = not(Post.RATING.lt(5));
      expect(testPredicate.evaluate(post1), isFalse);
      expect(testPredicate.evaluate(post2), isTrue);
    });

    test('Temporal type', () {
      QueryPredicate testPredicate = Post.CREATED.lt(TemporalDateTime(
        DateTime(2020, 01, 01, 12, 00),
      ));
      expect(testPredicate.evaluate(post1), isTrue);
      expect(testPredicate.evaluate(post2), isFalse);
    });

    group('List type', () {
      test('contains', () {
        QueryPredicate testPredicate = StringListTypeModel.VALUE.contains(
          'abc',
        );
        expect(testPredicate.evaluate(stringListTypeModel1), isTrue);
        expect(testPredicate.evaluate(stringListTypeModel2), isTrue);
        expect(testPredicate.evaluate(stringListTypeModel3), isFalse);
      });
    });

    group('nested models', () {
      final blog1 = Blog(name: 'Blog 1');
      final blog2 = Blog(name: 'Blog 1');

      final post1 = Post(title: 'post 1', rating: 1, blog: blog1);
      final post2 = Post(title: 'post 2', rating: 1, blog: blog1);
      final post3 = Post(title: 'post 3', rating: 1, blog: blog2);
      test('equals', () {
        final testPredicate = Post.BLOG.eq(blog1.id);
        expect(testPredicate.evaluate(post1), isTrue);
        expect(testPredicate.evaluate(post2), isTrue);
        expect(testPredicate.evaluate(post3), isFalse);
      });

      test('not equals', () {
        final testPredicate = Post.BLOG.ne(blog1.id);
        expect(testPredicate.evaluate(post1), isFalse);
        expect(testPredicate.evaluate(post2), isFalse);
        expect(testPredicate.evaluate(post3), isTrue);
      });
    });
  });

  group("query by model identifier predicate", () {});
}
