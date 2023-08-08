// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

import '../models/ModelProvider.dart';
import '../util/util.dart';

class GraphQLQueryExamples extends StatelessWidget {
  const GraphQLQueryExamples({
    super.key,
    required this.setResults,
    this.authMode = APIAuthorizationType.userPools,
    this.blog,
  });

  final APIAuthorizationType authMode;
  final Blog? blog;
  final void Function(String) setResults;

  /// Get a list of blogs with model query helper
  Future<void> queryBlogs() async {
    final req = ModelQueries.list(
      Blog.classType,
      authorizationMode: authMode,
    );

    final operation = Amplify.API.query(request: req);

    final response = await operation.response;
    setResults(handleResponse(response));
  }

  /// Get a list of posts and parent blogs with model query helper
  Future<void> queryPostsById() async {
    final req = ModelQueries.list(
      Post.classType,
      authorizationMode: authMode,
      where: Post.BLOG.eq(blog!.id),
    );

    final operation = Amplify.API.query(request: req);

    final response = await operation.response;
    setResults(handleResponse(response));
  }

  /// Get a list of Comments with raw GraphQL and their nested Post and Blog
  /// & decode the response into model objects
  Future<void> queryComments() async {
    const document = r'''
      query MyQuery {
        listComments {
          items {
            id
            owner
            content
            post {
              title
              id
              blog {
                id
                name
              }
            }
          }
        }
      }
    ''';

    final req = GraphQLRequest<PaginatedResult<Comment>>(
      document: document,
      // The response from this query will be a list of Comments
      // these two parameters are required to decode the response
      // into type safe model objects.
      // Without them the response will be returned as a Map<String, dynamic>

      decodePath: 'listComments',
      modelType: const PaginatedModelType(Comment.classType),
    );

    final operation = Amplify.API.query(request: req);

    final response = await operation.response;
    setResults(handleResponse(response));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'List',
          textAlign: TextAlign.left,
        ),
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: 12,
          runSpacing: 12,
          children: [
            apiButton(
              onPressed: queryBlogs,
              btnColor: Colors.green,
              text: 'Blogs',
            ),
            apiButton(
              onPressed: blog != null ? queryPostsById : null,
              btnColor: Colors.green,
              text: 'Posts by BlogID',
            ),
            apiButton(
              onPressed: queryComments,
              btnColor: Colors.green,
              text: 'Comments',
            ),
          ],
        ),
      ],
    );
  }
}
