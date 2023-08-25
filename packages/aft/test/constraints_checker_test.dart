// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/aft.dart';
import 'package:aft/src/constraints_checker.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';
import 'package:yaml_edit/yaml_edit.dart';

void main() {
  group('PublishConstraintsChecker', () {
    for (final action in ConstraintsAction.values) {
      final result = switch (action) {
        ConstraintsAction.check => 'fails',
        ConstraintsAction.apply => 'applies',
        ConstraintsAction.update => 'updates',
      };
      test(
        '$result when a direct dep and transitive dev dep conflict '
        'for a published package',
        () {
          final amplifyCore = dummyPackage(
            'amplify_core',
            version: Version(1, 0, 0),
          );
          final amplifyTest = dummyPackage(
            'amplify_test',
            publishable: false,
            deps: {
              // An outdated constraint
              amplifyCore.key: VersionConstraint.parse('<1.0.0'),
            },
          );
          final amplifyFlutter = dummyPackage(
            'amplify_flutter',
            version: Version(1, 0, 0),
            deps: {
              amplifyCore.key: VersionConstraint.parse('>=1.0.0 <1.1.0'),
            },
            devDeps: {
              amplifyTest.key: VersionConstraint.any,
            },
          );
          final repoGraph = Map.fromEntries([
            amplifyCore,
            amplifyFlutter,
            amplifyTest,
          ]);
          final constraintsChecker = PublishConstraintsChecker(
            action,
            repoGraph,
          );

          {
            expect(
              constraintsChecker.checkConstraints(amplifyCore.key),
              isTrue,
            );
          }

          {
            expect(
              constraintsChecker.checkConstraints(amplifyTest.key),
              isTrue,
              reason:
                  "amplify_test's constraint on amplify_core is fine by itself",
            );
          }

          {
            switch (action) {
              case ConstraintsAction.apply || ConstraintsAction.update:
                expect(
                  constraintsChecker.checkConstraints(amplifyFlutter.key),
                  isTrue,
                );
                expect(
                  amplifyTest.key.pubspecInfo.pubspecYamlEditor.edits.single,
                  isA<SourceEdit>().having(
                    (edit) => edit.replacement,
                    'replacement',
                    'any',
                  ),
                );
                expect(constraintsChecker.mismatchedDependencies, isEmpty);
              case ConstraintsAction.check:
                expect(
                  constraintsChecker.checkConstraints(amplifyFlutter.key),
                  isFalse,
                  reason:
                      'The constraint amplify_test has on amplify_core would '
                      "cause a publish error since it conflicts with amplify_flutter's "
                      'direct constraint',
                );
                expect(
                  constraintsChecker.mismatchedDependencies.single,
                  isA<MismatchedDependency>()
                      .having(
                        (err) => err.package.name,
                        'packageName',
                        'amplify_test',
                      )
                      .having(
                        (err) => err.dependencyName,
                        'dependencyName',
                        'amplify_core',
                      ),
                );
                expect(
                  amplifyTest.key.pubspecInfo.pubspecYamlEditor.edits,
                  isEmpty,
                );
            }
          }
        },
      );
    }
  });
}

MapEntry<PackageInfo, List<PackageInfo>> dummyPackage(
  String name, {
  Version? version,
  bool publishable = true,
  Map<PackageInfo, VersionConstraint> deps = const {},
  Map<PackageInfo, VersionConstraint> devDeps = const {},
}) {
  final path = 'packages/$name';

  final pubspecEditor = YamlEditor('''
name: $name

environment:
  sdk: ^3.0.0

dependencies: {}

dev_dependencies: {}
''');

  if (version != null) {
    pubspecEditor.update(['version'], version.toString());
  }

  void addConstraints(
    Map<PackageInfo, VersionConstraint> constraints,
    DependencyType type,
  ) {
    for (final MapEntry(key: dep, value: constraint) in constraints.entries) {
      final path = <String>[type.key, dep.name];
      pubspecEditor.update(path, constraint.toString());
    }
  }

  addConstraints(deps, DependencyType.dependency);
  addConstraints(devDeps, DependencyType.devDependency);

  if (!publishable) {
    pubspecEditor.update(['publish_to'], 'none');
  }

  final pubspecYaml = pubspecEditor.toString();
  final pubspec = Pubspec.parse(pubspecYaml);
  final pubspecMap = loadYamlNode(pubspecYaml) as YamlMap;

  final package = PackageInfo(
    name: name,
    path: path,
    pubspecInfo: PubspecInfo(
      pubspec: pubspec,
      pubspecYaml: pubspecYaml,
      pubspecMap: pubspecMap,
      uri: Uri.base.resolve(path),
    ),
    flavor: PackageFlavor.dart,
  );
  return MapEntry(package, [...deps.keys, ...devDeps.keys]);
}
