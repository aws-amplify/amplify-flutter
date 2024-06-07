// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {});

  tearDown(() {});

  dynamic getJsonFromFile(String path) async {
    path = 'resources/query_sort/$path';
    var jsonString = '';
    try {
      jsonString = await File(path).readAsString();
    } on Exception {
      jsonString = await File('test/$path').readAsString();
    }
    return jsonDecode(jsonString);
  }

  test('when sorting by Id ascending', () async {
    expect(
      [Post.ID.ascending().serializeAsMap()],
      await getJsonFromFile('sort_by_id_ascending.json'),
    );
  });

  test('bad model id field naming backwards compatibility', () async {
    final testPredicateWithBadIdFiledNaming =
        const QueryField<String>(fieldName: 'blog.id').ascending();
    expect(
      [testPredicateWithBadIdFiledNaming.serializeAsMap()],
      await getJsonFromFile('sort_by_id_ascending.json'),
    );
  });

  test('when sorting by Id ascending and then rating descending', () async {
    expect(
      [
        Post.ID.ascending().serializeAsMap(),
        Post.RATING.descending().serializeAsMap(),
      ],
      await getJsonFromFile('multiple_sorting.json'),
    );
  });

  group('compare', () {
    final post1 = Post(
      id: '123e4567-e89b-12d3-a456-426614174000',
      title: 'post1',
      rating: 1,
      created: TemporalDateTime(DateTime(2020, 01, 01, 10, 30)),
    );

    final post2 = Post(
      id: '123e4567-e89b-12d3-a456-426614174001',
      title: 'post2',
      rating: 2,
      created: TemporalDateTime(DateTime(2020, 01, 01, 12, 30)),
    );

    final post2Copy = post2.copyWith();

    final post3 = post1.copyWith(likeCount: 0);

    final post4 = post1.copyWith(likeCount: 1);

    final post4Copy = post4.copyWith();

    test('should compare ID fields', () {
      final sortByAsc = Post.ID.ascending();
      final sortByDesc = Post.ID.descending();

      expect(sortByAsc.compare(post1, post2), -1);
      expect(sortByAsc.compare(post2, post1), 1);
      expect(sortByAsc.compare(post2, post2Copy), 0);

      expect(sortByDesc.compare(post1, post2), 1);
      expect(sortByDesc.compare(post2, post1), -1);
      expect(sortByDesc.compare(post2, post2Copy), 0);
    });

    test('should compare int fields', () {
      final sortByAsc = Post.RATING.ascending();
      final sortByDesc = Post.RATING.descending();

      expect(sortByAsc.compare(post1, post2), -1);
      expect(sortByAsc.compare(post2, post1), 1);
      expect(sortByAsc.compare(post2, post2Copy), 0);

      expect(sortByDesc.compare(post1, post2), 1);
      expect(sortByDesc.compare(post2, post1), -1);
      expect(sortByDesc.compare(post2, post2Copy), 0);
    });

    test('should compare bool fields', () {
      final sortByAsc = Post.LIKECOUNT.ascending();
      final sortByDesc = Post.LIKECOUNT.descending();

      expect(sortByAsc.compare(post3, post4), -1);
      expect(sortByAsc.compare(post4, post3), 1);
      expect(sortByAsc.compare(post4, post4Copy), 0);

      expect(sortByDesc.compare(post3, post4), 1);
      expect(sortByDesc.compare(post4, post3), -1);
      expect(sortByDesc.compare(post4, post4Copy), 0);
    });

    test('should compare string fields', () {
      final sortByAsc = Post.TITLE.ascending();
      final sortByDesc = Post.TITLE.descending();

      expect(sortByAsc.compare(post1, post2), -1);
      expect(sortByAsc.compare(post2, post1), 1);
      expect(sortByAsc.compare(post2, post2Copy), 0);

      expect(sortByDesc.compare(post1, post2), 1);
      expect(sortByDesc.compare(post2, post1), -1);
      expect(sortByDesc.compare(post2, post2Copy), 0);
    });

    test('should compare date/time fields', () {
      final sortByAsc = Post.CREATED.ascending();
      final sortByDesc = Post.CREATED.descending();

      expect(sortByAsc.compare(post1, post2), -1);
      expect(sortByAsc.compare(post2, post1), 1);
      expect(sortByAsc.compare(post2, post2Copy), 0);

      expect(sortByDesc.compare(post1, post2), 1);
      expect(sortByDesc.compare(post2, post1), -1);
      expect(sortByDesc.compare(post2, post2Copy), 0);
    });

    test('should handle null values', () {
      final sortByAsc = Post.LIKECOUNT.ascending();
      final sortByDesc = Post.LIKECOUNT.descending();

      expect(sortByAsc.compare(post1, post3), -1);
      expect(sortByAsc.compare(post1, post4), -1);
      expect(sortByAsc.compare(post1, post2), 0);

      expect(sortByDesc.compare(post1, post3), 1);
      expect(sortByDesc.compare(post1, post4), 1);
      expect(sortByDesc.compare(post1, post2), 0);
    });
  });
}
