// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/src/config/raw_config.dart';
import 'package:collection/collection.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';

export 'config/config.dart';
export 'config/package_selector.dart';
export 'config/raw_config.dart';
export 'config/serializers.dart';

/// Packages which report as an example app, but should be considered as
/// publishable for some purposes.
const falsePositiveExamples = [
  'aft',
  'smithy_codegen',
  'amplify_auth_cognito_test',
  'amplify_secure_storage_test',
  'amplify_native_legacy_wrapper',
  'pub_server',

  // Smithy Golden packages
  'aws_json1_0_v1',
  'aws_json1_0_v2',
  'aws_json1_1_v1',
  'aws_json1_1_v2',
  'aws_query_v1',
  'aws_query_v2',
  'rest_json1_v1',
  'rest_json1_v2',
  'rest_xml_v1',
  'rest_xml_v2',
  'rest_xml_with_namespace_v1',
  'rest_xml_with_namespace_v2',
  'custom_v1',
  'custom_v2',
  'ec2_query_v1',
  'ec2_query_v2',
];

/// The flavor of a package, e.g. Dart/Flutter.
enum PackageFlavor {
  flutter('Flutter', 'flutter'),
  dart('Dart', 'dart');

  const PackageFlavor(this.displayName, this.entrypoint);

  final String displayName;
  final String entrypoint;
}

class PubVersionInfo {
  const PubVersionInfo(this.allVersions);

  final List<Version> allVersions;

  Version? get latestVersion =>
      allVersions.where((version) => !version.isPreRelease).lastOrNull;

  Version? get latestPrerelease =>
      allVersions.where((version) => version.isPreRelease).lastOrNull;
}

extension AmplifyVersion on Version {
  Version get nextPreRelease => Version(
        major,
        minor,
        patch,
        pre: preRelease.map((el) {
          if (el is! int) return el;
          return el + 1;
        }).join('.'),
      );

  /// The next version according to Amplify rules for incrementing.
  Version nextAmplifyVersion(VersionBumpType type) {
    final newBuild = (build.singleOrNull as int? ?? 0) + 1;
    if (preRelease.isEmpty) {
      switch (type) {
        case VersionBumpType.patch:
          return nextPatch;
        case VersionBumpType.nonBreaking:
          return major == 0 ? nextPatch : nextMinor;
        case VersionBumpType.breaking:
          return major == 0 ? nextMinor : nextMajor;
      }
    }
    if (type == VersionBumpType.breaking) {
      return nextPreRelease;
    }
    return replace(build: [newBuild]);
  }

  /// The constraint to use for this version in pubspecs.
  String amplifyConstraint({Version? minVersion}) {
    final Version maxVersion;
    if (preRelease.isEmpty) {
      final currentMinor = Version(major, minor, 0);
      minVersion ??= currentMinor;
      maxVersion = Version(major, minor + 1, 0);
    } else {
      final currentPreRelease = Version(
        major,
        minor,
        patch,
        pre: preRelease.join('.'),
      );
      minVersion ??= currentPreRelease;
      maxVersion = nextPreRelease;
    }
    return '>=$minVersion <$maxVersion';
  }

  /// Creates a copy of this version with the given fields replaced.
  Version replace({
    int? major,
    int? minor,
    int? patch,
    List<Object>? preRelease,
    List<Object>? build,
  }) {
    String? pre;
    if (preRelease != null) {
      pre = preRelease.join('.');
    } else if (this.preRelease.isNotEmpty) {
      pre = this.preRelease.join('.');
    }
    String? buildString;
    if (build != null) {
      buildString = build.join('.');
    } else if (this.build.isNotEmpty) {
      buildString = this.build.join('.');
    }
    return Version(
      major ?? this.major,
      minor ?? this.minor,
      patch ?? this.patch,
      pre: pre,
      build: buildString,
    );
  }
}

enum DependencyType {
  dependency('dependencies', 'dependency'),
  devDependency('dev_dependencies', 'dev dependency'),
  dependencyOverride('dependency_overrides', 'dependency override');

  const DependencyType(this.key, this.description);

  /// The key in the `pubspec.yaml`.
  final String key;

  /// The human description of a dependency of this type.
  final String description;
}

extension PubspecX on Pubspec {
  /// The package flavor of this pubspec.
  PackageFlavor get flavor {
    if (dependencies.keys.contains('flutter')) {
      return PackageFlavor.flutter;
    }
    return PackageFlavor.dart;
  }
}
