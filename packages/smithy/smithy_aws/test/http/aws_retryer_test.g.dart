// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_retryer_test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestSuite _$TestSuiteFromJson(Map json) => $checkedCreate(
      'TestSuite',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['given', 'responses'],
        );
        final val = TestSuite(
          given: $checkedConvert(
              'given', (v) => TestSuiteGiven.fromJson(v as Map)),
          responses: $checkedConvert(
              'responses',
              (v) => (v as List<dynamic>)
                  .map((e) => TestCase.fromJson(e as Map))
                  .toList()),
        );
        return val;
      },
    );

TestSuiteGiven _$TestSuiteGivenFromJson(Map json) => $checkedCreate(
      'TestSuiteGiven',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'max_attempts',
            'initial_retry_tokens',
            'exponential_base',
            'exponential_power',
            'max_backoff_time'
          ],
        );
        final val = TestSuiteGiven(
          maxAttempts: $checkedConvert('max_attempts', (v) => v as int),
          initialRetryTokens:
              $checkedConvert('initial_retry_tokens', (v) => v as int),
          exponentialBase:
              $checkedConvert('exponential_base', (v) => (v as num).toDouble()),
          exponentialPower: $checkedConvert(
              'exponential_power', (v) => (v as num).toDouble()),
          maxBackoffTime: $checkedConvert('max_backoff_time', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'maxAttempts': 'max_attempts',
        'initialRetryTokens': 'initial_retry_tokens',
        'exponentialBase': 'exponential_base',
        'exponentialPower': 'exponential_power',
        'maxBackoffTime': 'max_backoff_time'
      },
    );

TestCase _$TestCaseFromJson(Map json) => $checkedCreate(
      'TestCase',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['response', 'expected'],
        );
        final val = TestCase(
          response: $checkedConvert(
              'response', (v) => TestCaseResponse.fromJson(v as Map)),
          expected: $checkedConvert(
              'expected', (v) => TestCaseExpected.fromJson(v as Map)),
        );
        return val;
      },
    );

TestCaseResponse _$TestCaseResponseFromJson(Map json) => $checkedCreate(
      'TestCaseResponse',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['status_code'],
        );
        final val = TestCaseResponse(
          statusCode: $checkedConvert('status_code', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {'statusCode': 'status_code'},
    );

TestCaseExpected _$TestCaseExpectedFromJson(Map json) => $checkedCreate(
      'TestCaseExpected',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['outcome', 'retry_quota', 'delay'],
        );
        final val = TestCaseExpected(
          outcome: $checkedConvert(
              'outcome', (v) => $enumDecode(_$OutcomeEnumMap, v)),
          retryQuota: $checkedConvert('retry_quota', (v) => v as int),
          delay: $checkedConvert('delay', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {'retryQuota': 'retry_quota'},
    );

const _$OutcomeEnumMap = {
  Outcome.success: 'success',
  Outcome.retryRequest: 'retry_request',
  Outcome.maxAttemptsExceeded: 'max_attempts_exceeded',
  Outcome.retryQuotaExceeded: 'retry_quota_exceeded',
};
