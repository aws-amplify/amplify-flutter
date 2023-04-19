// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

import '../models/ModelProvider.dart';
import '../util/util.dart';

class GraphQLGetByIdExamples extends StatelessWidget {
  const GraphQLGetByIdExamples({
    super.key,
    required this.setResults,
    required this.setBlogID,
    required this.setPostID,
    required this.setCommentID,
    this.blogID,
    this.postID,
    this.commentID,
    this.authMode = APIAuthorizationType.userPools,
  });

  final APIAuthorizationType authMode;
  final ModelIdentifier? blogID;
  final ModelIdentifier? postID;
  final ModelIdentifier? commentID;
  final void Function(ModelIdentifier) setBlogID;
  final void Function(ModelIdentifier) setPostID;
  final void Function(ModelIdentifier) setCommentID;
  final void Function(String) setResults;

  // Returns a blog with the id given by the user
  Future<void> getBlog() async {
    if (blogID == null) {
      setResults('No blog id provided');
      return;
    }
    final req = ModelQueries.get(
      Blog.classType,
      blogID!,
      authorizationMode: authMode,
    );

    final operation = Amplify.API.query(request: req);

    final response = await operation.response;
    setResults(handleResponse(response));
  }

  // Returns a post with the id given by the user
  Future<void> getPost() async {
    if (postID == null) {
      setResults('No post id provided');
      return;
    }
    final req = ModelQueries.get(
      Post.classType,
      postID!,
      authorizationMode: authMode,
    );

    final operation = Amplify.API.query(request: req);

    final response = await operation.response;
    setResults(handleResponse(response));
  }

  // Returns a comment by id with nested parents post and blog
  Future<void> getComment() async {
    if (commentID == null) {
      setResults('No comment id provided');
      return;
    }
    const document = r'''
      query MyQuery($id: ID!) {
        getComment(id: $id) {
          id
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
    ''';
    final req = GraphQLRequest<Comment>(
      document: document,
      variables: commentID!.serializeAsMap(),
      authorizationMode: authMode,
      // The response from this query will be a Comment
      // these two parameters are required to decode the response
      // into type safe model objects.
      // Without them the response will be returned as a Map<String, dynamic>
      modelType: Comment.classType,
      decodePath: 'getComment',
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
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Enter Blog ID',
          ),
          onChanged: (String newValue) {
            setBlogID(BlogModelIdentifier(id: newValue));
          },
        ),
        apiButton(
          onPressed: getBlog,
          text: 'Get Blog',
        ),
        const SizedBox(height: 10),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Enter Post ID',
          ),
          onChanged: (String newValue) {
            setPostID(PostModelIdentifier(id: newValue));
          },
        ),
        apiButton(
          onPressed: getPost,
          text: 'Get Post',
        ),
        const SizedBox(height: 10),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Enter Comment ID',
          ),
          onChanged: (String newValue) {
            setCommentID(CommentModelIdentifier(id: newValue));
          },
        ),
        apiButton(
          onPressed: getComment,
          text: 'Get Comment',
        ),
      ],
    );
  }
}
