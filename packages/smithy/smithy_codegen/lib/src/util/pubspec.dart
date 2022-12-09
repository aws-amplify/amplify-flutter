// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:aws_common/aws_common.dart';
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart' hide Dependency;
import 'package:smithy_codegen/src/generator/generator.dart';

enum DependencyType { aws, smithy }

class Dependency with AWSEquatable<Dependency> {
  const Dependency(this.semver, [this.type]) : isDevDependency = false;

  const Dependency.dev(this.semver, [this.type]) : isDevDependency = true;

  final String semver;
  final DependencyType? type;
  final bool isDevDependency;

  @override
  List<Object?> get props => [semver, type, isDevDependency];
}

/// All dependencies and the current versions.
final dependencyVersions = {
  // Dependencies
  'smithy': const Dependency('^0.5.0', DependencyType.smithy),
  'smithy_aws': const Dependency('^0.5.0', DependencyType.smithy),
  'smithy_codegen': const Dependency('^0.5.0', DependencyType.smithy),
  'aws_common': const Dependency('^0.2.0', DependencyType.aws),
  'aws_signature_v4': const Dependency('^0.2.0', DependencyType.aws),
  'built_value': const Dependency('">=8.4.0 <8.5.0"'),
  'built_collection': const Dependency('^5.0.0'),
  'fixnum': const Dependency('^1.0.0'),
  'meta': const Dependency('^1.7.0'),
  'shelf': const Dependency('^1.1.0'),
  'shelf_router': const Dependency('^1.1.0'),
  'xml': const Dependency('>=6.1.0 <=6.2.2'),

  // Dev Dependencies
  'smithy_test': const Dependency.dev('^0.5.0', DependencyType.smithy),
  'build_runner': const Dependency.dev('^2.0.0'),
  'build_web_compilers': const Dependency.dev('^3.2.0'),
  'build_test': const Dependency.dev('^2.1.5'),
  'built_value_generator': const Dependency.dev('8.4.1'),
  'lints': const Dependency.dev('^1.0.0'),
  'test': const Dependency.dev('^1.16.0'),
};

class PubspecGenerator implements Generator<String> {
  const PubspecGenerator(
    this.pubspec,
    this._dependencies, {
    this.smithyPath,
  });

  final Pubspec pubspec;
  final Iterable<String> _dependencies;
  final String? smithyPath;

  Iterable<String> get dependencies =>
      _dependencies.where((dep) => !dependencyVersions[dep]!.isDevDependency);
  Iterable<String> get devDependencies => dependencyVersions.entries
      .where((entry) => entry.value.isDevDependency)
      .map((entry) => entry.key);

  String dependencyYaml(String name, Dependency dependency) {
    if ((dependency.type == DependencyType.smithy ||
            dependency.type == DependencyType.aws) &&
        smithyPath != null) {
      final String relativePath;
      if (dependency.type == DependencyType.smithy) {
        relativePath = path.join(smithyPath!, name);
      } else {
        relativePath = path.join(smithyPath!, '..', name);
      }
      return '''
  $name:
    path: $relativePath''';
    }
    return '  $name: ${dependency.semver}';
  }

  @override
  String generate() {
    final dependenciesBlock = dependencies
        .map((dep) => dependencyYaml(dep, dependencyVersions[dep]!))
        .join('\n');
    final devDependenciesBlock = devDependencies
        .map((dep) => dependencyYaml(dep, dependencyVersions[dep]!))
        .join('\n');
    String? dependencyOverridesBlock;
    if (smithyPath != null) {
      dependencyOverridesBlock = dependencyVersions.entries
          .where((dep) =>
              dep.value.type == DependencyType.smithy ||
              dep.value.type == DependencyType.aws)
          .map((dep) => dependencyYaml(dep.key, dep.value))
          .join('\n');
    }
    return '''
name: ${pubspec.name}
description: ${pubspec.description ?? '${pubspec.name.groupIntoWords().map((s) => s.capitalized).join(' ')} client SDK'}
version: ${pubspec.version?.canonicalizedVersion ?? '0.1.0'}
${smithyPath == null ? pubspec.publishTo != null ? 'publish_to: ${pubspec.publishTo}\n' : '' : 'publish_to: none\n'}${pubspec.homepage != null ? 'homepage: ${pubspec.homepage}\n' : ''}

environment:
  sdk: ">=2.17.0 <3.0.0"

dependencies:
$dependenciesBlock

${dependencyOverridesBlock == null ? '' : 'dependency_overrides:'}
${dependencyOverridesBlock ?? ''}

dev_dependencies:
$devDependenciesBlock
''';
  }
}
