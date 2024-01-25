// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_logging_cloudwatch_dart/amplify_logging_cloudwatch_dart.dart';
import 'package:aws_common/testing.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

const sampleJson = '''
    {
      "defaultLogLevel": "ERROR",
      "categoryLogLevel": {
          "API": "DEBUG",
          "AUTH": "DEBUG"
      },
      "userLogLevel": {
          "cognito-sub-xyz-123": {
              "defaultLogLevel": "VERBOSE",
              "categoryLogLevel": {
                  "API": "VERBOSE",
                  "AUTH": "VERBOSE"
              }
            }
        }
      }
    ''';

class MockFileStorage extends Mock implements FileStorage {}

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
  late BaseRemoteLoggingConstraintProvider provider;
  late FileStorage mockFileStorage;
  late MockAWSHttpClient mockAWSHttpClient;
  test('LoggingConstraint', () {
    final sampleJsonMap = jsonDecode(sampleJson) as Map<String, dynamic>;
    final loggingConstraint = LoggingConstraints.fromJson(sampleJsonMap);
    expect(
      loggingConstraint.toJson(),
      sampleJsonMap,
    );
  });

  group('RemoteLoggingConstraintProvider', () {
    setUp(() {
      mockFileStorage = MockFileStorage();

      registerFallbackValue(fakeRequest);
    });

    test('initializes loggingConstraint from endpoint', () async {
      when(() => mockFileStorage.load(any()))
          .thenAnswer((_) async => Future.value(sampleJson));

      when(() => mockFileStorage.save(any(), any())).thenAnswer((_) async {});
      mockAWSHttpClient = MockAWSHttpClient((request, _) {
        return AWSHttpResponse(
          statusCode: 200,
          body: utf8.encode(sampleJson),
        );
      });
      provider = BaseRemoteLoggingConstraintProvider.forTesting(
        config: const DefaultRemoteConfiguration(
          refreshIntervalInSeconds: 1200,
          endpoint: 'https://example.com',
        ),
        fileStorage: mockFileStorage,
        awsHttpClient: mockAWSHttpClient,
      );

      await provider.ready;

      expect(
        provider.loggingConstraint!.toJson(),
        equals(json.decode(sampleJson)),
      );
    });

    test('uses local storage if endpoint fails', () async {
      when(() => mockFileStorage.load(any()))
          .thenAnswer((_) async => Future.value(sampleJson));
      when(() => mockFileStorage.save(any(), any())).thenAnswer((_) async {});
      mockAWSHttpClient = MockAWSHttpClient((request, _) {
        return AWSHttpResponse(
          statusCode: 400,
          body: utf8.encode('NO RESPONSE'),
        );
      });
      provider = BaseRemoteLoggingConstraintProvider.forTesting(
        config: const DefaultRemoteConfiguration(
          refreshIntervalInSeconds: 10,
          endpoint: 'https://example.com',
        ),
        fileStorage: mockFileStorage,
        awsHttpClient: mockAWSHttpClient,
      );

      await provider.ready;

      expect(
        provider.loggingConstraint!.toJson(),
        equals(json.decode(sampleJson)),
      );
    });

    test('updates constraints when endpoint returns updated constraints',
        () async {
      const updatedJson = '''
        {
          "defaultLogLevel": "DEBUG",
            "categoryLogLevel": {
                "API": "DEBUG",
                "AUTH": "ERROR"
            },
            "userLogLevel": {
                "cognito-sub-xyz-123": {
                    "defaultLogLevel": "VERBOSE",
                    "categoryLogLevel": {
                        "API": "ERROR",
                        "AUTH": "DEBUG"
                    }
                  }
              }
        }
        ''';
      // Mocking the endpoint to return updated constraints on the second call
      var callCount = 0;
      var callCount2 = 0;
      when(() => mockFileStorage.load(any())).thenAnswer((_) async {
        callCount2++;
        if (callCount2 == 1) {
          return Future.value(sampleJson);
        } else {
          return Future.value(updatedJson);
        }
      });
      when(() => mockFileStorage.save(any(), any())).thenAnswer((_) async {});
      mockAWSHttpClient = MockAWSHttpClient((request, _) {
        callCount++;
        if (callCount == 1) {
          return AWSHttpResponse(
            statusCode: 200,
            body: utf8.encode(sampleJson),
          );
        } else {
          return AWSHttpResponse(
            statusCode: 200,
            body: utf8.encode(updatedJson),
          );
        }
      });
      provider = BaseRemoteLoggingConstraintProvider.forTesting(
        config: const DefaultRemoteConfiguration(
          refreshIntervalInSeconds: 1,
          endpoint: 'https://example.com',
        ),
        fileStorage: mockFileStorage,
        awsHttpClient: mockAWSHttpClient,
      );

      // Wait for the provider to refresh the constraints and make the second call to the endpoint
      await Future<void>.delayed(const Duration(seconds: 2));

      await provider.ready;

      expect(
        provider.loggingConstraint!.toJson(),
        equals(json.decode(updatedJson)),
      );
    });

    test(
        'fetches loggingConstraint from local storage and returns null if there are no constraints in local storage',
        () async {
      when(() => mockFileStorage.load(any()))
          .thenAnswer((_) async => Future.value(null));
      when(() => mockFileStorage.save(any(), any())).thenAnswer((_) async {});
      mockAWSHttpClient = MockAWSHttpClient((request, _) {
        return AWSHttpResponse(
          statusCode: 400,
          body: utf8.encode('NO RESPONSE'),
        );
      });
      provider = BaseRemoteLoggingConstraintProvider.forTesting(
        config: const DefaultRemoteConfiguration(
          refreshIntervalInSeconds: 10,
          endpoint: 'https://example.com',
        ),
        fileStorage: mockFileStorage,
        awsHttpClient: mockAWSHttpClient,
      );

      await provider.ready;

      expect(provider.loggingConstraint, equals(null));
    });
  });
}
