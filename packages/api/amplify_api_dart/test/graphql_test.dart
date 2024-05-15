// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_api_dart/amplify_api_dart.dart';
import 'package:amplify_api_dart/src/graphql/providers/app_sync_api_key_auth_provider.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/blocs/web_socket_bloc.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/state/web_socket_state.dart';
import 'package:amplify_api_dart/src/util/amplify_api_config.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:aws_common/testing.dart';
import 'package:collection/collection.dart';
import 'package:test/test.dart';

import 'mocks.dart';
import 'test_data/fake_amplify_configuration.dart';
import 'test_models/ModelProvider.dart';
import 'util.dart';

final _deepEquals = const DeepCollectionEquality().equals;

final mockHttpClient = MockAWSHttpClient((request, _) async {
  if (request.headers[xApiKey] != 'abc123' &&
      request.headers[AWSHeaders.authorization] == testFunctionToken) {
    // Not authorized w API key but has lambda auth token, mock that auth mode
    // does not work for this query.
    return AWSHttpResponse(
      statusCode: 401,
      body: utf8.encode(json.encode(expectedAuthErrorResponseBody)),
    );
  }
  if (request.headers[xApiKey] != 'abc123') {
    // Not expected in test.
    throw Exception('Unexpected auth error in test HTTP client');
  }
  final body = await utf8.decodeStream(request.body);
  if (body.contains('getBlog')) {
    return AWSHttpResponse(
      statusCode: 200,
      body: utf8.encode(json.encode(expectedModelQueryResult)),
    );
  }
  if (body.contains('TestMutate')) {
    return AWSHttpResponse(
      statusCode: 400,
      body: utf8.encode(json.encode(expectedMutateSuccessResponseBody)),
    );
  }
  if (body.contains('TestError')) {
    return AWSHttpResponse(
      statusCode: 400,
      body: utf8.encode(json.encode(expectedErrorResponseBody)),
    );
  }
  if (body.contains('createModelWithCustomType')) {
    return AWSHttpResponse(
      statusCode: 200,
      body: utf8
          .encode(json.encode(expectedModelWithCustomTypeSuccessResponseBody)),
    );
  }

  return AWSHttpResponse(
    statusCode: 400,
    body: utf8.encode((json.encode(expectedQuerySuccessResponseBody))),
  );
});

MockWebSocketService? mockWebSocketService;

WebSocketBloc? mockWebSocketBloc;

class MockAmplifyAPI extends AmplifyAPIDart {
  MockAmplifyAPI({
    super.options,
  });

  @override
  WebSocketBloc createWebSocketBloc(EndpointConfig endpoint) {
    return mockWebSocketBloc!;
  }
}

void main() {
  late StreamController<ApiHubEvent> hubEventsController;
  late Stream<ApiHubEvent> hubEvents;

  setUp(() async {
    final api = MockAmplifyAPI(
      options: APIPluginOptions(
        authProviders: [const CustomFunctionProvider()],
        baseHttpClient: mockHttpClient,
        modelProvider: ModelProvider.instance,
      ),
    );

    await Amplify.addPlugin(api);
    await Amplify.configure(amplifyconfig);

    hubEventsController = StreamController.broadcast();
    hubEvents = hubEventsController.stream;
    Amplify.Hub.listen(HubChannel.Api, hubEventsController.add);
  });

  tearDown(() async {
    await hubEventsController.close();
    Amplify.Hub.close();
    mockWebSocketBloc = null;
    mockWebSocketService = null;
    await Amplify.reset();
  });

  group('Vanilla GraphQL', () {
    test('Query returns proper response.data', () async {
      const graphQLDocument = ''' query TestQuery {
          listBlogs {
            items {
              id
              name
              createdAt
            }
          }
        } ''';
      final req = GraphQLRequest<String>(
        document: graphQLDocument,
        variables: {},
      );

      final operation = Amplify.API.query(request: req);
      final res = await operation.response;

      final expected = json.encode(expectedQuerySuccessResponseBody['data']);

      expect(res.data, equals(expected));
      expect(res.errors, isEmpty);
    });

    test('Query returns proper response.data with dynamic type', () async {
      const graphQLDocument = ''' query TestQuery {
          listBlogs {
            items {
              id
              name
              createdAt
            }
          }
        } ''';
      final req = GraphQLRequest<dynamic>(
        document: graphQLDocument,
        variables: {},
      );

      final operation = Amplify.API.query(request: req);
      final res = await operation.response;

      final expected = json.encode(expectedQuerySuccessResponseBody['data']);

      expect(res.data, equals(expected));
      expect(res.errors, isEmpty);
    });

    test('Mutate returns proper response.data', () async {
      const graphQLDocument = r''' mutation TestMutate($name: String!) {
          createBlog(input: {name: $name}) {
            id
            name
            createdAt
          }
        } ''';
      final graphQLVariables = {'name': 'Test Blog 1'};
      final req = GraphQLRequest<String>(
        document: graphQLDocument,
        variables: graphQLVariables,
      );

      final operation = Amplify.API.mutate(request: req);
      final res = await operation.response;

      final expected = json.encode(expectedMutateSuccessResponseBody['data']);

      expect(res.data, equals(expected));
      expect(res.errors, isEmpty);
    });

    test('Mutate returns proper response.data for custom types', () async {
      final req = GraphQLRequest<String>(
        document: modelWithCustomTypeDocument,
        variables: modelWithCustomTypeVariables,
      );

      final operation = Amplify.API.mutate(request: req);
      final res = await operation.response;

      final expected =
          json.encode(expectedModelWithCustomTypeSuccessResponseBody['data']);

      expect(res.data, equals(expected));
      expect(res.errors, isEmpty);
    });
  });
  group('Model Helpers', () {
    const blogSelectionSet = 'id name createdAt updatedAt';

    test('Query returns proper response.data for Models', () async {
      const expectedDoc =
          'query getBlog(\$id: ID!) { getBlog(id: \$id) { $blogSelectionSet } }';
      const decodePath = 'getBlog';
      final blog = Blog(id: modelQueryId, name: 'Lorem ipsum $modelQueryId');
      final req = ModelQueries.get<Blog>(Blog.classType, blog.modelIdentifier);

      final operation = Amplify.API.query(request: req);
      final res = await operation.response;

      // request asserts
      expect(req.document, expectedDoc);
      expect(_deepEquals(req.variables, {'id': modelQueryId}), isTrue);
      expect(req.modelType, Blog.classType);
      expect(req.decodePath, decodePath);
      // response asserts
      expect(res.data, isA<Blog>());
      expect(res.data?.id, modelQueryId);
      expect(res.errors, isEmpty);
    });

    test(
        'Mutation.create returns proper response.data for Models with custom types',
        () async {
      const expectedDoc = modelWithCustomTypeDocument;
      const decodePath = 'createModelWithCustomType';
      final req = ModelMutations.create<ModelWithCustomType>(
        modelWithCustomType,
      );

      final operation = Amplify.API.query(request: req);
      final res = await operation.response;

      // request asserts
      expect(req.document, expectedDoc);
      expect(_deepEquals(req.variables, modelWithCustomTypeVariables), isTrue);
      expect(req.modelType, ModelWithCustomType.classType);
      expect(req.decodePath, decodePath);
      // response asserts
      expect(res.data, isA<ModelWithCustomType>());
      expect(res.data?.id, modelCustomTypeId);

      final data = res.data!;
      expect(
        data.customTypeValue,
        equals(modelWithCustomType.customTypeValue),
      );
      expect(
        data.listOfCustomTypeValue,
        equals(modelWithCustomType.listOfCustomTypeValue),
      );
      expect(res.errors, isEmpty);
    });
  });

  const graphQLDocument = '''subscription MySubscription {
        onCreateBlog {
          id
          name
          createdAt
        }
      }''';

  group('Subscriptions', () {
    final mockClient = MockPollClient();

    late GraphQLRequest<Post> modelSubscriptionRequest;
    late Map<String, Object> mockSubscriptionEvent;

    setUp(() {
      modelSubscriptionRequest = ModelSubscriptions.onCreate(Post.classType);
      mockSubscriptionEvent = {
        'id': modelSubscriptionRequest.id,
        'type': 'data',
        'payload': {'data': mockSubscriptionData},
      };

      mockWebSocketService = MockWebSocketService();
      const subscriptionOptions = GraphQLSubscriptionOptions(
        pollInterval: Duration(seconds: 1),
      );

      mockWebSocketBloc = WebSocketBloc(
        config: testApiKeyConfig,
        authProviderRepo: getTestAuthProviderRepo(),
        wsService: mockWebSocketService!,
        subscriptionOptions: subscriptionOptions,
        pollClientOverride: mockClient.client,
        connectivity: const ConnectivityPlatform(),
      );

      sendMockConnectionAck(mockWebSocketBloc!, mockWebSocketService!);
    });

    test('subscribe() should decode model data', () async {
      final dataCompleter = Completer<Post>();

      sendMockStartAck(
        mockWebSocketBloc!,
        mockWebSocketService!,
        [modelSubscriptionRequest.id],
      );

      final subscription = Amplify.API.subscribe(
        modelSubscriptionRequest,
        onEstablished: expectAsync0(() {
          mockWebSocketService!.channel.sink
              .add(json.encode(mockSubscriptionEvent));
        }),
      );

      late StreamSubscription<GraphQLResponse<Post>> streamSub;
      streamSub = subscription.listen(
        expectAsync1((event) {
          expect(event.data, isATestPost);
          dataCompleter.complete(event.data);
        }),
      );

      await dataCompleter.future;
      await streamSub.cancel();
      await mockWebSocketBloc!.done.future;
    });

    test('subscribe() should return a subscription stream', () async {
      final dataCompleter = Completer<Post>();

      sendMockStartAck(
        mockWebSocketBloc!,
        mockWebSocketService!,
        [modelSubscriptionRequest.id],
      );

      final subscription = Amplify.API.subscribe(
        modelSubscriptionRequest,
        onEstablished: expectAsync0(
          () {
            mockWebSocketService!.channel.sink
                .add(json.encode(mockSubscriptionEvent));
          },
        ),
      );

      final streamSub = subscription.listen(
        expectAsync1((event) async {
          dataCompleter.complete(event.data);
          expect(event.data, isATestPost);
        }),
      );
      await dataCompleter.future;
      await streamSub.cancel();
      await mockWebSocketBloc!.done.future;
    });

    test('subscribe() should handle multiple streams synchronously', () async {
      final dataCompleter = Completer<Post>();
      final dataCompleter2 = Completer<String>();

      const onCreatePostDoc = '''subscription MySubscription {
            onCreatePost {
              id
              title
              createdAt
            }
          }''';
      final subscriptionRequest2 =
          GraphQLRequest<String>(document: onCreatePostDoc);

      final mockSubscriptionEvent2 = {
        'id': subscriptionRequest2.id,
        'type': 'data',
        'payload': {'data': mockSubscriptionData},
      };

      sendMockStartAck(
        mockWebSocketBloc!,
        mockWebSocketService!,
        [modelSubscriptionRequest.id, subscriptionRequest2.id],
      );

      final subscription = Amplify.API.subscribe(
        modelSubscriptionRequest,
        onEstablished: expectAsync0(
          () {
            mockWebSocketService!.channel.sink
                .add(json.encode(mockSubscriptionEvent));
          },
        ),
      );

      final subscription2 = Amplify.API.subscribe(
        subscriptionRequest2,
        onEstablished: expectAsync0(
          () {
            mockWebSocketService!.channel.sink.add(
              json.encode(mockSubscriptionEvent2),
            );
          },
        ),
      );

      final streamSub = subscription.listen(
        expectAsync1((event) async {
          dataCompleter.complete(event.data);
          expect(event.data, isATestPost);
        }),
      );

      final streamSub2 = subscription2.listen(
        expectAsync1((event) async {
          dataCompleter2.complete(event.data);
          expect(event.data, json.encode(mockSubscriptionData));
        }),
      );

      await dataCompleter.future;
      await dataCompleter2.future;
      await streamSub.cancel();
      await streamSub2.cancel();
      await mockWebSocketBloc!.done.future;
    });

    test('subscribe() should emit hub events', () async {
      final dataCompleter = Completer<Post>();

      expect(
        hubEvents,
        emitsInOrder(
          [
            disconnectedHubEvent,
            connectingHubEvent,
            connectedHubEvent,
            pendingDisconnectedHubEvent,
            disconnectedHubEvent,
          ],
        ),
      );

      sendMockStartAck(
        mockWebSocketBloc!,
        mockWebSocketService!,
        [modelSubscriptionRequest.id],
      );

      final subscription = Amplify.API.subscribe(
        modelSubscriptionRequest,
        onEstablished: expectAsync0(
          () {
            mockWebSocketService!.channel.sink
                .add(json.encode(mockSubscriptionEvent));
          },
        ),
      );

      final streamSub = subscription.listen(
        expectAsync1((event) => dataCompleter.complete(event.data)),
      );

      await dataCompleter.future;

      await streamSub.cancel();

      await mockWebSocketBloc!.done.future;
    });

    test(
        'should reconnect after 12 seconds when appsync ping fails multiple times',
        () async {
      final blocReady = Completer<void>();

      expect(
        hubEvents,
        emitsInOrder(
          [
            disconnectedHubEvent,
            connectingHubEvent,
            connectedHubEvent,
            connectingHubEvent,
            connectingHubEvent,
            connectedHubEvent,
          ],
        ),
      );

      sendMockStartAck(
        mockWebSocketBloc!,
        mockWebSocketService!,
        [modelSubscriptionRequest.id],
      );

      Amplify.API
          .subscribe(
        modelSubscriptionRequest,
        onEstablished: blocReady.complete,
      )
          .listen(
        expectAsync1((event) {
          expect(event.data, isATestPost);
        }),
      );

      await blocReady.future;

      mockClient.induceTimeout = true;

      // Five retry attempts take by default 12400ms seconds,
      // Wait 12 seconds to ensure retry/back off can recover on the 5th try
      await Future<void>.delayed(const Duration(seconds: 12));

      mockClient.induceTimeout = false;

      await expectLater(
        mockWebSocketBloc!.stream,
        emitsThrough(isA<ConnectedState>()),
      );

      mockWebSocketService!.channel.sink
          .add(json.encode(mockSubscriptionEvent));
    });
  });

  group('Error Handling', () {
    test('response errors are decoded', () async {
      const graphQLDocument = ''' TestError ''';
      final req = GraphQLRequest<String>(
        document: graphQLDocument,
        variables: {},
      );

      final operation = Amplify.API.query(request: req);
      final res = await operation.response;

      const errorExpected = GraphQLResponseError(
        message: errorMessage,
        locations: [
          GraphQLResponseErrorLocation(2, 3),
          GraphQLResponseErrorLocation(4, 5),
        ],
        path: <dynamic>[...errorPath],
        extensions: <String, dynamic>{...errorExtensions},
        errorType: errorType,
        errorInfo: errorInfo,
      );

      expect(res.data, equals(null));
      expect(res.errors.single, equals(errorExpected));
    });

    test('request with custom auth mode and auth error', () async {
      const graphQLDocument = ''' query TestQuery {
          listBlogs {
            items {
              id
              name
              createdAt
            }
          }
        } ''';
      final req = GraphQLRequest<String>(
        document: graphQLDocument,
        variables: {},
        authorizationMode: APIAuthorizationType.function,
      );

      final operation = Amplify.API.query(request: req);
      final res = await operation.response;

      const errorExpected = GraphQLResponseError(
        message: authErrorMessage,
      );

      expect(res.data, equals(null));
      expect(res.errors.single, equals(errorExpected));
    });

    test('canceled query request should never resolve', () async {
      final req = GraphQLRequest<String>(document: '', variables: {});
      final operation = Amplify.API.query(request: req);
      await operation.cancel();
      operation.operation
          .then((p0) => fail('Request should have been cancelled.'));
      await operation.operation.valueOrCancellation();
      expect(operation.operation.isCanceled, isTrue);
    });

    test('canceled mutation request should never resolve', () async {
      final req = GraphQLRequest<String>(document: '', variables: {});
      final operation = Amplify.API.mutate(request: req);
      await operation.cancel();
      operation.operation
          .then((p0) => fail('Request should have been cancelled.'));
      await operation.operation.valueOrCancellation();
      expect(operation.operation.isCanceled, isTrue);
    });

    test('should have correct state flow during a failure', () async {
      mockWebSocketService = MockWebSocketService();
      const subscriptionOptions = GraphQLSubscriptionOptions(
        pollInterval: Duration(seconds: 1),
        retryOptions: RetryOptions(maxAttempts: 3),
      );
      final mockClient = MockPollClient(maxFailAttempts: 10);

      mockWebSocketBloc = WebSocketBloc(
        config: testApiKeyConfig,
        authProviderRepo: getTestAuthProviderRepo(),
        wsService: mockWebSocketService!,
        subscriptionOptions: subscriptionOptions,
        pollClientOverride: mockClient.client,
        connectivity: const ConnectivityPlatform(),
      );

      final blocReady = Completer<void>();

      expect(
        hubEvents,
        emitsInOrder(
          [
            disconnectedHubEvent,
            connectingHubEvent,
            connectedHubEvent,
            connectingHubEvent,
            failedHubEvent,
            pendingDisconnectedHubEvent,
            disconnectedHubEvent,
          ],
        ),
      );

      final subscriptionRequest =
          GraphQLRequest<String>(document: graphQLDocument);

      sendMockConnectionAck(
        mockWebSocketBloc!,
        mockWebSocketService!,
      );
      sendMockStartAck(
        mockWebSocketBloc!,
        mockWebSocketService!,
        [subscriptionRequest.id],
      );

      Amplify.API
          .subscribe(
            subscriptionRequest,
            onEstablished: blocReady.complete,
          )
          .listen(
            null,
            onError: (Object e) => safePrint('$e'),
          );

      await blocReady.future;

      mockClient.induceTimeout = true;

      await expectLater(
        mockWebSocketBloc!.stream,
        emitsThrough(isA<ReconnectingState>()),
      );

      expect(
        mockWebSocketBloc!.stream,
        emitsInOrder(
          [
            isA<ReconnectingState>(),
            isA<FailureState>(),
            isA<PendingDisconnect>(),
            isA<DisconnectedState>(),
            emitsDone,
          ],
        ),
      );
    });
  });

  group('Model fromJson()', () {
    final mockBlogJson = Map<String, dynamic>.from({
      'id': '2219c0fe-5243-48ec-8449-b3a2c8fbd3f5',
      'name': 'Example Blog - 7dc976d7-53a0-47e7-8617-3e62ccebc9e9',
    });
    final mockPostJson = Map<String, dynamic>.from({
      'id': '3bb89c75-22a9-4ee6-94b0-2fc0a20f01a4',
      'title': 'Example Post - ee824e31-e85d-4faf-97a0-f00649b32599',
      'rating': 3,
      'createdAt': '2024-04-04T15:06:30.203Z',
      'updatedAt': '2024-04-04T15:06:30.203Z',
    });
    final mockCommentsJson = List<Map<String, dynamic>>.from([
      {
        'content': 'Example Comment - fbc844fa-6ef4-4594-a2ed-9d124275ed30',
        'id': '288d2f5d-39fa-4d70-8fd9-467a4dee9d41',
      },
      {
        'content': 'Example Comment - c09ed2ea-1d9b-4bff-baf4-f19d806338ee',
        'id': '84908a82-826a-45d3-978c-0842ad26a493',
      },
      {
        'content': 'Example Comment - f83339ee-0845-4930-be08-bd592ef29321',
        'id': '3cebd81c-fb26-4adc-996a-b869ff83fa8b',
      },
      {
        'content': 'Example Comment - 6fc3b904-b977-4256-96a9-43221d01d046',
        'id': 'cac2e916-3fc9-4842-8ba6-ce58e59f163c',
      }
    ]);
    final appsyncResponse = Map<String, dynamic>.from({
      ...mockPostJson,
      'comments': {
        'items': mockCommentsJson,
      },
      'blog': mockBlogJson,
    });
    final appsyncSerializedResponse = Map<String, dynamic>.from({
      ...mockPostJson,
      'comments': [
        {
          'serializedData': mockCommentsJson[0],
        },
        {
          'serializedData': mockCommentsJson[1],
        },
        {
          'serializedData': mockCommentsJson[2],
        },
        {
          'serializedData': mockCommentsJson[3],
        },
      ],
      'blog': {'serializedData': mockBlogJson},
    });
    final nullResponse = Map<String, dynamic>.from({
      ...mockPostJson,
      'comments': null,
      'blog': null,
    });

    final malformedResponse = Map<String, dynamic>.from({
      ...mockPostJson,
      'comments': 'foo',
      'blog': null,
    });

    test('should work with nested models V2', () async {
      final post = Post.fromJson(appsyncResponse);

      expect(
        post.id,
        mockPostJson['id'],
      );
      expect(
        post.blog?.name,
        mockBlogJson['name'],
      );
      expect(
        post.comments?.length,
        mockCommentsJson.length,
      );
      expect(
        post.comments?[0].content,
        mockCommentsJson[0]['content'],
      );
    });

    test('should work with nested models V1', () async {
      final post = Post.fromJson(appsyncSerializedResponse);

      expect(
        post.id,
        mockPostJson['id'],
      );
      expect(
        post.blog?.name,
        mockBlogJson['name'],
      );
      expect(
        post.comments?.length,
        mockCommentsJson.length,
      );
      expect(
        post.comments?[0].content,
        mockCommentsJson[0]['content'],
      );
    });

    test('should work with null nested models', () async {
      final post = Post.fromJson(nullResponse);

      expect(
        post.id,
        mockPostJson['id'],
      );
      expect(
        post.blog,
        isNull,
      );
      expect(
        post.comments,
        isNull,
      );
    });

    test('should gracefully handle wrong types', () async {
      final post = Post.fromJson(malformedResponse);

      expect(
        post.id,
        mockPostJson['id'],
      );
      expect(
        post.blog,
        isNull,
      );
      expect(
        post.comments,
        isNull,
      );
    });
  });
}
