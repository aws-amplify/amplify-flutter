// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api_example/amplifyconfiguration.dart';
import 'package:amplify_api_example/models/ModelProvider.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

const _subscriptionTimeoutInterval = 5;

TestUser? testUser;

// Keep track of what is created here so it can be deleted.
final blogCache = <Blog>[];
final postCache = <Post>[];

class TestUser {
  TestUser({
    String? username,
    String? password,
  })  : _username = 'testUser${uuid()}',
        _password = uuid(secure: true);

  final String _username;
  final String _password;

  Future<void> signUp() async {
    await signOut();
    final testEmail = '$_username@amazon.com';
    final result = await Amplify.Auth.signUp(
      username: _username,
      password: _password,
      options: CognitoSignUpOptions(
        userAttributes: {CognitoUserAttributeKey.email: testEmail},
      ),
    );
    if (!result.isSignUpComplete) {
      throw Exception('Unable to sign up test user.');
    }
  }

  Future<void> signOut() async {
    final session = await Amplify.Auth.fetchAuthSession();
    if (!session.isSignedIn) return;
    await Amplify.Auth.signOut();
  }

  /// No-op if already signed in.
  Future<void> signIn() async {
    final session = await Amplify.Auth.fetchAuthSession();
    if (session.isSignedIn) return;
    final result = await Amplify.Auth.signIn(
      username: _username,
      password: _password,
    );
    if (!result.isSignedIn) {
      throw Exception('Unable to sign in test user.');
    }
  }

  Future<void> delete() async {
    final session = await Amplify.Auth.fetchAuthSession();
    if (!session.isSignedIn) await signInTestUser();
    await Amplify.Auth.deleteUser();
    testUser = null;
  }
}

Future<void> configureAmplify() async {
  if (!Amplify.isConfigured) {
    await Amplify.addPlugins([
      AmplifyAuthCognito(
        credentialStorage: AmplifySecureStorage(
          config: AmplifySecureStorageConfig(
            scope: 'api',
            macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
          ),
        ),
      ),
      AmplifyAPI(modelProvider: ModelProvider.instance)
    ]);
    await Amplify.configure(amplifyconfig);
  }
}

Future<void> signUpTestUser() async {
  await signOutTestUser();

  testUser = TestUser();
  await testUser!.signUp();
}

/// No-op if already signed in.
Future<void> signInTestUser() async {
  if (testUser == null) {
    throw const InvalidStateException(
      'No test user to sign in.',
      recoverySuggestion: 'Ensure test user signed up.',
    );
  }
  await testUser!.signIn();
}

// No-op if not signed in.
Future<void> signOutTestUser() async {
  await testUser?.signOut();
}

Future<void> deleteTestUser() async {
  if (testUser == null) {
    throw const InvalidStateException(
      'No test user to delete.',
      recoverySuggestion: 'Ensure test user signed up.',
    );
  }
  await testUser!.delete();
}

// declare utility which creates blog with title as parameter
Future<Blog> addBlog(String name) async {
  final request = ModelMutations.create(
    Blog(name: name),
    authorizationMode: APIAuthorizationType.userPools,
  );

  final response = await Amplify.API.mutate(request: request).response;
  expect(response, hasNoGraphQLErrors);
  final blog = response.data!;
  blogCache.add(blog);
  return blog;
}

/// Run a mutation on [Blog] with a partial selection set.
///
/// This is used to trigger an error on subscriptions listening for the
/// full selection set.
Future<GraphQLResponse<String>> runPartialMutation(String name) async {
  const graphQLDocument = r'''mutation MyMutation($name: String!) {
      createBlog(input: {name: $name}) {
        id
        name
      }
    }''';

  final request = GraphQLRequest<String>(
    document: graphQLDocument,
    variables: <String, dynamic>{'name': name},
    authorizationMode: APIAuthorizationType.userPools,
  );
  final response = await Amplify.API.mutate(request: request).response;
  expect(response, hasNoGraphQLErrors);
  // Add to cache so it can be cleaned up with other test artifacts.
  final responseJson = json.decode(response.data!) as Map<String, dynamic>;
  final blogFromResponse =
      Blog.fromJson(responseJson['createBlog'] as Map<String, dynamic>);
  blogCache.add(blogFromResponse);

  return response;
}

Future<Post> addPostAndBlog(
  String title,
  int rating,
) async {
  const name = 'Integration Test Blog with a post - create';
  final createdBlog = await addBlog(name);

  final post = Post(title: title, rating: rating, blog: createdBlog);
  final createPostReq = ModelMutations.create(
    post,
    authorizationMode: APIAuthorizationType.userPools,
  );
  final createPostRes =
      await Amplify.API.mutate(request: createPostReq).response;
  expect(createPostRes, hasNoGraphQLErrors);
  final data = createPostRes.data;
  if (data == null) {
    throw Exception(
      'Null response while creating post. Response errors: ${createPostRes.errors}',
    );
  }
  postCache.add(data);

  return data;
}

Future<Blog?> deleteBlog(String id) async {
  final request = ModelMutations.deleteById(
    Blog.classType,
    id,
    authorizationMode: APIAuthorizationType.userPools,
  );
  final res = await Amplify.API.mutate(request: request).response;
  expect(res, hasNoGraphQLErrors);
  blogCache.removeWhere((blog) => blog.id == id);
  return res.data;
}

Future<Post?> deletePost(String id) async {
  final request = ModelMutations.deleteById(
    Post.classType,
    id,
    authorizationMode: APIAuthorizationType.userPools,
  );
  final res = await Amplify.API.mutate(request: request).response;
  expect(res, hasNoGraphQLErrors);
  postCache.removeWhere((post) => post.id == id);
  return res.data;
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
  final establishedCompleter = Completer<void>();
  final stream = Amplify.API.subscribe<T>(
    subscriptionRequest,
    onEstablished: establishedCompleter.complete,
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
///
/// `eventFilter` is used to ensure completer only called for specific events
/// as the subscription may get events from other client mutations (and is likely
/// in CI).
Future<GraphQLResponse<T>> establishSubscriptionAndMutate<T>(
  GraphQLRequest<T> subscriptionRequest,
  Future<void> Function() mutationFunction, {
  required bool Function(GraphQLResponse<T>) eventFilter,
  bool canFail = false,
}) async {
  final dataCompleter = Completer<GraphQLResponse<T>>();
  // With stream established, exec callback with stream events.
  final subscription = await getEstablishedSubscriptionOperation<T>(
    subscriptionRequest,
    (event) {
      if (!canFail && event.hasErrors) {
        fail('subscription errors: ${event.errors}');
      }
      if (!dataCompleter.isCompleted && (eventFilter(event))) {
        dataCompleter.complete(event);
      }
    },
  );
  await mutationFunction();
  final response = await dataCompleter.future.timeout(
    const Duration(seconds: _subscriptionTimeoutInterval),
  );

  await subscription.cancel();
  return response;
}

final hasNoGraphQLErrors = predicate<GraphQLResponse<dynamic>>(
  (GraphQLResponse<dynamic> response) =>
      !response.hasErrors && response.data != null,
  'Has no GraphQL Errors',
);

/// Hub Event Matchers
final connectedHubEvent = isA<SubscriptionHubEvent>().having(
  (event) => event.status,
  'status',
  SubscriptionStatus.connected,
);

final connectingHubEvent = isA<SubscriptionHubEvent>().having(
  (event) => event.status,
  'status',
  SubscriptionStatus.connecting,
);

final disconnectedHubEvent = isA<SubscriptionHubEvent>().having(
  (event) => event.status,
  'status',
  SubscriptionStatus.disconnected,
);

final pendingDisconnectedHubEvent = isA<SubscriptionHubEvent>().having(
  (event) => event.status,
  'status',
  SubscriptionStatus.pendingDisconnected,
);

final failedHubEvent = isA<SubscriptionHubEvent>().having(
  (event) => event.status,
  'status',
  SubscriptionStatus.failed,
);
