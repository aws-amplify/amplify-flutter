// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_firehose_dart/src/exception/amplify_firehose_exception.dart';
import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';
import 'package:test/test.dart';

void main() {
  group('AmplifyFirehoseException.from', () {
    test('passes through AmplifyFirehoseException unchanged', () {
      const original = FirehoseStorageException('msg');
      final result = AmplifyFirehoseException.from(original);
      expect(identical(result, original), isTrue);
    });

    test('converts RecordCacheValidationException '
        'to FirehoseValidationException', () {
      const cause = RecordCacheValidationException('bad input', 'fix it');
      final result = AmplifyFirehoseException.from(cause);
      expect(result, isA<FirehoseValidationException>());
      expect(result.message, 'bad input');
      expect(result.recoverySuggestion, 'fix it');
    });

    test(
      'converts RecordCacheDatabaseException to FirehoseStorageException',
      () {
        final underlying = Exception('sqlite error');
        final cause = RecordCacheDatabaseException(
          'db error',
          'retry',
          underlying,
        );
        final result = AmplifyFirehoseException.from(cause);
        expect(result, isA<FirehoseStorageException>());
        expect(result.message, 'db error');
        expect(result.recoverySuggestion, 'retry');
        expect(result.underlyingException, underlying);
      },
    );

    test('converts RecordCacheLimitExceededException '
        'to FirehoseLimitExceededException', () {
      const cause = RecordCacheLimitExceededException(
        'cache full',
        'flush first',
      );
      final result = AmplifyFirehoseException.from(cause);
      expect(result, isA<FirehoseLimitExceededException>());
      expect(result.message, 'cache full');
      expect(result.recoverySuggestion, 'flush first');
    });

    test('converts unknown Exception to FirehoseUnknownException', () {
      final cause = Exception('something unexpected');
      final result = AmplifyFirehoseException.from(cause);
      expect(result, isA<FirehoseUnknownException>());
      expect(result.underlyingException, cause);
    });

    test('converts non-Exception error to FirehoseUnknownException', () {
      const error = 'a string error';
      final result = AmplifyFirehoseException.from(error);
      expect(result, isA<FirehoseUnknownException>());
      expect(result.message, 'a string error');
      expect(result.underlyingException, isNull);
    });
  });
}
