// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_push/amplify_push.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AmplifyPushException.from', () {
    test('returns same instance for AmplifyPushException input', () {
      const original = PushAlreadyConfiguredException();
      final result = AmplifyPushException.from(original);
      expect(identical(result, original), isTrue);
    });

    test('wraps PlatformException as PushPlatformException', () {
      final platform = PlatformException(code: 'test');
      final result = AmplifyPushException.from(platform);
      expect(result, isA<PushPlatformException>());
      expect(result.cause, platform);
    });

    test('wraps TimeoutException as PushTimeoutException', () {
      final timeout = TimeoutException('timed out');
      final result = AmplifyPushException.from(timeout);
      expect(result, isA<PushTimeoutException>());
      expect(result.cause, timeout);
    });

    test('wraps unknown Exception as PushUnknownException', () {
      const unknown = FormatException('bad');
      final result = AmplifyPushException.from(unknown);
      expect(result, isA<PushUnknownException>());
      expect(result.cause, unknown);
    });

    test('wraps non-Exception as PushUnknownException', () {
      final result = AmplifyPushException.from('string error');
      expect(result, isA<PushUnknownException>());
    });
  });

  group('Exception messages', () {
    test('PushAlreadyConfiguredException has correct message', () {
      const e = PushAlreadyConfiguredException();
      expect(e.message, contains('already exists'));
      expect(e.recoverySuggestion, contains('close()'));
    });

    test('PushClientClosedException has correct message', () {
      const e = PushClientClosedException();
      expect(e.message, contains('closed'));
    });

    test('PushCallbackException has correct message', () {
      const e = PushCallbackException();
      expect(e.message, contains('not a global or static'));
    });
  });
}
