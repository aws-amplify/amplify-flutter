// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/src/http/retry/aws_retryer.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

part 'aws_retryer_test.g.dart';

const _testCaseSerializable = JsonSerializable(
  anyMap: true,
  checked: true,
  createToJson: false,
  disallowUnrecognizedKeys: true,
  fieldRename: FieldRename.snake,
);

@JsonEnum(fieldRename: FieldRename.snake)
enum Outcome {
  success,
  retryRequest,
  maxAttemptsExceeded,
  retryQuotaExceeded,
}

@_testCaseSerializable
class TestSuite {
  const TestSuite({
    required this.given,
    required this.responses,
  });

  factory TestSuite.fromJson(Map<String, Object?> json) =>
      _$TestSuiteFromJson(json);

  final TestSuiteGiven given;
  final List<TestCase> responses;
}

@_testCaseSerializable
class TestSuiteGiven {
  const TestSuiteGiven({
    required this.maxAttempts,
    required this.initialRetryTokens,
    required this.exponentialBase,
    required this.exponentialPower,
    required this.maxBackoffTime,
  });

  factory TestSuiteGiven.fromJson(Map<String, Object?> json) =>
      _$TestSuiteGivenFromJson(json);

  final int maxAttempts;
  final int initialRetryTokens;
  final double exponentialBase;
  final double exponentialPower;
  final int maxBackoffTime;

  @override
  String toString() => [
        maxAttempts,
        initialRetryTokens,
        exponentialBase,
        exponentialPower,
        maxBackoffTime,
      ].join('|');
}

@_testCaseSerializable
class TestCase {
  const TestCase({
    required this.response,
    required this.expected,
  });

  factory TestCase.fromJson(Map<String, Object?> json) =>
      _$TestCaseFromJson(json);

  final TestCaseResponse response;
  final TestCaseExpected expected;
}

@_testCaseSerializable
class TestCaseResponse {
  const TestCaseResponse({
    required this.statusCode,
  });

  factory TestCaseResponse.fromJson(Map<String, Object?> json) =>
      _$TestCaseResponseFromJson(json);

  final int statusCode;
}

@_testCaseSerializable
class TestCaseExpected {
  const TestCaseExpected({
    required this.outcome,
    required this.retryQuota,
    this.delay,
  });

  factory TestCaseExpected.fromJson(Map<String, Object?> json) =>
      _$TestCaseExpectedFromJson(json);

  final Outcome outcome;
  final int retryQuota;
  final int? delay;
}

List<TestSuite> loadTestSuite(String testSuiteYaml) {
  final yaml = loadYamlStream(testSuiteYaml);
  return yaml
      .cast<Map<Object?, Object?>>()
      .map((json) => TestSuite.fromJson(json.cast()))
      .toList();
}

void main() {
  final standardTestSuite = loadTestSuite(_standardTestCases);
  group('AWSRetryer', () {
    group('Standard Mode', () {
      for (final testSuite in standardTestSuite) {
        final maxAttempts = testSuite.given.maxAttempts;
        final retryer = AWSRetryer(
          initialRetryTokens: testSuite.given.initialRetryTokens,
          exponentialBase: testSuite.given.exponentialBase,
          exponentialPower: testSuite.given.exponentialPower,
          maxBackoffTime: Duration(seconds: testSuite.given.maxBackoffTime),
        );
        test('${testSuite.given}', () {
          runZoned(
            () async {
              final outcome = testSuite.responses.last;
              final Matcher expectation;
              switch (outcome.expected.outcome) {
                case Outcome.success:
                case Outcome.retryRequest:
                  expectation = completes;
                case Outcome.maxAttemptsExceeded:
                case Outcome.retryQuotaExceeded:
                  expectation = throwsA(isA<_TransientSmithyException>());
              }

              // TODO(dnys1): Try to get fake_async to work properly to avoid
              /// unnecessary test delays.
              var retry = 0;
              TestCase testCase() => testSuite.responses[retry];
              await expectLater(
                retryer.retry<void>(
                  () {
                    final completer = CancelableCompleter<void>();
                    final response = testCase().response;
                    if (response.statusCode == 200) {
                      completer.complete();
                    } else {
                      completer
                          .completeError(const _TransientSmithyException());
                    }
                    return completer.operation;
                  },
                  onRetry: (e, [delay]) {
                    final expectedDelay = testCase().expected.delay;
                    expect(delay?.inSeconds, equals(expectedDelay));
                    expect(
                      retryer.retryQuota,
                      equals(testCase().expected.retryQuota),
                    );
                    retry++;
                  },
                ).valueOrCancellation(),
                expectation,
              );

              final expectedRetries = testSuite.responses
                  .where(
                    (resp) => resp.expected.outcome == Outcome.retryRequest,
                  )
                  .length;
              expect(retry, equals(expectedRetries));
            },
            zoneValues: {
              AWSConfigValue.maxAttempts: maxAttempts,
            },
          );
        });
      }
    });
  });
}

class _TransientSmithyException implements SmithyException {
  const _TransientSmithyException();

  @override
  String? get message => null;

  @override
  RetryConfig? get retryConfig => const RetryConfig();

  @override
  ShapeId? get shapeId => null;

  @override
  Exception? get underlyingException => null;
}

const _standardTestCases = '''
# Retry eventually succeeds.
given:
  max_attempts: 3
  initial_retry_tokens: 500
  exponential_base: 1
  exponential_power: 2
  max_backoff_time: 20
responses:
  - response:
      status_code: 500
    expected:
      outcome: retry_request
      retry_quota: 495
      delay: 1
  - response:
      status_code: 500
    expected:
      outcome: retry_request
      retry_quota: 490
      delay: 2
  - response:
      status_code: 200
    expected:
      outcome: success
      retry_quota: 495
---
# Fail due to max attempts reached.
given:
  max_attempts: 3
  initial_retry_tokens: 500
  exponential_base: 1
  exponential_power: 2
  max_backoff_time: 20
responses:
  - response:
      status_code: 502
    expected:
      outcome: retry_request
      retry_quota: 495
      delay: 1
  - response:
      status_code: 502
    expected:
      outcome: retry_request
      retry_quota: 490
      delay: 2
  # Our third attempt is a failure, but we don't
  # retry anymore because we've reached max attempts of 3.
  - response:
      status_code: 502
    expected:
      outcome: max_attempts_exceeded
      retry_quota: 490
---
# Retry Quota reached after a single retry.
given:
  max_attempts: 3
  initial_retry_tokens: 5
  exponential_base: 1
  exponential_power: 2
  max_backoff_time: 20
responses:
  - response:
      status_code: 500
    expected:
      outcome: retry_request
      retry_quota: 0
      delay: 1
  - response:
      status_code: 502
    expected:
      outcome: retry_quota_exceeded
      retry_quota: 0
---
# No retries at all if retry quota is 0.
given:
  max_attempts: 3
  initial_retry_tokens: 0
  exponential_base: 1
  exponential_power: 2
  max_backoff_time: 20
responses:
  - response:
      status_code: 500
    expected:
      outcome: retry_quota_exceeded
      retry_quota: 0
---
# Verifying exponential backoff timing.
# We need a higher max attempts than the default of
# 3 to ensure we're doing this correctly.
given:
  max_attempts: 5
  initial_retry_tokens: 500
  exponential_base: 1
  exponential_power: 2
  max_backoff_time: 20
responses:
  - response:
      status_code: 500
    expected:
      outcome: retry_request
      retry_quota: 495
      delay: 1
  - response:
      status_code: 500
    expected:
      outcome: retry_request
      retry_quota: 490
      delay: 2
  - response:
      status_code: 500
    expected:
      outcome: retry_request
      retry_quota: 485
      delay: 4
  - response:
      status_code: 500
    expected:
      outcome: retry_request
      retry_quota: 480
      delay: 8
  - response:
      status_code: 500
    expected:
      outcome: max_attempts_exceeded
      retry_quota: 480
---
# Verify max backoff time.
# We need a higher max attempts to ensure we're
# doing this correctly.
given:
  max_attempts: 5
  initial_retry_tokens: 500
  exponential_base: 1
  exponential_power: 2
  max_backoff_time: 3
responses:
  - response:
      status_code: 500
    expected:
      outcome: retry_request
      retry_quota: 495
      delay: 1
  - response:
      status_code: 500
    expected:
      outcome: retry_request
      retry_quota: 490
      delay: 2
  - response:
      status_code: 500
    expected:
      outcome: retry_request
      retry_quota: 485
      delay: 3
  - response:
      status_code: 500
    expected:
      outcome: retry_request
      retry_quota: 480
      delay: 3
  - response:
      status_code: 500
    expected:
      outcome: max_attempts_exceeded
      retry_quota: 480
''';
