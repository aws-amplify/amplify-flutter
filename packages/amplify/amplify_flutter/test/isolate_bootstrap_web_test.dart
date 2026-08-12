// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Guards web compatibility of the isolate bootstrap helper. `amplify_flutter`
// declares web support and is compiled for web by downstream packages, so these
// symbols must compile there and must not blow up when read.
//
// This is not a theoretical concern: on the web `RootIsolateToken.instance`
// throws `UnsupportedError: Root isolate not identifiable on web.` instead of
// returning null, so a naive getter would be a landmine for every web caller.
//
// `amplify_flutter`'s CI runs `flutter test` on the VM only, so this file is not
// exercised there. Run it by hand:
//
//     cd packages/amplify/amplify_flutter
//     flutter test test/isolate_bootstrap_web_test.dart --platform chrome

@TestOn('browser')
library;

import 'package:amplify_flutter/src/amplify_isolate.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('on the web', () {
    test('reading the root isolate token yields null instead of throwing', () {
      expect(amplifyRootIsolateToken, isNull);
    });

    test('platform channels are always reachable', () {
      expect(amplifyIsolateIsInitialized, isTrue);
    });

    // There is deliberately no test for `ensureAmplifyIsolateInitialized` on
    // the web: it takes a non-nullable `RootIsolateToken`, `RootIsolateToken`
    // has no public constructor, and `amplifyRootIsolateToken` is always null
    // here -- so the call is unreachable by construction rather than by a
    // runtime guard.
  });
}
