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

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';

// TODO(Jordan-Nelson): Remove at next major version bump.
/// A `Post` model that does not have a `toMap()` impl.
class PostWithNoToMap extends Post {
  PostWithNoToMap({
    String? id,
    required String title,
    required int rating,
    TemporalDateTime? created,
    int? likeCount,
    Blog? blog,
    List<Comment>? comments,
  }) : super.internal(
          id: id == null ? UUID.getUUID() : id,
          title: title,
          rating: rating,
          created: created,
          likeCount: likeCount,
          blog: blog,
          comments: comments,
        );

  @override
  Map<String, Object?> toMap() {
    throw UnimplementedError('toMap has not been implemented');
  }

  @override
  PostWithNoToMap copyWith({
    String? title,
    int? rating,
    TemporalDateTime? created,
    int? likeCount,
    Blog? blog,
    List<Comment>? comments,
  }) {
    return PostWithNoToMap(
      id: id,
      title: title ?? this.title,
      rating: rating ?? this.rating,
      created: created ?? this.created,
      likeCount: likeCount ?? this.likeCount,
      blog: blog ?? this.blog,
      comments: comments ?? this.comments,
    );
  }
}

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

  test('bad model id field naming backwards compatibility', () async {
    QuerySortBy testPredicateWithBadIdFiledNaming =
        QueryField(fieldName: 'blog.id').ascending();
    expect(
      [testPredicateWithBadIdFiledNaming.serializeAsMap()],
      await getJsonFromFile('sort_by_id_ascending.json'),
    );
  });

  test('when sorting by Id ascending and then rating descending', () async {
    expect([
      Post.ID.ascending().serializeAsMap(),
      Post.RATING.descending().serializeAsMap()
    ], await getJsonFromFile('multiple_sorting.json'));
  });

  group('compare', () {
    Post post1 = Post(
      id: '123e4567-e89b-12d3-a456-426614174000',
      title: 'post1',
      rating: 1,
      created: TemporalDateTime(DateTime(2020, 01, 01, 10, 30)),
    );

    Post post2 = Post(
      id: '123e4567-e89b-12d3-a456-426614174001',
      title: 'post2',
      rating: 2,
      created: TemporalDateTime(DateTime(2020, 01, 01, 12, 30)),
    );

    Post post2Copy = post2.copyWith();

    Post post3 = post1.copyWith(likeCount: 0);

    Post post4 = post1.copyWith(likeCount: 1);

    Post post4Copy = post4.copyWith();

    PostWithNoToMap postWithNoToMap1 = PostWithNoToMap(
      id: '123e4567-e89b-12d3-a456-426614174000',
      title: 'post1',
      rating: 1,
      created: TemporalDateTime(DateTime(2020, 01, 01, 10, 30)),
    );

    PostWithNoToMap postWithNoToMap2 = PostWithNoToMap(
      id: '123e4567-e89b-12d3-a456-426614174001',
      title: 'post2',
      rating: 2,
      created: TemporalDateTime(DateTime(2020, 01, 01, 12, 30)),
    );

    PostWithNoToMap postWithNoToMap2Copy = postWithNoToMap2.copyWith();

    PostWithNoToMap postWithNoToMap3 = postWithNoToMap1.copyWith(likeCount: 0);

    PostWithNoToMap postWithNoToMap4 = postWithNoToMap1.copyWith(likeCount: 1);

    PostWithNoToMap postWithNoToMap4Copy = postWithNoToMap4.copyWith();

    test('should compare ID fields', () {
      QuerySortBy sortByAsc = Post.ID.ascending();
      QuerySortBy sortByDesc = Post.ID.descending();

      expect(sortByAsc.compare(post1, post2), -1);
      expect(sortByAsc.compare(post2, post1), 1);
      expect(sortByAsc.compare(post2, post2Copy), 0);

      expect(sortByDesc.compare(post1, post2), 1);
      expect(sortByDesc.compare(post2, post1), -1);
      expect(sortByDesc.compare(post2, post2Copy), 0);
    });

    test('should compare ID fields (serialized)', () {
      QuerySortBy sortByAsc = Post.ID.ascending();
      QuerySortBy sortByDesc = Post.ID.descending();

      expect(sortByAsc.compare(postWithNoToMap1, postWithNoToMap2), -1);
      expect(sortByAsc.compare(postWithNoToMap2, postWithNoToMap1), 1);
      expect(sortByAsc.compare(postWithNoToMap2, postWithNoToMap2Copy), 0);

      expect(sortByDesc.compare(postWithNoToMap1, postWithNoToMap2), 1);
      expect(sortByDesc.compare(postWithNoToMap2, postWithNoToMap1), -1);
      expect(sortByDesc.compare(postWithNoToMap2, postWithNoToMap2Copy), 0);
    });

    test('should compare int fields', () {
      QuerySortBy sortByAsc = Post.RATING.ascending();
      QuerySortBy sortByDesc = Post.RATING.descending();

      expect(sortByAsc.compare(post1, post2), -1);
      expect(sortByAsc.compare(post2, post1), 1);
      expect(sortByAsc.compare(post2, post2Copy), 0);

      expect(sortByDesc.compare(post1, post2), 1);
      expect(sortByDesc.compare(post2, post1), -1);
      expect(sortByDesc.compare(post2, post2Copy), 0);
    });

    test('should compare int fields (serialized)', () {
      QuerySortBy sortByAsc = Post.RATING.ascending();
      QuerySortBy sortByDesc = Post.RATING.descending();

      expect(sortByAsc.compare(postWithNoToMap1, postWithNoToMap2), -1);
      expect(sortByAsc.compare(postWithNoToMap2, postWithNoToMap1), 1);
      expect(sortByAsc.compare(postWithNoToMap2, postWithNoToMap2Copy), 0);

      expect(sortByDesc.compare(postWithNoToMap1, postWithNoToMap2), 1);
      expect(sortByDesc.compare(postWithNoToMap2, postWithNoToMap1), -1);
      expect(sortByDesc.compare(postWithNoToMap2, postWithNoToMap2Copy), 0);
    });

    test('should compare bool fields', () {
      QuerySortBy sortByAsc = Post.LIKECOUNT.ascending();
      QuerySortBy sortByDesc = Post.LIKECOUNT.descending();

      expect(sortByAsc.compare(post3, post4), -1);
      expect(sortByAsc.compare(post4, post3), 1);
      expect(sortByAsc.compare(post4, post4Copy), 0);

      expect(sortByDesc.compare(post3, post4), 1);
      expect(sortByDesc.compare(post4, post3), -1);
      expect(sortByDesc.compare(post4, post4Copy), 0);
    });

    test('should compare bool fields (serialized)', () {
      QuerySortBy sortByAsc = Post.LIKECOUNT.ascending();
      QuerySortBy sortByDesc = Post.LIKECOUNT.descending();

      expect(sortByAsc.compare(postWithNoToMap3, postWithNoToMap4), -1);
      expect(sortByAsc.compare(postWithNoToMap4, postWithNoToMap3), 1);
      expect(sortByAsc.compare(postWithNoToMap4, postWithNoToMap4Copy), 0);

      expect(sortByDesc.compare(postWithNoToMap3, postWithNoToMap4), 1);
      expect(sortByDesc.compare(postWithNoToMap4, postWithNoToMap3), -1);
      expect(sortByDesc.compare(postWithNoToMap4, postWithNoToMap4Copy), 0);
    });

    test('should compare string fields', () {
      QuerySortBy sortByAsc = Post.TITLE.ascending();
      QuerySortBy sortByDesc = Post.TITLE.descending();

      expect(sortByAsc.compare(post1, post2), -1);
      expect(sortByAsc.compare(post2, post1), 1);
      expect(sortByAsc.compare(post2, post2Copy), 0);

      expect(sortByDesc.compare(post1, post2), 1);
      expect(sortByDesc.compare(post2, post1), -1);
      expect(sortByDesc.compare(post2, post2Copy), 0);
    });

    test('should compare string fields (serialized)', () {
      QuerySortBy sortByAsc = Post.TITLE.ascending();
      QuerySortBy sortByDesc = Post.TITLE.descending();

      expect(sortByAsc.compare(postWithNoToMap1, postWithNoToMap2), -1);
      expect(sortByAsc.compare(postWithNoToMap2, postWithNoToMap1), 1);
      expect(sortByAsc.compare(postWithNoToMap2, postWithNoToMap2Copy), 0);

      expect(sortByDesc.compare(postWithNoToMap1, postWithNoToMap2), 1);
      expect(sortByDesc.compare(postWithNoToMap2, postWithNoToMap1), -1);
      expect(sortByDesc.compare(postWithNoToMap2, postWithNoToMap2Copy), 0);
    });

    test('should compare date/time fields', () {
      QuerySortBy sortByAsc = Post.CREATED.ascending();
      QuerySortBy sortByDesc = Post.CREATED.descending();

      expect(sortByAsc.compare(post1, post2), -1);
      expect(sortByAsc.compare(post2, post1), 1);
      expect(sortByAsc.compare(post2, post2Copy), 0);

      expect(sortByDesc.compare(post1, post2), 1);
      expect(sortByDesc.compare(post2, post1), -1);
      expect(sortByDesc.compare(post2, post2Copy), 0);
    });

    test('should compare date/time fields (serialized)', () {
      QuerySortBy sortByAsc = Post.CREATED.ascending();
      QuerySortBy sortByDesc = Post.CREATED.descending();

      expect(sortByAsc.compare(postWithNoToMap1, postWithNoToMap2), -1);
      expect(sortByAsc.compare(postWithNoToMap2, postWithNoToMap1), 1);
      expect(sortByAsc.compare(postWithNoToMap2, postWithNoToMap2Copy), 0);

      expect(sortByDesc.compare(postWithNoToMap1, postWithNoToMap2), 1);
      expect(sortByDesc.compare(postWithNoToMap2, postWithNoToMap1), -1);
      expect(sortByDesc.compare(postWithNoToMap2, postWithNoToMap2Copy), 0);
    });

    test('should handle null values', () {
      QuerySortBy sortByAsc = Post.LIKECOUNT.ascending();
      QuerySortBy sortByDesc = Post.LIKECOUNT.descending();

      expect(sortByAsc.compare(post1, post3), -1);
      expect(sortByAsc.compare(post1, post4), -1);
      expect(sortByAsc.compare(post1, post2), 0);

      expect(sortByDesc.compare(post1, post3), 1);
      expect(sortByDesc.compare(post1, post4), 1);
      expect(sortByDesc.compare(post1, post2), 0);
    });

    test('should handle null values (serialized)', () {
      QuerySortBy sortByAsc = Post.LIKECOUNT.ascending();
      QuerySortBy sortByDesc = Post.LIKECOUNT.descending();

      expect(sortByAsc.compare(postWithNoToMap1, postWithNoToMap3), -1);
      expect(sortByAsc.compare(postWithNoToMap1, postWithNoToMap4), -1);
      expect(sortByAsc.compare(postWithNoToMap1, postWithNoToMap2), 0);

      expect(sortByDesc.compare(postWithNoToMap1, postWithNoToMap3), 1);
      expect(sortByDesc.compare(postWithNoToMap1, postWithNoToMap4), 1);
      expect(sortByDesc.compare(postWithNoToMap1, postWithNoToMap2), 0);
    });
  });
}
