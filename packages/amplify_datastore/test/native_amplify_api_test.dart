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
      test('Should handle empty request/response', () async {
        String document = '';
        Map<String, dynamic> emptyMap = {};
        String payloadJson = '{"data":{},"errors":[]}';

        mockAPIPlugin.queryMethod = <T>(GraphQLRequest mockRequest) {
          expect(mockRequest.document, document);
          expect(mockRequest.variables, emptyMap);
          expect(mockRequest.apiName, null);
          expect(mockRequest.authorizationMode, null);
          expect(mockRequest.headers, null);
          expect(mockRequest.decodePath, null);
          expect(mockRequest.modelType, null);

          return GraphQLOperation<T>(
            CancelableOperation<GraphQLResponse<T>>.fromValue(
              GraphQLResponse<T>(
                data: null as T?,
                errors: [],
              ),
            ),
          );
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(document: '');
        NativeGraphQLResponse response = await nativeAmplifyApi.query(request);

        expect(response.payloadJson, payloadJson);
      });

      test('Should handle filled request/response', () async {
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
        String data = '{"data1":1,"data2":"data string"}';
        String errorMessage1 = 'errorsJson1';
        String errorMessage2 = 'errorsJson2';
        String payloadJson =
            '{"data":$data,"errors":[{"message":"$errorMessage1"},{"message":"$errorMessage2"}]}';
        String authMode = 'apiKey';

        mockAPIPlugin.queryMethod = <T>(GraphQLRequest mockRequest) {
          expect(mockRequest.id.length, greaterThan(0));
          expect(mockRequest.document, document);
          expect(mockRequest.variables[variable1Key], variable1Value);
          expect(mockRequest.variables[variable2Key], variable2Value);
          expect(mockRequest.apiName, apiName);
          expect(mockRequest.authorizationMode, APIAuthorizationType.apiKey);
          expect(mockRequest.headers, null);
          expect(mockRequest.decodePath, null);
          expect(mockRequest.modelType, null);

          return GraphQLOperation<T>(
            CancelableOperation<GraphQLResponse<T>>.fromValue(
              GraphQLResponse<T>(
                data: data as T?,
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
      });

      test('Should handle empty response parse exception', () async {
        String document = '';
        String data = 'Invalid Json';
        Map<String, dynamic> emptyMap = {};
        String payloadJson =
            '{"data":{},"errors":[{"message":"Error parsing payload json: FormatException: Unexpected character (at character 1)\\nInvalid Json\\n^\\n"}]}';

        mockAPIPlugin.queryMethod = <T>(GraphQLRequest mockRequest) {
          expect(mockRequest.document, document);
          expect(mockRequest.variables, emptyMap);
          expect(mockRequest.apiName, null);
          expect(mockRequest.authorizationMode, null);
          expect(mockRequest.headers, null);
          expect(mockRequest.decodePath, null);
          expect(mockRequest.modelType, null);

          return GraphQLOperation<T>(
            CancelableOperation<GraphQLResponse<T>>.fromValue(
              GraphQLResponse<T>(
                data: data as T?,
                errors: [],
              ),
            ),
          );
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(document: '');
        NativeGraphQLResponse response = await nativeAmplifyApi.query(request);

        expect(response.payloadJson, payloadJson);
      });

      Future<void> _authModeExpectHelepr(
        String? authMode,
        APIAuthorizationType? expected,
      ) async {
        mockAPIPlugin.queryMethod = <T>(GraphQLRequest mockRequest) {
          expect(mockRequest.authorizationMode, expected);

          return GraphQLOperation<T>(
            CancelableOperation<GraphQLResponse<T>>.fromValue(
              GraphQLResponse<T>(
                data: null as T?,
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

      test('Should handle all AuthModeTypes', () async {
        await _authModeExpectHelepr('apiKey', APIAuthorizationType.apiKey);
        await _authModeExpectHelepr('awsIAM', APIAuthorizationType.iam);
        await _authModeExpectHelepr('openIDConnect', APIAuthorizationType.oidc);
        await _authModeExpectHelepr(
            'amazonCognitoUserPools', APIAuthorizationType.userPools);
        await _authModeExpectHelepr('function', APIAuthorizationType.function);
        await _authModeExpectHelepr('none', APIAuthorizationType.none);
        await _authModeExpectHelepr(null, null);
      });

      test('Should handle non-AmplifyException exceptions', () async {
        String document = '';
        String invalidJson = 'INVALID JSON';
        String payloadJson =
            '{"errors":[{"message":"FormatException: Unexpected character (at character 1)\\nINVALID JSON\\n^\\n"}]}';

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(
          document: document,
          variablesJson: invalidJson,
        );

        NativeGraphQLResponse response = await nativeAmplifyApi.query(request);
        expect(response.payloadJson, payloadJson);
      });

      test('Should handle AmplifyException', () async {
        String exceptionMessage = 'API Exception';
        String payloadJson =
            '{"errors":[{"message":"NetworkException {\\n  \\"message\\": \\"API Exception\\"\\n}"}]}';

        mockAPIPlugin.queryMethod = <T>(GraphQLRequest mockRequest) {
          throw NetworkException(exceptionMessage);
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(
          document: '',
        );

        NativeGraphQLResponse response = await nativeAmplifyApi.query(request);
        expect(response.payloadJson, payloadJson);
      });

      test('Should handle unauthorized AmplifyException - SignedOutException',
          () async {
        String exceptionMessage = 'API Exception';
        String payloadJson =
            '{"errors":[{"message":"Unauthorized - API Exception - SignedOutException"}]}';

        mockAPIPlugin.queryMethod = <T>(GraphQLRequest mockRequest) {
          throw NetworkException(
            exceptionMessage,
            underlyingException: 'SignedOutException',
          );
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(
          document: '',
        );

        NativeGraphQLResponse response = await nativeAmplifyApi.query(request);
        expect(response.payloadJson, payloadJson);
      });

      test('Should handle unauthorized AmplifyException - Unauthrorized',
          () async {
        String exceptionMessage =
            'Not Authorized to access onDeletePrivateNote on type Subscription';
        String payloadJson =
            '{"errors":[{"message":"NetworkException {\\n  \\"message\\": \\"$exceptionMessage\\",\\n  \\"underlyingException\\": \\"Unauthrorized\\"\\n}"}]}';

        mockAPIPlugin.queryMethod = <T>(GraphQLRequest mockRequest) {
          throw NetworkException(
            exceptionMessage,
            underlyingException: 'Unauthrorized',
          );
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(
          document: '',
        );

        NativeGraphQLResponse response = await nativeAmplifyApi.query(request);
        expect(response.payloadJson, payloadJson);
      });
    });

    group('Mutate', () {
      test('Should handle empty request/response', () async {
        String document = '';
        Map<String, dynamic> emptyMap = {};
        String payloadJson = '{"data":{},"errors":[]}';

        mockAPIPlugin.mutateMethod = <T>(GraphQLRequest mockRequest) {
          expect(mockRequest.document, document);
          expect(mockRequest.variables, emptyMap);
          expect(mockRequest.apiName, null);
          expect(mockRequest.authorizationMode, null);
          expect(mockRequest.headers, null);
          expect(mockRequest.decodePath, null);
          expect(mockRequest.modelType, null);

          return GraphQLOperation<T>(
            CancelableOperation<GraphQLResponse<T>>.fromValue(
              GraphQLResponse<T>(
                data: null as T?,
                errors: [],
              ),
            ),
          );
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(document: document);
        NativeGraphQLResponse response = await nativeAmplifyApi.mutate(request);

        expect(response.payloadJson, payloadJson);
      });

      test('Should handle filled request/response', () async {
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
        String data = '{"data1":1,"data2":"data string"}';
        String errorMessage1 = 'errorsJson1';
        String errorMessage2 = 'errorsJson2';
        String payloadJson =
            '{"data":$data,"errors":[{"message":"$errorMessage1"},{"message":"$errorMessage2"}]}';

        mockAPIPlugin.mutateMethod = <T>(GraphQLRequest mockRequest) {
          expect(mockRequest.id.length, greaterThan(0));
          expect(mockRequest.document, document);
          expect(mockRequest.variables[variable1Key], variable1Value);
          expect(mockRequest.variables[variable2Key], variable2Value);
          expect(mockRequest.apiName, apiName);
          expect(mockRequest.authorizationMode, APIAuthorizationType.apiKey);
          expect(mockRequest.headers, null);
          expect(mockRequest.decodePath, null);
          expect(mockRequest.modelType, null);

          return GraphQLOperation<T>(
            CancelableOperation<GraphQLResponse<T>>.fromValue(
              GraphQLResponse<T>(
                data: data as T?,
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
      });

      test('Should handle empty response parse exception', () async {
        String document = '';
        String data = 'Invalid Json';
        Map<String, dynamic> emptyMap = {};
        String payloadJson =
            '{"data":{},"errors":[{"message":"Error parsing payload json: FormatException: Unexpected character (at character 1)\\nInvalid Json\\n^\\n"}]}';

        mockAPIPlugin.mutateMethod = <T>(GraphQLRequest mockRequest) {
          expect(mockRequest.document, document);
          expect(mockRequest.variables, emptyMap);
          expect(mockRequest.apiName, null);
          expect(mockRequest.authorizationMode, null);
          expect(mockRequest.headers, null);
          expect(mockRequest.decodePath, null);
          expect(mockRequest.modelType, null);

          return GraphQLOperation<T>(
            CancelableOperation<GraphQLResponse<T>>.fromValue(
              GraphQLResponse<T>(
                data: data as T?,
                errors: [],
              ),
            ),
          );
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(document: '');
        NativeGraphQLResponse response = await nativeAmplifyApi.mutate(request);

        expect(response.payloadJson, payloadJson);
      });

      test('Should handle AmplifyException', () async {
        String exceptionMessage = 'API Exception';
        String payloadJson =
            '{"errors":[{"message":"NetworkException {\\n  \\"message\\": \\"API Exception\\"\\n}"}]}';

        mockAPIPlugin.mutateMethod = <T>(GraphQLRequest mockRequest) {
          throw NetworkException(exceptionMessage);
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(
          document: '',
        );

        NativeGraphQLResponse response = await nativeAmplifyApi.mutate(request);
        expect(response.payloadJson, payloadJson);
      });

      test('Should handle unauthorized AmplifyException - SignedOutException',
          () async {
        String exceptionMessage = 'API Exception';
        String payloadJson =
            '{"errors":[{"message":"Unauthorized - API Exception - SignedOutException"}]}';

        mockAPIPlugin.mutateMethod = <T>(GraphQLRequest mockRequest) {
          throw NetworkException(
            exceptionMessage,
            underlyingException: 'SignedOutException',
          );
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(
          document: '',
        );

        NativeGraphQLResponse response = await nativeAmplifyApi.mutate(request);
        expect(response.payloadJson, payloadJson);
      });

      test('Should handle unauthorized AmplifyException - Unauthrorized',
          () async {
        String exceptionMessage =
            'Not Authorized to access onDeletePrivateNote on type Subscription';
        String payloadJson =
            '{"errors":[{"message":"NetworkException {\\n  \\"message\\": \\"$exceptionMessage\\",\\n  \\"underlyingException\\": \\"Unauthrorized\\"\\n}"}]}';

        mockAPIPlugin.mutateMethod = <T>(GraphQLRequest mockRequest) {
          throw NetworkException(
            exceptionMessage,
            underlyingException: 'Unauthrorized',
          );
        };

        NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

        NativeGraphQLRequest request = NativeGraphQLRequest(
          document: '',
        );

        NativeGraphQLResponse response = await nativeAmplifyApi.mutate(request);
        expect(response.payloadJson, payloadJson);
      });
    });

    group('Subscribe', () {
      test('Should handle empty request/response', () async {
        String responseType = 'connecting';
        String document = '';
        Map<String, dynamic> emptyMap = {};

        mockAPIPlugin.subscribeMethod = <T>(
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

          var controller = StreamController<GraphQLResponse<T>>();
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

      test('Should handle filled request/response', () async {
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

        mockAPIPlugin.subscribeMethod = <T>(
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

          var controller = StreamController<GraphQLResponse<T>>();
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

      test('Should handle invalid Request variablesJson exception', () async {
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

      test('Should handle API exception', () async {
        String exceptionMessage = 'API Exception';

        mockAPIPlugin.subscribeMethod = <T>(
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

      test('Should handle established/connected callback', () async {
        void Function()? onEstablishedCallback;

        mockAPIPlugin.subscribeMethod = <T>(
          GraphQLRequest mockRequest,
          void Function()? onEstablished,
        ) {
          onEstablishedCallback = onEstablished;
          var controller = StreamController<GraphQLResponse<T>>();
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

      test('Should handle send data event', () async {
        String data = '{"data1":1,"data2":"data string"}';
        String payloadJson = '{"data":$data,"errors":[]}';
        StreamController? responseController;

        mockAPIPlugin.subscribeMethod = <T>(
          GraphQLRequest mockRequest,
          void Function()? onEstablished,
        ) {
          var controller = StreamController<GraphQLResponse<T>>();
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
              data: data,
              errors: [],
            ),
          ),
          returnsNormally,
        );
      });

      test('Should handle send data with errors event', () async {
        String data = '{"data1":1,"data2":"data string"}';
        String errorMessage1 = 'errorsJson1';
        String errorMessage2 = 'errorsJson2';
        String payloadJson =
            '{"data":$data,"errors":[{"message":"$errorMessage1"},{"message":"$errorMessage2"}]}';

        StreamController? responseController;

        mockAPIPlugin.subscribeMethod = <T>(
          GraphQLRequest mockRequest,
          void Function()? onEstablished,
        ) {
          var controller = StreamController<GraphQLResponse<T>>();
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
            expect(response.type, 'error');

            return Future.value(message);
          },
        );

        expect(responseController, isNotNull);
        expect(
          () => responseController?.add(
            GraphQLResponse<String>(
              data: data,
              errors: [
                GraphQLResponseError(message: errorMessage1),
                GraphQLResponseError(message: errorMessage2),
              ],
            ),
          ),
          returnsNormally,
        );
      });

      test('Should handle send data event exception', () async {
        String data = 'Invalid Json';
        String payloadJson =
            '{"data":{},"errors":[{"message":"Error parsing payload json: FormatException: Unexpected character (at character 1)\\nInvalid Json\\n^\\n"}]}';
        StreamController? responseController;

        mockAPIPlugin.subscribeMethod = <T>(
          GraphQLRequest mockRequest,
          void Function()? onEstablished,
        ) {
          var controller = StreamController<GraphQLResponse<T>>();
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
            expect(response.type, 'error');

            return Future.value(message);
          },
        );

        expect(responseController, isNotNull);
        expect(
          () => responseController?.add(
            GraphQLResponse<String>(
              data: data,
              errors: [],
            ),
          ),
          returnsNormally,
        );
      });

      test('Should handle send error event', () async {
        String exceptionMessage = 'Intentional Error';
        String errorsJson =
            '{"errors":[{"message":"Exception: $exceptionMessage"}]}';

        StreamController? responseController;

        mockAPIPlugin.subscribeMethod = <T>(
          GraphQLRequest mockRequest,
          void Function()? onEstablished,
        ) {
          var controller = StreamController<GraphQLResponse<T>>();
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

      test('Should handle send done event', () async {
        StreamController? responseController;

        mockAPIPlugin.subscribeMethod = <T>(
          GraphQLRequest mockRequest,
          void Function()? onEstablished,
        ) {
          var controller = StreamController<GraphQLResponse<T>>();
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
        test('Should handle existing subscription', () async {
          mockAPIPlugin.subscribeMethod = <T>(
            GraphQLRequest mockRequest,
            void Function()? onEstablished,
          ) {
            var controller = StreamController<GraphQLResponse<T>>();
            return controller.stream;
          };

          NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

          var response = await nativeAmplifyApi.subscribe(
            NativeGraphQLRequest(
              document: '',
            ),
          );

          await nativeAmplifyApi.unsubscribe(response.subscriptionId);

          expect(
            () async =>
                await nativeAmplifyApi.unsubscribe(response.subscriptionId),
            returnsNormally,
          );
        });

        test('Should handle non-existing subscriptions', () async {
          NativeAmplifyApi nativeAmplifyApi = NativeAmplifyApi({});

          expect(
            () async =>
                await nativeAmplifyApi.unsubscribe('Fake Subscription ID'),
            returnsNormally,
          );
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
