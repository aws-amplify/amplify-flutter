// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';
import 'package:aws_logging_cloudwatch/src/file_storage/file_storage.dart'
    if (dart.library.io) 'package:aws_logging_cloudwatch/src/file_storage/file_storage_vm.dart'
    if (dart.library.html) 'package:aws_logging_cloudwatch/src/file_storage/file_storage_web.dart';
// import 'package:aws_logging_cloudwatch/src/file_storage/file_storage_vm.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

const sampleJson = '''
    {
      "defaultLogLevel": "error",
      "categoryLogLevel": {
          "API": "debug",
          "AUTH": "debug"
      },
      "userLogLevel": {
          "cognito-sub-xyz-123": {
              "defaultLogLevel": "verbose",
              "categoryLogLevel": {
                  "API": "verbose",
                  "AUTH": "verbose"
              }
            }
        }
      }
    ''';

class MockFileStorage extends Mock implements FileStorageImpl {
  MockFileStorage();

  @override
  Future<void> saveConstraintLocally(String fileName, String content) async {}
}

class MockAWSHttpClient extends Mock implements AWSHttpClient {}

class MockAWSHttpOperation extends Mock
    implements AWSHttpOperation<AWSBaseHttpResponse> {}

class MockAWSCredentialsProvider extends Mock
    implements AWSCredentialsProvider {}

class PathProvider extends Mock implements AppPathProvider {
  PathProvider();

  @override
  Future<String> getApplicationSupportPath() async {
    return '';
  }

  @override
  Future<String> getTemporaryPath() async {
    return '';
  }
}

final fakeRequest = AWSHttpRequest(
  method: AWSHttpMethod.get,
  uri: Uri.parse('https://fakewebsite.com'),
  headers: const {},
  body: utf8.encode('sample'),
);

void main() {
  group('RemoteLoggingConstraintProvider', () {
    late BaseRemoteLoggingConstraintProvider provider;
    late FileStorageImpl mockFileStorage;
    late MockAWSHttpClient mockAWSHttpClient;
    late MockAWSCredentialsProvider mockCredentialsProvider;
    late MockAWSHttpOperation mockOperation;

    const sampleJson = '''
    {
      "defaultLogLevel": "error",
      "categoryLogLevel": {
          "API": "debug",
          "AUTH": "debug"
      },
      "userLogLevel": {
          "cognito-sub-xyz-123": {
              "defaultLogLevel": "verbose",
              "categoryLogLevel": {
                  "API": "verbose",
                  "AUTH": "verbose"
              }
            }
        }
      }
    ''';

    setUp(() {
      mockFileStorage = MockFileStorage();
      mockAWSHttpClient = MockAWSHttpClient();
      mockCredentialsProvider = MockAWSCredentialsProvider();
      mockOperation = MockAWSHttpOperation();

      registerFallbackValue(fakeRequest);

      // mock the response from the endpoint
      when(() => mockOperation.response).thenAnswer((_) async {
        return AWSHttpResponse(
          statusCode: 200,
          body: utf8.encode(sampleJson),
        );
      });

      // mock the call to createRequest
      when(() => mockAWSHttpClient.send(any())).thenAnswer((_) {
        return mockOperation;
      });

      when(() => mockFileStorage.loadConstraint(any()))
          .thenAnswer((_) async => Future.value(sampleJson));

      provider = BaseRemoteLoggingConstraintProvider(
        config: const DefaultRemoteConfiguration(
          refreshInterval: Duration(seconds: 10),
          endpoint: 'https://example.com',
          region: 'us-west-2',
        ),
        credentialsProvider: mockCredentialsProvider,
        fileStorage: mockFileStorage,
        awsHttpClient: mockAWSHttpClient,
      );
    });

    test('initializes _loggingConstraint from endpoint', () async {
      await Future.delayed(const Duration(seconds: 3));

      // Verify that _loggingConstraint exists
      expect(
        provider.loggingConstraint!.toJson(),
        equals(json.decode(sampleJson)),
      );
    });

    test(
        'fetches _loggingConstraint from local storage and returns null if there are no constraints in local storage',
        () async {
      when(() => mockOperation.response).thenAnswer((_) async {
        return AWSHttpResponse(
          statusCode: 400,
          body: utf8.encode('NO RESPONSE'),
        );
      });

      // mock load constraint returns null
      when(() => mockFileStorage.loadConstraint(any()))
          .thenAnswer((_) async => Future.value(null));

      await Future.delayed(const Duration(seconds: 3));

      //  Verify that _loggingConstraint is set
      expect(provider.loggingConstraint, equals(null));
    });

    test('uses local storage if endpoint fails', () async {
      when(() => mockOperation.response).thenAnswer((_) async {
        return AWSHttpResponse(
          statusCode: 400,
          body: utf8.encode('NO RESPONSE'),
        );
      });

      when(() => mockFileStorage.loadConstraint(any()))
          .thenAnswer((_) async => Future.value(sampleJson));

      await Future.delayed(const Duration(seconds: 3));

      //  Verify that _loggingConstraint uses local storage
      expect(
        provider.loggingConstraint!.toJson(),
        equals(json.decode(sampleJson)),
      );
    });

    test('updates constraints when endpoint returns updated constraints',
        () async {
      const updatedJson = '''
        {
          "defaultLogLevel": "debug",
            "categoryLogLevel": {
                "API": "debug",
                "AUTH": "error"
            },
            "userLogLevel": {
                "cognito-sub-xyz-123": {
                    "defaultLogLevel": "verbose",
                    "categoryLogLevel": {
                        "API": "error",
                        "AUTH": "debug"
                    }
                  }
              }
        }
        ''';

      when(() => mockOperation.response).thenAnswer((_) async {
        return AWSHttpResponse(
          statusCode: 200,
          body: utf8.encode(updatedJson),
        );
      });

      await Future.delayed(const Duration(seconds: 3));

      //  Verify that _loggingConstraint got updated
      expect(
        provider.loggingConstraint!.toJson(),
        equals(json.decode(updatedJson)),
      );
    });
  });
}
