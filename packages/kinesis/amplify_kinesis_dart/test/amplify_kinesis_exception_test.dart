// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_kinesis_dart/src/exception/amplify_kinesis_exception.dart';
import 'package:amplify_kinesis_dart/src/exception/record_cache_exception.dart';
import 'package:test/test.dart';

void main() {
  group('AmplifyKinesisException.from', () {
    test('passes through AmplifyKinesisException unchanged', () {
      const original = KinesisStorageException('msg');
      final result = AmplifyKinesisException.from(original);
      expect(identical(result, original), isTrue);
    });

    test(
      'converts RecordCacheValidationException to KinesisValidationException',
      () {
        final cause = RecordCacheValidationException('bad input', 'fix it');
        final result = AmplifyKinesisException.from(cause);
        expect(result, isA<KinesisValidationException>());
        expect(result.message, 'bad input');
        expect(result.recoverySuggestion, 'fix it');
      },
    );

    test(
      'converts RecordCacheDatabaseException to KinesisStorageException',
      () {
        final underlying = Exception('sqlite error');
        final cause = RecordCacheDatabaseException(
          'db error',
          'retry',
          underlying,
        );
        final result = AmplifyKinesisException.from(cause);
        expect(result, isA<KinesisStorageException>());
        expect(result.message, 'db error');
        expect(result.recoverySuggestion, 'retry');
        expect(result.underlyingException, underlying);
      },
    );

    test(
      'converts RecordCacheLimitExceededException to KinesisLimitExceededException',
      () {
        final cause = RecordCacheLimitExceededException(
          'cache full',
          'flush first',
        );
        final result = AmplifyKinesisException.from(cause);
        expect(result, isA<KinesisLimitExceededException>());
        expect(result.message, 'cache full');
        expect(result.recoverySuggestion, 'flush first');
      },
    );

    test('converts unknown Exception to KinesisUnknownException', () {
      final cause = Exception('something unexpected');
      final result = AmplifyKinesisException.from(cause);
      expect(result, isA<KinesisUnknownException>());
      expect(result.underlyingException, cause);
    });

    test('converts non-Exception error to KinesisUnknownException', () {
      const error = 'a string error';
      final result = AmplifyKinesisException.from(error);
      expect(result, isA<KinesisUnknownException>());
      expect(result.message, 'a string error');
      expect(result.underlyingException, isNull);
    });
  });
}
