// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')

import 'package:amplify_secure_storage_dart/src/exception/not_available_exception.dart';
import 'package:amplify_secure_storage_dart/src/ffi/utils/dynamic_library_utils.dart';
import 'package:test/test.dart';

void main() {
  group('utils', () {
    test(
      'openDynamicLibrary throws NotAvailableException when lib does not exist',
      () {
        expect(
          () => openDynamicLibrary('fakelib'),
          throwsA(isA<NotAvailableException>()),
        );
      },
    );
  });
}
