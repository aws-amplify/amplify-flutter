// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore/src/native_plugin.g.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  TestWidgetsFlutterBinding binding =
      TestWidgetsFlutterBinding.ensureInitialized();

  BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
    'dev.flutter.pigeon.amplify_datastore.NativeApiBridge.sendSubscriptionEvent',
    MockNativeAuthBridgeCodec(),
  );

  MockAPIPlugin<String> mockAPIPlugin = MockAPIPlugin<String>();

  setUp(() async {
    mockAPIPlugin.clear();

    await Amplify.API.addPlugin(
      mockAPIPlugin,
      authProviderRepo: AmplifyAuthProviderRepository(),
    );

    binding.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(
      channel,
      null,
    );
  });

  tearDown(() async {
    await Amplify.reset();
  });

  group('NativeAmplifyAPI', () {
    group('Query', () {
      test('Empty Request/Response', () async {
        String document = '';
        Map<String, dynamic> emptyMap = {};
        String emptyJsonArray = '[]';

        mockAPIPlugin.queryMethod = <String>(GraphQLRequest mockRequest) {
          expect(mockRequest.document, document);
          expect(mockRequest.variables, emptyMap);
          expect(mockRequest.apiName, null);
          expect(mockRequest.authorizationMode, null);
          expect(mockRequest.headers, null);
          expect(mockRequest.decodePath, null);
          expect(mockRequest.modelType, null);

          return GraphQLOperation<String>(
            CancelableOperation<GraphQLResponse<String>>.fromValue(
              GraphQLResponse<String>(
                data: null as String?,
                errors: [],
              ),
            ),
          );
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(document: '');
        NativeGraphQLResponse response = await nativeAmplifyApi.query(request);

        expect(response.payloadJson, null);
        expect(response.errorsJson, emptyJsonArray);
      });

      test('Filled Request/Response', () async {
        String document = 'document';
        String apiName = 'apiName';
        String variable1Key = 'variable1';
        int variable1Value = 1;
        String variable2Key = 'variable2';
        String variable2Value = 'test string';
        String variablesJson =
            '{"$variable1Key": $variable1Value, "$variable2Key": "$variable2Value"}';
        String responseType = 'responseType';
        String decodePath = 'decodePath';
        String options = 'options';
        String payloadJson = '{}';
        String errorMessage1 = 'errorsJson1';
        String errorMessage2 = 'errorsJson2';
        String errorsJson =
            '[{"message":"$errorMessage1"},{"message":"$errorMessage2"}]';
        String authMode = 'apiKey';

        mockAPIPlugin.queryMethod = <String>(GraphQLRequest mockRequest) {
          expect(mockRequest.id.length, greaterThan(0));
          expect(mockRequest.document, document);
          expect(mockRequest.variables[variable1Key], variable1Value);
          expect(mockRequest.variables[variable2Key], variable2Value);
          expect(mockRequest.apiName, apiName);
          expect(mockRequest.authorizationMode, APIAuthorizationType.apiKey);
          expect(mockRequest.headers, null);
          expect(mockRequest.decodePath, null);
          expect(mockRequest.modelType, null);

          return GraphQLOperation<String>(
            CancelableOperation<GraphQLResponse<String>>.fromValue(
              GraphQLResponse<String>(
                data: payloadJson as String?,
                errors: [
                  GraphQLResponseError(message: errorMessage1),
                  GraphQLResponseError(message: errorMessage2),
                ],
              ),
            ),
          );
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(
            document: document,
            apiName: apiName,
            variablesJson: variablesJson,
            responseType: responseType,
            decodePath: decodePath,
            options: options,
            authMode: authMode);
        NativeGraphQLResponse response = await nativeAmplifyApi.query(request);

        expect(response.payloadJson, payloadJson);
        expect(response.errorsJson, errorsJson);
      });

      Future<void> _authModeExpectHelepr(
        String? authMode,
        APIAuthorizationType? expected,
      ) async {
        mockAPIPlugin.queryMethod = <String>(GraphQLRequest mockRequest) {
          expect(mockRequest.authorizationMode, expected);

          return GraphQLOperation<String>(
            CancelableOperation<GraphQLResponse<String>>.fromValue(
              GraphQLResponse<String>(
                data: null as String?,
                errors: [],
              ),
            ),
          );
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});
        await nativeAmplifyApi.query(
          NativeGraphQLRequest(
            document: '',
            authMode: authMode,
          ),
        );
      }

      test('AuthModeTypes', () async {
        await _authModeExpectHelepr('apiKey', APIAuthorizationType.apiKey);
        await _authModeExpectHelepr('awsIAM', APIAuthorizationType.iam);
        await _authModeExpectHelepr('openIDConnect', APIAuthorizationType.oidc);
        await _authModeExpectHelepr('amazonCognitoUserPools', APIAuthorizationType.userPools);
        await _authModeExpectHelepr('function', APIAuthorizationType.function);
        await _authModeExpectHelepr('none', APIAuthorizationType.none);
        await _authModeExpectHelepr(null, null);
      });

      test('Invalid Request Variables Json Exception', () async {
        String document = '';
        String invalidJson = 'INVALID JSON';

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(
          document: document,
          variablesJson: invalidJson,
        );

        expect(() async => await nativeAmplifyApi.query(request),
            throwsA(TypeMatcher<FormatException>()));
      });

      test('API Exception', () async {
        String exceptionMessage = 'API Exception';

        mockAPIPlugin.queryMethod = <String>(GraphQLRequest mockRequest) {
          throw NetworkException(exceptionMessage);
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(
          document: '',
        );

        expect(
          () async => await nativeAmplifyApi.query(request),
          throwsA(
            predicate(
                (e) => e is NetworkException && e.message == exceptionMessage),
          ),
        );
      });
    });

    group('Mutate', () {
      test('Empty Request/Response', () async {
        String document = '';
        Map<String, dynamic> emptyMap = {};
        String emptyJsonArray = '[]';

        mockAPIPlugin.mutateMethod = <String>(GraphQLRequest mockRequest) {
          expect(mockRequest.document, document);
          expect(mockRequest.variables, emptyMap);
          expect(mockRequest.apiName, null);
          expect(mockRequest.authorizationMode, null);
          expect(mockRequest.headers, null);
          expect(mockRequest.decodePath, null);
          expect(mockRequest.modelType, null);

          return GraphQLOperation<String>(
            CancelableOperation<GraphQLResponse<String>>.fromValue(
              GraphQLResponse<String>(
                data: null as String?,
                errors: [],
              ),
            ),
          );
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(document: document);
        NativeGraphQLResponse response = await nativeAmplifyApi.mutate(request);

        expect(response.payloadJson, null);
        expect(response.errorsJson, emptyJsonArray);
      });

      test('Filled Request/Response', () async {
        String document = 'document';
        String apiName = 'apiName';
        String authMode = 'apiKey';
        String variable1Key = 'variable1';
        int variable1Value = 1;
        String variable2Key = 'variable2';
        String variable2Value = 'test string';
        String variablesJson =
            '{"$variable1Key": $variable1Value, "$variable2Key": "$variable2Value"}';
        String responseType = 'responseType';
        String decodePath = 'decodePath';
        String options = 'options';
        String payloadJson = '{}';
        String errorMessage1 = 'errorsJson1';
        String errorMessage2 = 'errorsJson2';
        String errorsJson =
            '[{"message":"$errorMessage1"},{"message":"$errorMessage2"}]';

        mockAPIPlugin.mutateMethod = <String>(GraphQLRequest mockRequest) {
          expect(mockRequest.id.length, greaterThan(0));
          expect(mockRequest.document, document);
          expect(mockRequest.variables[variable1Key], variable1Value);
          expect(mockRequest.variables[variable2Key], variable2Value);
          expect(mockRequest.apiName, apiName);
          expect(mockRequest.authorizationMode, APIAuthorizationType.apiKey);
          expect(mockRequest.headers, null);
          expect(mockRequest.decodePath, null);
          expect(mockRequest.modelType, null);

          return GraphQLOperation<String>(
            CancelableOperation<GraphQLResponse<String>>.fromValue(
              GraphQLResponse<String>(
                data: payloadJson as String?,
                errors: [
                  GraphQLResponseError(message: errorMessage1),
                  GraphQLResponseError(message: errorMessage2),
                ],
              ),
            ),
          );
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(
          document: document,
          apiName: apiName,
          authMode: authMode,
          variablesJson: variablesJson,
          responseType: responseType,
          decodePath: decodePath,
          options: options,
        );
        NativeGraphQLResponse response = await nativeAmplifyApi.mutate(request);

        expect(response.payloadJson, payloadJson);
        expect(response.errorsJson, errorsJson);
      });

      test('Invalid Request Variables Json Exception', () async {
        String document = '';
        String invalidJson = 'INVALID JSON';

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(
          document: document,
          variablesJson: invalidJson,
        );

        expect(() async => await nativeAmplifyApi.mutate(request),
            throwsA(TypeMatcher<FormatException>()));
      });

      test('API Exception', () async {
        String exceptionMessage = 'API Exception';

        mockAPIPlugin.mutateMethod = <String>(GraphQLRequest mockRequest) {
          throw NetworkException(exceptionMessage);
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(
          document: '',
        );

        expect(
          () async => await nativeAmplifyApi.mutate(request),
          throwsA(
            predicate(
                (e) => e is NetworkException && e.message == 'API Exception'),
          ),
        );
      });
    });

    group('Subscribe', () {
      test('Empty Request/Response', () async {
        String responseType = 'connecting';
        String document = '';
        Map<String, dynamic> emptyMap = {};

        mockAPIPlugin.subscribeMethod = <String>(
          GraphQLRequest mockRequest,
          void Function()? onEstablished,
        ) {
          expect(mockRequest.document, document);
          expect(mockRequest.variables, emptyMap);
          expect(mockRequest.apiName, null);
          expect(mockRequest.authorizationMode, null);
          expect(mockRequest.headers, null);
          expect(mockRequest.decodePath, null);
          expect(mockRequest.modelType, null);

          var controller = StreamController<GraphQLResponse<String>>();
          return controller.stream;
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(document: document);
        NativeGraphQLSubscriptionResponse response =
            await nativeAmplifyApi.subscribe(request);

        expect(response.payloadJson, null);
        expect(response.subscriptionId.length, greaterThan(0));
        expect(response.type, responseType);
      });

      test('Filled Request/Response', () async {
        String responseType = 'connecting';
        String document = 'document';
        String apiName = 'apiName';
        String authMode = 'apiKey';
        String variable1Key = 'variable1';
        int variable1Value = 1;
        String variable2Key = 'variable2';
        String variable2Value = 'test string';
        String variablesJson =
            '{"$variable1Key": $variable1Value, "$variable2Key": "$variable2Value"}';
        String decodePath = 'decodePath';
        String options = 'options';

        mockAPIPlugin.subscribeMethod = <String>(
          GraphQLRequest mockRequest,
          void Function()? onEstablished,
        ) {
          expect(mockRequest.id.length, greaterThan(0));
          expect(mockRequest.document, document);
          expect(mockRequest.variables[variable1Key], variable1Value);
          expect(mockRequest.variables[variable2Key], variable2Value);
          expect(mockRequest.apiName, apiName);
          expect(mockRequest.authorizationMode, APIAuthorizationType.apiKey);
          expect(mockRequest.headers, null);
          expect(mockRequest.decodePath, null);
          expect(mockRequest.modelType, null);

          var controller = StreamController<GraphQLResponse<String>>();
          return controller.stream;
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(
          document: document,
          apiName: apiName,
          authMode: authMode,
          variablesJson: variablesJson,
          responseType: responseType,
          decodePath: decodePath,
          options: options,
        );
        NativeGraphQLSubscriptionResponse response =
            await nativeAmplifyApi.subscribe(request);

        expect(response.payloadJson, null);
        expect(response.subscriptionId.length, greaterThan(0));
        expect(response.type, responseType);
      });

      test('Invalid Request Variables Json Exception', () async {
        String document = '';
        String invalidJson = 'INVALID JSON';

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(
          document: document,
          variablesJson: invalidJson,
        );

        expect(() async => await nativeAmplifyApi.subscribe(request),
            throwsA(TypeMatcher<FormatException>()));
      });

      test('API Exception', () async {
        String exceptionMessage = 'API Exception';

        mockAPIPlugin.subscribeMethod = <String>(
          GraphQLRequest mockRequest,
          void Function()? onEstablished,
        ) {
          throw NetworkException(exceptionMessage);
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(
          document: '',
        );

        expect(
          () async => await nativeAmplifyApi.subscribe(request),
          throwsA(
            predicate(
                (e) => e is NetworkException && e.message == 'API Exception'),
          ),
        );
      });

      test('Established/Connected Callback', () async {
        void Function()? onEstablishedCallback;

        mockAPIPlugin.subscribeMethod = <String>(
          GraphQLRequest mockRequest,
          void Function()? onEstablished,
        ) {
          onEstablishedCallback = onEstablished;
          var controller = StreamController<GraphQLResponse<String>>();
          return controller.stream;
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(
          document: '',
        );

        await nativeAmplifyApi.subscribe(request);

        binding.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(
          channel,
          (Object? message) {
            expect(message, isA<List>());
            List responses = message as List;

            expect(responses.length, greaterThan(0));
            expect(responses[0], isA<NativeGraphQLSubscriptionResponse>());
            NativeGraphQLSubscriptionResponse response = responses[0];

            expect(response.payloadJson, null);
            expect(response.subscriptionId.length, greaterThan(0));
            expect(response.type, 'start_ack');

            return Future.value(message);
          },
        );

        expect(onEstablishedCallback, isNotNull);
        expect(() => onEstablishedCallback?.call(), returnsNormally);
      });

      test('Send Data Event', () async {
        String payloadJson = 'payloadJson';
        StreamController? responseController;

        mockAPIPlugin.subscribeMethod = <String>(
          GraphQLRequest mockRequest,
          void Function()? onEstablished,
        ) {
          var controller = StreamController<GraphQLResponse<String>>();
          responseController = controller;
          return controller.stream;
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        await nativeAmplifyApi.subscribe(
          NativeGraphQLRequest(document: ''),
        );

        binding.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(
          channel,
          (Object? message) {
            expect(message, isA<List>());
            List responses = message as List;

            expect(responses.length, greaterThan(0));
            expect(responses[0], isA<NativeGraphQLSubscriptionResponse>());
            NativeGraphQLSubscriptionResponse response = responses[0];

            expect(response.payloadJson, payloadJson);
            expect(response.subscriptionId.length, greaterThan(0));
            expect(response.type, 'data');

            return Future.value(message);
          },
        );

        expect(responseController, isNotNull);
        expect(
          () => responseController?.add(
            GraphQLResponse<String>(
              data: payloadJson,
              errors: [],
            ),
          ),
          returnsNormally,
        );
      });

      test('Send Data With Errors Event', () async {
        String payloadJson = 'payloadJson';
        String errorMessage1 = 'errorsJson1';
        String errorMessage2 = 'errorsJson2';
        String errorsJson =
            '{"errors":[{"message":"$errorMessage1"},{"message":"$errorMessage2"}]}';

        StreamController? responseController;

        mockAPIPlugin.subscribeMethod = <String>(
          GraphQLRequest mockRequest,
          void Function()? onEstablished,
        ) {
          var controller = StreamController<GraphQLResponse<String>>();
          responseController = controller;
          return controller.stream;
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        await nativeAmplifyApi.subscribe(
          NativeGraphQLRequest(document: ''),
        );

        binding.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(
          channel,
          (Object? message) {
            expect(message, isA<List>());
            List responses = message as List;

            expect(responses.length, greaterThan(0));
            expect(responses[0], isA<NativeGraphQLSubscriptionResponse>());
            NativeGraphQLSubscriptionResponse response = responses[0];

            expect(response.payloadJson, errorsJson);
            expect(response.subscriptionId.length, greaterThan(0));
            expect(response.type, 'error');

            return Future.value(message);
          },
        );

        expect(responseController, isNotNull);
        expect(
          () => responseController?.add(
            GraphQLResponse<String>(
              data: payloadJson,
              errors: [
                GraphQLResponseError(message: errorMessage1),
                GraphQLResponseError(message: errorMessage2),
              ],
            ),
          ),
          returnsNormally,
        );
      });

      test('Send Error Event', () async {
        String exceptionMessage = 'Intentional Error';
        String errorsJson =
            '{"errors":[{"message":"Exception: $exceptionMessage"}]}';

        StreamController? responseController;

        mockAPIPlugin.subscribeMethod = <String>(
          GraphQLRequest mockRequest,
          void Function()? onEstablished,
        ) {
          var controller = StreamController<GraphQLResponse<String>>();
          responseController = controller;
          return controller.stream;
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        await nativeAmplifyApi.subscribe(
          NativeGraphQLRequest(document: ''),
        );

        binding.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(
          channel,
          (Object? message) {
            expect(message, isA<List>());
            List responses = message as List;

            expect(responses.length, greaterThan(0));
            expect(responses[0], isA<NativeGraphQLSubscriptionResponse>());
            NativeGraphQLSubscriptionResponse response = responses[0];

            expect(response.payloadJson, errorsJson);
            expect(response.subscriptionId.length, greaterThan(0));
            expect(response.type, 'error');

            return Future.value(message);
          },
        );

        expect(responseController, isNotNull);
        expect(
          () => responseController?.addError(Exception(exceptionMessage)),
          returnsNormally,
        );
      });

      test('Send Done Event', () async {
        StreamController? responseController;

        mockAPIPlugin.subscribeMethod = <String>(
          GraphQLRequest mockRequest,
          void Function()? onEstablished,
        ) {
          var controller = StreamController<GraphQLResponse<String>>();
          responseController = controller;
          return controller.stream;
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        await nativeAmplifyApi.subscribe(
          NativeGraphQLRequest(document: ''),
        );

        binding.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(
          channel,
          (Object? message) {
            expect(message, isA<List>());
            List responses = message as List;

            expect(responses.length, greaterThan(0));
            expect(responses[0], isA<NativeGraphQLSubscriptionResponse>());
            NativeGraphQLSubscriptionResponse response = responses[0];

            expect(response.payloadJson, null);
            expect(response.subscriptionId.length, greaterThan(0));
            expect(response.type, 'complete');

            return Future.value(message);
          },
        );

        expect(responseController, isNotNull);
        expect(
          () => responseController?.close(),
          returnsNormally,
        );
      });

      group('Unubscribe', () {
        test('Existing Subscription', () async {
          mockAPIPlugin.subscribeMethod = <String>(
            GraphQLRequest mockRequest,
            void Function()? onEstablished,
          ) {
            var controller = StreamController<GraphQLResponse<String>>();
            return controller.stream;
          };

          NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

          var response = await nativeAmplifyApi.subscribe(
            NativeGraphQLRequest(
              document: '',
            ),
          );

          await nativeAmplifyApi.unsubscribe(response.subscriptionId);
        });

        test('Fake Subscription', () async {
          NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

          await nativeAmplifyApi.unsubscribe('Fake Subscription ID');
        });
      });
    });
  });
}

class MockAPIPlugin<T> extends APIPluginInterface {
  GraphQLOperation<T> Function<T>(GraphQLRequest<T>)? queryMethod;
  GraphQLOperation<T> Function<T>(GraphQLRequest<T>)? mutateMethod;
  Stream<GraphQLResponse<T>> Function<T>(GraphQLRequest<T>, void Function()?)?
      subscribeMethod;

  MockAPIPlugin({
    this.queryMethod,
    this.mutateMethod,
    this.subscribeMethod,
  });

  void clear() {
    queryMethod = null;
    mutateMethod = null;
    subscribeMethod = null;
  }

  @override
  GraphQLOperation<T> query<T>({required GraphQLRequest<T> request}) {
    return queryMethod!(request);
  }

  @override
  GraphQLOperation<T> mutate<T>({required GraphQLRequest<T> request}) {
    return mutateMethod!(request);
  }

  @override
  Stream<GraphQLResponse<T>> subscribe<T>(
    GraphQLRequest<T> request, {
    void Function()? onEstablished,
  }) {
    return subscribeMethod!(request, onEstablished);
  }
}

class MockNativeAuthBridgeCodec extends StandardMessageCodec {
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is NativeGraphQLSubscriptionResponse) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return NativeGraphQLSubscriptionResponse.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}
