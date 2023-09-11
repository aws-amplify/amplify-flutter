// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/src/models.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
// ignore: implementation_imports
import 'package:pubspec_parse/src/dependency.dart';
import 'package:smithy/ast.dart';
import 'package:yaml/yaml.dart';

part 'raw_config.g.dart';

const yamlSerializable = JsonSerializable(
  anyMap: true,
  checked: true,
  disallowUnrecognizedKeys: true,
  explicitToJson: true,
  converters: [
    VersionConstraintConverter(),
    PackageSelectorConverter(),
    ShapeIdConverter(),
    PubspecConverter(),
    YamlMapConverter(),
  ],
);

/// The typed representation of the `pubspec.yaml` file (under the `aft` key).
@JsonSerializable(
  anyMap: true,
  checked: true,
  disallowUnrecognizedKeys: false,
  createToJson: false,
  converters: [
    VersionConstraintConverter(),
    PackageSelectorConverter(),
    ShapeIdConverter(),
    PubspecConverter(),
    YamlMapConverter(),
  ],
)
class RawPubspecConfig {
  const RawPubspecConfig({
    this.dependencies = const {},
    required this.environment,
    this.aft,
  });

  factory RawPubspecConfig.fromJson(Map<String, Object?> json) =>
      _$RawPubspecConfigFromJson(json);

  /// Global dependency versions for third-party dependencies representing the
  /// values which have been vetted by manual review and/or those should be used
  /// consistently across all packages.
  @JsonKey(fromJson: parseDeps)
  final Map<String, Dependency> dependencies;

  /// The current constraints for Dart + Flutter SDKs.
  final Environment environment;

  /// The current constraints for platforms and OSs.
  final RawAftConfig? aft;
}

/// The typed representation of the `pubspec.yaml` file (under the `aft` key).
@yamlSerializable
class RawAftConfig with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  const RawAftConfig({
    this.platforms,
    this.ignore = const [],
    this.components = const [],
    this.scripts = const {},
    this.github,
  });

  factory RawAftConfig.fromJson(Map<String, Object?> json) =>
      _$RawAftConfigFromJson(json);

  /// The current constraints for platforms and OSs.
  final PlatformEnvironment? platforms;

  /// Packages to ignore in all repo operations.
  final List<String> ignore;

  /// {@macro aft.models.aft_component}
  final List<RawAftComponent> components;

  /// Package- or repo-specific [AftScript]s.
  final Map<String, AftScript> scripts;

  /// Package-specific GitHub configuration.
  final GitHubPackageConfig? github;

  /// Retrieves the component for [packageName], if any.
  String componentForPackage(String packageName) {
    return components
            .firstWhereOrNull(
              (component) => component.packages.contains(packageName),
            )
            ?.name ??
        packageName;
  }

  @override
  String get runtimeTypeName => 'RawAftConfig';

  @override
  Map<String, Object?> toJson() => _$RawAftConfigToJson(this);
}

abstract class Environment
    with AWSSerializable<Map<String, Object?>>, AWSDebuggable
    implements Built<Environment, EnvironmentBuilder> {
  factory Environment({
    required VersionConstraint sdk,
    VersionConstraint? flutter,
  }) {
    return _$Environment._(
      sdk: sdk,
      flutter: flutter ?? VersionConstraint.any,
    );
  }

  factory Environment.build(
    void Function(EnvironmentBuilder) updates,
  ) = _$Environment;

  factory Environment.fromJson(Map<String, Object?> json) {
    return aftSerializers.deserializeWith(serializer, json)!;
  }

  const Environment._();

  @BuiltValueHook(finalizeBuilder: true)
  static void _finalize(EnvironmentBuilder b) {
    b.flutter ??= VersionConstraint.any;
  }

  VersionConstraint get sdk;
  VersionConstraint get flutter;

  @override
  String get runtimeTypeName => 'Environment';

  @override
  Map<String, Object?> toJson() {
    return aftSerializers.serializeWith(serializer, this)
        as Map<String, Object?>;
  }

  static Serializer<Environment> get serializer => _$environmentSerializer;
}

abstract class PlatformEnvironment
    implements Built<PlatformEnvironment, PlatformEnvironmentBuilder> {
  factory PlatformEnvironment({
    required AndroidEnvironment android,
    required IosEnvironment ios,
    required MacOSEnvironment macOS,
  }) = _$PlatformEnvironment._;

  factory PlatformEnvironment.build(
    void Function(PlatformEnvironmentBuilder) updates,
  ) = _$PlatformEnvironment;

  factory PlatformEnvironment.fromJson(Map<String, Object?> json) {
    return aftSerializers.deserializeWith(serializer, json)!;
  }

  const PlatformEnvironment._();

  AndroidEnvironment get android;
  IosEnvironment get ios;
  MacOSEnvironment get macOS;

  Map<String, Object?> toJson() {
    return aftSerializers.serializeWith(serializer, this)
        as Map<String, Object?>;
  }

  static Serializer<PlatformEnvironment> get serializer =>
      _$platformEnvironmentSerializer;
}

abstract class AndroidEnvironment
    with AWSSerializable<Map<String, Object?>>, AWSDebuggable
    implements Built<AndroidEnvironment, AndroidEnvironmentBuilder> {
  factory AndroidEnvironment({
    required String minSdkVersion,
  }) = _$AndroidEnvironment._;

  factory AndroidEnvironment.build(
    void Function(AndroidEnvironmentBuilder) updates,
  ) = _$AndroidEnvironment;

  factory AndroidEnvironment.fromJson(Map<String, Object?> json) =>
      aftSerializers.deserializeWith(serializer, json)!;

  const AndroidEnvironment._();

  String get minSdkVersion;

  @override
  String get runtimeTypeName => 'AndroidEnvironment';

  @override
  Map<String, Object?> toJson() =>
      aftSerializers.serializeWith(serializer, this) as Map<String, Object?>;

  static Serializer<AndroidEnvironment> get serializer =>
      _$androidEnvironmentSerializer;
}

abstract class IosEnvironment
    with AWSSerializable<Map<String, Object?>>, AWSDebuggable
    implements Built<IosEnvironment, IosEnvironmentBuilder> {
  factory IosEnvironment({
    required String minOSVersion,
  }) = _$IosEnvironment._;

  factory IosEnvironment.build(void Function(IosEnvironmentBuilder) updates) =
      _$IosEnvironment;

  factory IosEnvironment.fromJson(Map<String, Object?> json) =>
      aftSerializers.deserializeWith(serializer, json)!;

  const IosEnvironment._();

  String get minOSVersion;

  @override
  String get runtimeTypeName => 'IosEnvironment';

  @override
  Map<String, Object?> toJson() =>
      aftSerializers.serializeWith(serializer, this) as Map<String, Object?>;

  static Serializer<IosEnvironment> get serializer =>
      _$iosEnvironmentSerializer;
}

abstract class MacOSEnvironment
    with AWSSerializable<Map<String, Object?>>, AWSDebuggable
    implements Built<MacOSEnvironment, MacOSEnvironmentBuilder> {
  factory MacOSEnvironment({
    required String minOSVersion,
  }) = _$MacOSEnvironment._;

  factory MacOSEnvironment.build(
    void Function(MacOSEnvironmentBuilder) updates,
  ) = _$MacOSEnvironment;

  factory MacOSEnvironment.fromJson(Map<String, Object?> json) =>
      aftSerializers.deserializeWith(serializer, json)!;

  const MacOSEnvironment._();

  String get minOSVersion;

  @override
  String get runtimeTypeName => 'MacOSEnvironment';

  @override
  Map<String, Object?> toJson() =>
      aftSerializers.serializeWith(serializer, this) as Map<String, Object?>;

  static Serializer<MacOSEnvironment> get serializer =>
      _$macOSEnvironmentSerializer;
}

abstract class GitHubPackageConfig
    with AWSSerializable<Map<String, Object?>>, AWSDebuggable
    implements Built<GitHubPackageConfig, GitHubPackageConfigBuilder> {
  factory GitHubPackageConfig({
    bool custom = false,
  }) =>
      _$GitHubPackageConfig._(custom: custom);

  factory GitHubPackageConfig.build(
    void Function(GitHubPackageConfigBuilder) updates,
  ) = _$GitHubPackageConfig;

  factory GitHubPackageConfig.fromJson(Map<String, Object?> json) =>
      aftSerializers.deserializeWith(serializer, json)!;

  const GitHubPackageConfig._();

  @BuiltValueHook(initializeBuilder: true)
  static void _initialize(GitHubPackageConfigBuilder b) {
    b.custom = false;
  }

  /// Whether a custom workflow is being used.
  ///
  /// If this is `false`, one will be generated during `aft generate workflows`.
  /// Otherwise, an assertion will be made that one is present for `package_name.yaml`
  /// in the `.github/workflows` directory.
  bool get custom;

  @override
  String get runtimeTypeName => 'GitHubPackageConfig';

  @override
  Map<String, Object?> toJson() =>
      aftSerializers.serializeWith(serializer, this) as Map<String, Object?>;

  static Serializer<GitHubPackageConfig> get serializer =>
      _$gitHubPackageConfigSerializer;
}

/// Specifies how to propagate version changes within a component.
enum VersionPropagation {
  /// Propagates only major version changes.
  major,

  /// Propagates only minor version changes.
  minor,

  /// Propagates all version changes.
  all,

  /// Propagates no version changes.
  none;

  /// Whether to propagate a version change from [oldVersion] to [newVersion]
  /// within its component.
  bool propagateToComponent(Version oldVersion, Version newVersion) {
    if (oldVersion == newVersion) {
      return false;
    }
    final majorVersionChanged = () {
      if (newVersion.isPreRelease) {
        if (oldVersion.isPreRelease) {
          return newVersion == oldVersion.nextPreRelease;
        }
        return true;
      }
      return newVersion.major > oldVersion.major;
    }();
    switch (this) {
      case VersionPropagation.major:
        return majorVersionChanged;
      case VersionPropagation.minor:
        if (majorVersionChanged) {
          return true;
        }
        return newVersion.minor > oldVersion.minor;
      case VersionPropagation.all:
        return true;
      case VersionPropagation.none:
        return false;
    }
  }
}

/// {@template aft.models.aft_component}
/// Strongly connected components which should have minor/major version bumps
/// happen in unison, i.e. a version bump to one package cascades to all.
/// {@endtemplate}
@yamlSerializable
class RawAftComponent
    with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  const RawAftComponent({
    required this.name,
    this.summary,
    required this.packages,
    this.propagate = VersionPropagation.minor,
  });

  factory RawAftComponent.fromJson(Map<String, Object?> json) =>
      _$RawAftComponentFromJson(json);

  /// The name of the component.
  final String name;

  /// The package name which summarizes all component changes in its changleog.
  final String? summary;

  /// The list of packages in the component.
  final List<String> packages;

  /// How to align package versions in this component when one changes.
  final VersionPropagation propagate;

  @override
  String get runtimeTypeName => 'RawAftComponent';

  @override
  Map<String, Object?> toJson() => _$RawAftComponentToJson(this);
}

/// Typed representation of the `sdk.yaml` file.
@yamlSerializable
class SdkConfig
    with
        AWSEquatable<SdkConfig>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const SdkConfig({
    this.ref = 'main',
    required this.apis,
    this.plugins = const [],
  });

  factory SdkConfig.fromJson(Map<Object?, Object?>? json) =>
      _$SdkConfigFromJson(json ?? const {});

  /// The `aws-models` ref to pull.
  ///
  /// Defaults to `main`.
  final String ref;
  final Map<String, List<String>?> apis;
  final List<String> plugins;

  @override
  Map<String, Object?> toJson() => _$SdkConfigToJson(this);

  @override
  List<Object?> get props => [ref, apis, plugins];

  @override
  String get runtimeTypeName => 'SdkConfig';
}

class VersionConstraintConverter
    implements JsonConverter<VersionConstraint, String> {
  const VersionConstraintConverter();

  @override
  VersionConstraint fromJson(String json) => VersionConstraint.parse(json);

  @override
  String toJson(VersionConstraint object) => object.toString();
}

class YamlMapConverter implements JsonConverter<YamlMap, Map<String, Object?>> {
  const YamlMapConverter();

  @override
  YamlMap fromJson(Map<String, Object?> json) => YamlMap.wrap(json);

  @override
  Map<String, Object?> toJson(YamlMap object) => object.cast();
}

/// The type of version change to perform.
enum VersionBumpType {
  /// Library packages are allowed to vary in their version, meaning a small
  /// change to one package (e.g. Update README) should be isolated to the
  /// affected package.
  ///
  /// Examples:
  /// * If the current version of a 0-based `aws_common` is `0.1.0` and its
  ///   README is updated, it and it alone should be bumped to `0.1.1`.
  ///   Note: a bump to `0.1.1` is technically a “minor” version bump in
  ///   0-based SemVer, but for consistency we can choose not to use build
  ///   numbers (+).
  /// * If the current version of a 1-based `amplify_flutter` is `1.0.0` and its
  ///   README is updated, it and it alone should be bumped to `1.0.1`.
  ///
  /// This version change is reserved for chores and bug fixes as denoted by
  /// the following conventional commit tags: `fix`, `bug`, `perf`, `chore`,
  /// `build`, `ci`, `docs`, `refactor`, `revert`, `style`, `test`.
  patch,

  /// A non-breaking version bump for a package represents a divergence from
  /// the previous version in terms of behavior or functionality in the form of
  /// a new feature.
  ///
  /// Examples:
  /// * If the current version of a 0-based aws_common is `0.1.0` and it is part
  ///   of a feature change, it is bumped to `0.1.1` alongside all other package
  ///   bumps.
  /// * If the current version of a 1-based amplify_flutter is `1.0.0` and it is
  ///   part of a feature change, it is bumped to `1.1.0` alongside all other
  ///   package bumps.
  ///
  /// This version change is reserved for new features denoted by the `feat`
  /// conventional commit tag.
  nonBreaking,

  /// A breaking version bump is reserved for breaking API changes. **These are
  /// rarely done.**
  ///
  /// * 0-based packages are allowed to break their APIs while 0-based and
  ///   follow the non-breaking version scheme described above, e.g.
  ///   `0.1.0` → `0.2.0`.
  ///
  /// * Stable packages (>1.0.0) bump to the next SemVer major version, e.g.
  ///   `1.0.0` → `2.0.0`.
  ///
  /// Packages opt in to this behavior by suffixing an exclamation point to
  /// their commit message title tag, e.g.
  ///
  /// - `feat(auth): A new feature` would be a non-breaking feature change.
  /// - `feat(auth)!: A new feature` would be a breaking feature change.
  breaking,
}

@yamlSerializable
class AftScript with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  const AftScript({
    required this.run,
    this.description,
    this.from = const PackageSelector.development(),
    this.failFast = false,
  });

  factory AftScript.fromJson(Map<String, Object?> json) =>
      _$AftScriptFromJson(json);

  /// The script or script template to run.
  ///
  /// Templated scripts are first processed using [mustache](https://mustache.github.io/mustache.5.html)
  /// using standard variables.
  final String run;

  /// An optional textual description of the command which is printed in help
  /// when running `aft run`.
  final String? description;

  /// Selects the packages in which to run the script.
  ///
  /// If not provided, defaults to [PackageSelector.development].
  final PackageSelector from;

  /// Whether to halt execution when an error is encountered by a script.
  ///
  /// If `false`, the script is run in all targeted packages regardless of the
  /// outcome in any one package.
  @JsonKey(name: 'fail-fast')
  final bool failFast;

  @override
  String get runtimeTypeName => 'AftScript';

  @override
  Map<String, Object?> toJson() => _$AftScriptToJson(this);
}

class PubspecConverter implements JsonConverter<Pubspec, Map<String, Object?>> {
  const PubspecConverter();

  @override
  Pubspec fromJson(Map<String, Object?> json) => Pubspec.fromJson(json);

  @override
  Map<String, Object?> toJson(Pubspec object) => object.toJson();
}

extension on Dependency {
  Map<String, Object?> toJson() {
    final dependency = this;
    var dependencyJson = <String, Object?>{};
    if (dependency is HostedDependency) {
      dependencyJson = {
        'version': dependency.version.toString(),
      };
      final details = dependency.hosted;
      if (details != null && details.url != null) {
        dependencyJson['hosted'] = details.url!.toString();
      }
    } else if (dependency is SdkDependency) {
      dependencyJson = {
        'version': dependency.version.toString(),
        'sdk': dependency.sdk,
      };
    } else if (dependency is GitDependency) {
      dependencyJson = {
        'git': {
          'url': dependency.url.toString(),
          if (dependency.ref != null) 'ref': dependency.ref,
          if (dependency.path != null) 'path': dependency.path,
        },
      };
    } else if (dependency is PathDependency) {
      dependencyJson = {
        'path': dependency.path,
      };
    }
    return dependencyJson;
  }
}

extension on Pubspec {
  Map<String, Object?> toJson() => {
        'name': name,
        if (version != null) 'version': version!.toString(),
        if (publishTo != null) 'publishTo': publishTo,
        if (environment != null)
          'environment': environment!.map((key, constraint) {
            return MapEntry(key, constraint?.toString());
          }),
        if (homepage != null) 'homepage': homepage,
        if (repository != null) 'repository': repository!.toString(),
        if (issueTracker != null) 'issueTracker': issueTracker!.toString(),
        if (description != null) 'description': description,
        'dependencies': dependencies.map((name, dependency) {
          return MapEntry(name, dependency.toJson());
        }),
        'dependencyOverrides': dependencyOverrides.map((name, dependency) {
          return MapEntry(name, dependency.toJson());
        }),
        'devDependencies': devDependencies.map((name, dependency) {
          return MapEntry(name, dependency.toJson());
        }),
        if (flutter != null) 'flutter': flutter,
      };
}
