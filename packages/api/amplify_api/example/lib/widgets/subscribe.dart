// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

import '../models/ModelProvider.dart';
import '../util/util.dart';

class GraphQLSubscriptionsExamples extends StatelessWidget {
  const GraphQLSubscriptionsExamples({
    super.key,
    required this.setResults,
    required this.setSubscription,
    required this.setSubscriptionByID,
    required this.setUnsubscribe,
    required this.unsubscribe,
    required this.blog,
    required this.post,
    required this.subscription,
    required this.subscriptionByID,
    this.authMode = APIAuthorizationType.userPools,
  });

  final APIAuthorizationType authMode;
  final Blog? blog;
  final Post? post;
  final StreamSubscription<GraphQLResponse<Blog>>? subscription;
  final StreamSubscription<GraphQLResponse<Post>>? subscriptionByID;
  final void Function(String) setResults;
  final void Function(StreamSubscription<GraphQLResponse<Blog>>)
      setSubscription;
  final void Function(StreamSubscription<GraphQLResponse<Post>>)
      setSubscriptionByID;
  final void Function(void Function()?)? setUnsubscribe;
  final void Function()? unsubscribe;

  /// Subscribe to new blogs
  Future<void> subscribe() async {
    if (subscription != null) {
      return;
    }

    final subscriptionReq = ModelSubscriptions.onCreate(
      Blog.classType,
      authorizationMode: authMode,
    );

    final operation = Amplify.API.subscribe(
      subscriptionReq,
      onEstablished: () => print('Subscription established'),
    );

    final streamSubscription = operation.listen(
      handleSubscriptionEvents,
      onError: (Object error) => print(
        'Error in GraphQL subscription: $error',
      ),
    );

    setSubscription(streamSubscription);
    setUnsubscribe!(streamSubscription.cancel);
  }

  /// Subscribe to new posts the last created blog ID
  /// Requires a blog to be created first
  Future<void> subscribeByID() async {
    if (subscriptionByID != null) {
      return;
    }

    final subscriptionReq = ModelSubscriptions.onCreate(
      Post.classType,
      where: Post.BLOG.eq(blog!.id),
      authorizationMode: authMode,
    );

    final operation = Amplify.API.subscribe(
      subscriptionReq,
      onEstablished: () => print('Subscription established'),
    );

    final streamSubscription = operation.listen(
      handleSubscriptionEvents,
      onError: (Object error) => print(
        'Error in GraphQL subscription: $error',
      ),
    );
    setSubscriptionByID(streamSubscription);
    setUnsubscribe!(streamSubscription.cancel);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Subscriptions',
          textAlign: TextAlign.left,
        ),
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: 12,
          runSpacing: 12,
          children: [
            apiButton(
              onPressed: subscription == null ? subscribe : null,
              text: 'Blogs',
            ),
            apiButton(
              onPressed: subscriptionByID == null && blog != null
                  ? subscribeByID
                  : null,
              text: 'Posts By BlogID',
            ),
            apiButton(
              onPressed: unsubscribe != null
                  ? () {
                      unsubscribe!.call();
                      setUnsubscribe!(null);
                    }
                  : null,
              text: 'Unsubscribe',
            ),
          ],
        ),
      ],
    );
  }
}
