// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_api_example/models/Blog.dart';
import 'package:amplify_api_example/models/Post.dart';
import 'package:amplify_api_example/widgets/auth_mode.dart';
import 'package:amplify_api_example/widgets/create.dart';
import 'package:amplify_api_example/widgets/get_by_id.dart';
import 'package:amplify_api_example/widgets/query.dart';
import 'package:amplify_api_example/widgets/subscribe.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

/// Amplify Flutter GraphQL API Example
/// In the example below, we demonstrate ways to interact with the API Category.
/// Each method contains a unique operation for different use cases.

class GraphQLApiView extends StatefulWidget {
  const GraphQLApiView({super.key, this.isAmplifyConfigured = false});
  final bool isAmplifyConfigured;

  @override
  State<GraphQLApiView> createState() => _GraphQLApiViewState();
}

class _GraphQLApiViewState extends State<GraphQLApiView> {
  String _result = '';
  StreamSubscription<GraphQLResponse<Blog>>? _subscription;
  StreamSubscription<GraphQLResponse<Post>>? _subscriptionByID;
  void Function()? _unsubscribe;
  GraphQLOperation<dynamic>? _lastOperation;

  ModelIdentifier? _selectedBlog;
  ModelIdentifier? _selectedPost;
  ModelIdentifier? _selectedComment;

  APIAuthorizationType _authorizationType = APIAuthorizationType.userPools;

  Blog? _blog;
  Post? _post;

  // Cancel the last operation in flight
  void onCancelPressed() async {
    try {
      await _lastOperation?.cancel();
    } on Exception catch (e) {
      print('Cancel FAILED');
      print(e.toString());
    }
  }

  void setResults(String val) {
    setState(() {
      _result = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Align(
          child: Container(
            constraints: const BoxConstraints(minWidth: 100, maxWidth: 500),
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                GraphQLQueryExamples(
                  setResults: setResults,
                  authMode: _authorizationType,
                  blog: _blog,
                ),
                const SizedBox(height: 10),
                GraphQLCreateExamples(
                  setResults: setResults,
                  authMode: _authorizationType,
                  blog: _blog,
                  post: _post,
                  setBlog: (Blog blog) => setState(() => _blog = blog),
                  setPost: (Post post) => setState(() => _post = post),
                ),
                const SizedBox(height: 10),
                GraphQLSubscriptionsExamples(
                  authMode: _authorizationType,
                  blog: _blog,
                  post: _post,
                  setResults: setResults,
                  subscription: _subscription,
                  subscriptionByID: _subscriptionByID,
                  unsubscribe: _unsubscribe,
                  setUnsubscribe: (val) => setState(() {
                    _unsubscribe = val;
                    if (_unsubscribe == null) {
                      _subscription = null;
                      _subscriptionByID = null;
                    }
                  }),
                  setSubscription: (sub) => setState(() => _subscription = sub),
                  setSubscriptionByID: (sub) =>
                      setState(() => _subscriptionByID = sub),
                ),
                const SizedBox(height: 10),
                GraphQLAuthMode(
                  authMode: _authorizationType,
                  setAuthType: (val) =>
                      setState(() => _authorizationType = val),
                  authTypes: const [
                    APIAuthorizationType.userPools,
                    APIAuthorizationType.iam,
                    APIAuthorizationType.apiKey,
                    APIAuthorizationType.none,
                  ],
                ),
                const SizedBox(height: 10),
                GraphQLGetByIdExamples(
                  setResults: setResults,
                  authMode: _authorizationType,
                  blogID: _selectedBlog,
                  postID: _selectedPost,
                  commentID: _selectedComment,
                  setBlogID: (val) => setState(() => _selectedBlog = val),
                  setPostID: (val) => setState(() => _selectedPost = val),
                  setCommentID: (val) => setState(() => _selectedComment = val),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.black,
        ),
        const Text(
          'Results',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          '\n$_result\n',
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
