// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

import 'package:aft/aft.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:test/test.dart';

class _TestCommand extends AmplifyCommand {
  @override
  String get name => 'test';

  @override
  String get description => 'test';
}

void main() {
  group('canResolveVersion', () {
    late _TestCommand command;

    setUp(() => command = _TestCommand());
    tearDown(() => command.close());

    test('true for a published version', () async {
      final resolvable = await command.canResolveVersion(
        'path',
        Version.parse('1.9.1'),
        flavor: PackageFlavor.dart,
      );
      expect(resolvable, isTrue);
    }, timeout: const Timeout(Duration(minutes: 2)));

    test('false for a nonexistent version', () async {
      final resolvable = await command.canResolveVersion(
        'path',
        Version.parse('999.999.999'),
        flavor: PackageFlavor.dart,
      );
      expect(resolvable, isFalse);
    }, timeout: const Timeout(Duration(minutes: 2)));

    test('awaitVersionResolvable completes for a published version', () async {
      await command.awaitVersionResolvable(
        'path',
        Version.parse('1.9.1'),
        flavor: PackageFlavor.dart,
      );
    }, timeout: const Timeout(Duration(minutes: 2)));
  });
}
