// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api_dart/amplify_api_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:test/test.dart';

import 'test_models/legacy/ModelProvider.dart';
import 'util.dart';

final _deepEquals = const DeepCollectionEquality().equals;

// Local variable types used as a type check.
// ignore_for_file: omit_local_variable_types

class MockAmplifyAPI extends AmplifyAPIDart {
  MockAmplifyAPI({
    super.modelProvider,
  });

  @override
  void registerAuthProvider(APIAuthProvider authProvider) {}

  @override
  // ignore: must_call_super
  Future<void> addPlugin({
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {}
}

/// Used to test that an older codegen file (generated without CPK) can be made
/// to use model helpers.
@immutable
class ManualBlogModelIdentifier implements ModelIdentifier<Blog> {
  /// Create an instance of ManualBlogModelIdentifier using [id] the primary key.
  const ManualBlogModelIdentifier({required this.id});
  final String id;

  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{'id': id});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
      .entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() => 'ManualBlogModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ManualBlogModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}

void main() {
  group('with ModelProvider and legacy schema (without CPK)', () {
    setUpAll(() async {
      await Amplify.reset();
      await Amplify.addPlugin(
        // needed to fetch the schema from within the helper
        MockAmplifyAPI(modelProvider: ModelProvider.instance),
      );
    });
    const blogSelectionSet = 'id name createdAt updatedAt';

    group('ModelQueries', () {
      test('ModelQueries.get() should build a valid request', () {
        final id = uuid();
        const expected =
            'query getBlog(\$id: ID!) { getBlog(id: \$id) { $blogSelectionSet } }';

        final GraphQLRequest<Blog> req = ModelQueries.get<Blog>(
          Blog.classType,
          ManualBlogModelIdentifier(id: id),
        );

        expect(req.document, expected);
        expect(_deepEquals(req.variables, {'id': id}), isTrue);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, 'getBlog');
      });
    });

    group('ModelMutations', () {
      test('ModelMutations.create() should build a valid request', () {
        final id = uuid();
        const name = 'Test Blog';

        final Blog blog = Blog(id: id, name: name);
        final expectedVars = {
          'input': {
            'id': id,
            'name': name,
          }
        };
        const expectedDoc =
            'mutation createBlog(\$input: CreateBlogInput!, \$condition:  ModelBlogConditionInput) { createBlog(input: \$input, condition: \$condition) { $blogSelectionSet } }';

        final GraphQLRequest<Blog> req = ModelMutations.create<Blog>(blog);

        expect(req.document, expectedDoc);
        expect(_deepEquals(req.variables, expectedVars), isTrue);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, 'createBlog');
      });

      test(
          'ModelMutations.create() should build a valid request for a model with a parent',
          () {
        final blogId = uuid();
        const name = 'Test Blog';
        final Blog blog = Blog(id: blogId, name: name);

        final postId = uuid();
        const title = 'Lorem Ipsum';
        const rating = 1;
        final Post post =
            Post(id: postId, title: title, rating: rating, blog: blog);

        final expectedVars = {
          'input': <String, dynamic>{
            'id': postId,
            'title': title,
            'rating': rating,
            'blogID': blogId
          }
        };
        const expectedDoc =
            'mutation createPost(\$input: CreatePostInput!, \$condition:  ModelPostConditionInput) { createPost(input: \$input, condition: \$condition) { id title rating createdAt updatedAt blog { $blogSelectionSet } blogID } }';
        final GraphQLRequest<Post> req = ModelMutations.create<Post>(post);

        expect(req.document, expectedDoc);
        expect(_deepEquals(req.variables, expectedVars), isTrue);
        expect(req.modelType, Post.classType);
        expect(req.decodePath, 'createPost');
      });

      test(
          'ModelMutations.create() should not include parent ID in variables if not in model',
          () {
        final postId = uuid();
        const title = 'Lorem Ipsum';
        const rating = 1;
        final Post post = Post(id: postId, title: title, rating: rating);
        final GraphQLRequest<Post> req = ModelMutations.create<Post>(post);
        expect(
          (req.variables['input'] as Map<String, dynamic>)
              .containsKey('blogID'),
          isFalse,
        );
      });
    });

    group('query predicates', () {
      test('query by ID', () {
        const blogId = 'blog-123';
        final expectedFilter = {
          'id': {'eq': blogId}
        };

        testQueryPredicateTranslation(
          Blog.ID.eq(blogId),
          expectedFilter,
          modelType: Blog.classType,
        );
      });

      test('query child by parent ID', () {
        const blogId = 'blog-123';
        final expectedFilter = {
          'blogID': {'eq': blogId}
        };

        testQueryPredicateTranslation(
          Post.BLOG.eq(blogId),
          expectedFilter,
          modelType: Post.classType,
        );
      });

      test('query by legacy QueryField definition', () {
        const blogId = 'blog-123';
        final expectedFilter = {
          'id': {'eq': blogId}
        };

        testQueryPredicateTranslation(
          const QueryField<String>(fieldName: 'blog.id').eq(blogId),
          expectedFilter,
          modelType: Blog.classType,
        );
      });
    });
  });
}
