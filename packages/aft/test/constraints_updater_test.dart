// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/src/constraints_updater.dart';
import 'package:aws_common/aws_common.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:test/test.dart';
import 'package:yaml_edit/yaml_edit.dart';

const _rootPubspec = '''
name: my_repo
publish_to: none

environment:
  sdk: ^3.9.0

dependencies:
  source_helper: ">=1.3.10 <1.4.0"
  json_serializable: ">=6.9.4 <6.10.0"
''';

final _globalConstraints = {
  'source_helper': VersionConstraint.parse('>=1.3.10 <1.4.0'),
  'json_serializable': VersionConstraint.parse('>=6.9.4 <6.10.0'),
};

final _latestVersions = {
  'source_helper': Version(1, 4, 0),
  'json_serializable': Version(6, 11, 0),
};

void main() {
  group('GlobalConstraintsUpdater', () {
    late YamlEditor editor;
    late List<String> resolved;
    late AWSLogger logger;

    setUp(() {
      editor = YamlEditor(_rootPubspec);
      resolved = [];
      logger = AWSLogger('test')..logLevel = LogLevel.none;
    });

    Future<Version?> resolveLatestVersion(String package) async {
      resolved.add(package);
      return _latestVersions[package];
    }

    test('leaves pinned dependencies unchanged', () async {
      final updater = GlobalConstraintsUpdater(
        globalConstraints: _globalConstraints,
        pinned: const {'source_helper'},
        resolveLatestVersion: resolveLatestVersion,
        logger: logger,
      );
      final failedUpdates = await updater.update(editor);

      expect(failedUpdates, isEmpty);
      expect(resolved, [
        'json_serializable',
      ], reason: 'Pinned dependencies are not resolved against pub');
      expect(
        editor.edits.single,
        isA<SourceEdit>().having(
          (edit) => edit.replacement.trim(),
          'replacement',
          '">=6.11.0 <6.12.0"',
        ),
      );
      expect(
        editor.parseAt(['dependencies', 'source_helper']).value,
        '>=1.3.10 <1.4.0',
      );
    });

    test('slides every sliding window when nothing is pinned', () async {
      final updater = GlobalConstraintsUpdater(
        globalConstraints: _globalConstraints,
        pinned: const {},
        resolveLatestVersion: resolveLatestVersion,
        logger: logger,
      );
      final failedUpdates = await updater.update(editor);

      expect(failedUpdates, isEmpty);
      expect(resolved, ['source_helper', 'json_serializable']);
      expect(
        editor.parseAt(['dependencies', 'source_helper']).value,
        '>=1.4.0 <1.5.0',
      );
      expect(
        editor.parseAt(['dependencies', 'json_serializable']).value,
        '>=6.11.0 <6.12.0',
      );
    });
  });
}
