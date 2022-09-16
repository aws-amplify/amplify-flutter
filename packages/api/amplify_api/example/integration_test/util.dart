/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'dart:async';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api_example/amplifyconfiguration.dart';
import 'package:amplify_api_example/models/ModelProvider.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

const _subscriptionTimeoutInterval = 5;

String? testUsername;
String? testPassword;

// Keep track of what is created here so it can be deleted.
final blogCache = <Blog>[];
final postCache = <Post>[];

Future<void> configureAmplify() async {
  if (!Amplify.isConfigured) {
    await Amplify.addPlugins([
      AmplifyAuthCognito(),
      AmplifyAPI(modelProvider: ModelProvider.instance)
    ]);
    await Amplify.configure(amplifyconfig);
  }
}

Future<void> signUpTestUser() async {
  await signOutTestUser();

  testUsername = 'testUser${uuid()}';
  testPassword = uuid(secure: true);
  final testEmail = '$testUsername@amazon.com';
  final result = await Amplify.Auth.signUp(
    username: testUsername!,
    password: testPassword!,
    options: CognitoSignUpOptions(
      userAttributes: {CognitoUserAttributeKey.email: testEmail},
    ),
  );
  if (!result.isSignUpComplete) {
    throw const AmplifyException('Unable to sign up test user.');
  }
}

/// No-op if already signed in.
Future<void> signInTestUser() async {
  if (testUsername == null || testPassword == null) {
    throw const AmplifyException(
      'Test username or password not configured.',
      recoverySuggestion: 'call signUpTestUser()',
    );
  }
  final session = await Amplify.Auth.fetchAuthSession();
  if (session.isSignedIn) return;
  final result = await Amplify.Auth.signIn(
    username: testUsername!,
    password: testPassword!,
  );
  if (!result.isSignedIn) {
    throw const AmplifyException('Unable to sign in test user.');
  }
}

// No-op if not signed in.
Future<void> signOutTestUser() async {
  final session = await Amplify.Auth.fetchAuthSession();
  if (!session.isSignedIn) return;
  await Amplify.Auth.signOut();
}

Future<void> deleteTestUser() async {
  final session = await Amplify.Auth.fetchAuthSession();
  if (!session.isSignedIn) await signInTestUser();
  await Amplify.Auth.deleteUser();
  testUsername = null;
  testPassword = null;
}

// declare utility which creates blog with title as parameter
Future<Blog> addBlog(String name) async {
  final request = await authorizeRequestForUserPools(
    ModelMutations.create(Blog(name: name)),
  );

  var r = Amplify.API.mutate(request: request);

  var response = await r.response;
  expect(response, hasNoGraphQLErrors);
  final blog = response.data!;
  blogCache.add(blog);
  return blog;
}

Future<Post> addPostAndBlog(
  String title,
  int rating,
) async {
  String name = 'Integration Test Blog with a post - create';
  Blog createdBlog = await addBlog(name);

  Post post = Post(title: title, rating: rating, blog: createdBlog);
  final createPostReq = await authorizeRequestForUserPools(
    ModelMutations.create(post),
  );
  final createPostRes =
      await Amplify.API.mutate(request: createPostReq).response;
  expect(createPostRes, hasNoGraphQLErrors);
  Post? data = createPostRes.data;
  if (data == null) {
    throw Exception(
      'Null response while creating post. Response errors: ${createPostRes.errors}',
    );
  }

  return data;
}

Future<GraphQLRequest<T>> authorizeRequestForUserPools<T>(
    GraphQLRequest<T> request) async {
  // TODO(ragingsquirrel3): convert to authorizationType parameter when implemented.
  final authSession =
      await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
  final accessToken = authSession.userPoolTokens?.accessToken.raw;
  if (accessToken == null) {
    throw const AmplifyException(
      'Could not get access token from cognito.',
      recoverySuggestion: 'Ensure test user signed in.',
    );
  }
  final headers = {AWSHeaders.authorization: accessToken};

  return GraphQLRequest<T>(
    document: request.document,
    variables: request.variables,
    modelType: request.modelType,
    decodePath: request.decodePath,
    headers: headers,
  );
}

GraphQLRequest<T> authorizeRequestForApiKey<T>(
  GraphQLRequest<T> request,
  String apiKey,
) {
  // TODO(ragingsquirrel3): convert to authorizationType parameter when implemented.
  final headers = {
    AWSHeaders.authorization: APIAuthorizationType.none.rawValue,
    'X-Api-Key': apiKey
  };

  return GraphQLRequest<T>(
    document: request.document,
    variables: request.variables,
    modelType: request.modelType,
    decodePath: request.decodePath,
    headers: headers,
  );
}

Future<Blog?> deleteBlog(String id) async {
  final request = await authorizeRequestForUserPools(
    ModelMutations.deleteById(Blog.classType, id),
  );
  final res = await Amplify.API.mutate(request: request).response;
  expect(res, hasNoGraphQLErrors);
  blogCache.removeWhere((blog) => blog.id == id);
  return res.data;
}

Future<void> deletePost(String id) async {
  final request = await authorizeRequestForUserPools(
    ModelMutations.deleteById(Post.classType, id),
  );
  final res = await Amplify.API.mutate(request: request).response;
  expect(res, hasNoGraphQLErrors);
  postCache.removeWhere((post) => post.id == id);
}

Future<void> deleteTestModels() async {
  await Future.wait(blogCache.map((blog) => deleteBlog(blog.id)));
  await Future.wait(postCache.map((post) => deletePost(post.id)));
}

/// Wait for subscription established for given request.
Future<StreamSubscription<GraphQLResponse<T>>>
    getEstablishedSubscriptionOperation<T>(
  GraphQLRequest<T> subscriptionRequest,
  void Function(GraphQLResponse<T>) onData,
) async {
  Completer<void> establishedCompleter = Completer();
  final stream = Amplify.API.subscribe<T>(
    subscriptionRequest,
    onEstablished: () {
      establishedCompleter.complete();
    },
  );
  final subscription = stream.listen(
    onData,
    onError: (Object e) => fail('Error in subscription stream: $e'),
  );

  await establishedCompleter.future
      .timeout(const Duration(seconds: _subscriptionTimeoutInterval));
  return subscription;
}

/// Establish subscription for request, do the mutationFunction, then wait
/// for the stream event, cancel the operation, return response from event.
Future<GraphQLResponse<T?>> establishSubscriptionAndMutate<T>(
  GraphQLRequest<T> subscriptionRequest,
  Future<void> Function() mutationFunction,
) async {
  Completer<GraphQLResponse<T?>> dataCompleter = Completer();
  // With stream established, exec callback with stream events.
  final subscription = await getEstablishedSubscriptionOperation<T>(
    subscriptionRequest,
    (event) {
      if (event.hasErrors) {
        fail('subscription errors: ${event.errors}');
      }
      dataCompleter.complete(event);
    },
  );
  await mutationFunction();
  final response = await dataCompleter.future.timeout(
    const Duration(seconds: _subscriptionTimeoutInterval),
  );

  await subscription.cancel();
  return response;
}

Matcher hasNoGraphQLErrors<T>(GraphQLResponse<T> response) {
  return predicate(
    (GraphQLResponse<T> response) =>
        !response.hasErrors && response.data != null,
    'Has no GraphQL Errors',
  );
}
