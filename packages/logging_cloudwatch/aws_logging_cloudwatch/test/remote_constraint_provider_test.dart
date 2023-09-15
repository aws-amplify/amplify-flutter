// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_common/testing.dart';
import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';
import 'package:aws_logging_cloudwatch/src/file_storage/file_storage.dart';
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

class MockFileStorage extends Mock implements FileStorage {
  @override
  Future<void> save(String fileName, String content) async {}
}

class MockAWSCredentialsProvider extends Mock
    implements AWSCredentialsProvider {}

class PathProvider implements AppPathProvider {
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
  test('LoggingConstraint', () {
    final sampleJsonMap = jsonDecode(sampleJson) as Map<String, dynamic>;
    final loggingConstraint = LoggingConstraint.fromJson(sampleJsonMap);
    expect(
      loggingConstraint.toJson(),
      sampleJsonMap,
    );
  });

  group('RemoteLoggingConstraintProvider', () {
    late BaseRemoteLoggingConstraintProvider provider;
    late FileStorage mockFileStorage;
    late MockAWSHttpClient mockAWSHttpClient;

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

      registerFallbackValue(fakeRequest);

      when(() => mockFileStorage.load(any()))
          .thenAnswer((_) async => Future.value(sampleJson));

      provider = BaseRemoteLoggingConstraintProvider.forTesting(
        config: const DefaultRemoteConfiguration(
          refreshInterval: Duration(seconds: 10),
          endpoint: 'https://example.com',
          region: 'us-west-2',
        ),
        fileStorage: mockFileStorage,
        awsHttpClient: mockAWSHttpClient,
      );
    });

    test('initializes _loggingConstraint from endpoint', () async {
      mockAWSHttpClient = MockAWSHttpClient((request, _) {
        return AWSHttpResponse(
          statusCode: 200,
          body: utf8.encode(sampleJson),
        );
      });

      await Future<void>.delayed(const Duration(seconds: 3));

      // Verify that _loggingConstraint exists
      expect(
        provider.loggingConstraint!.toJson(),
        equals(json.decode(sampleJson)),
      );
    });

    test(
        'fetches _loggingConstraint from local storage and returns null if there are no constraints in local storage',
        () async {
      mockAWSHttpClient = MockAWSHttpClient((request, _) {
        return AWSHttpResponse(
          statusCode: 400,
          body: utf8.encode('NO RESPONSE'),
        );
      });

      // mock load constraint returns null
      when(() => mockFileStorage.load(any()))
          .thenAnswer((_) async => Future.value(null));

      await provider.ready;

      //  Verify that _loggingConstraint is set
      expect(provider.loggingConstraint, equals(null));
    });

    test('uses local storage if endpoint fails', () async {
      mockAWSHttpClient = MockAWSHttpClient((request, _) {
        return AWSHttpResponse(
          statusCode: 400,
          body: utf8.encode('NO RESPONSE'),
        );
      });

      when(() => mockFileStorage.load(any()))
          .thenAnswer((_) async => Future.value(sampleJson));

      await provider.ready;

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

      mockAWSHttpClient = MockAWSHttpClient((request, _) {
        return AWSHttpResponse(
          statusCode: 200,
          body: utf8.encode(updatedJson),
        );
      });

      await provider.ready;

      //  Verify that _loggingConstraint got updated
      expect(
        provider.loggingConstraint!.toJson(),
        equals(json.decode(updatedJson)),
      );
    });
  });
}
