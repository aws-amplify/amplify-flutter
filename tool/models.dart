import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy/ast.dart';

part 'models.g.dart';

/// The flavor of a package, e.g. Dart/Flutter.
enum PackageFlavor {
  flutter('Flutter'),
  dart('Dart');

  const PackageFlavor(this.displayName);
  final String displayName;
}

/// {@template amplify_tools.package_info}
/// Information about a Dart/Flutter package in the repo.
/// {@endtemplate}
class PackageInfo
    with AWSEquatable<PackageInfo>
    implements Comparable<PackageInfo> {
  /// {@macro amplify_tools.package_info}
  const PackageInfo({
    required this.name,
    required this.path,
    required this.usesMonoRepo,
    required this.pubspec,
    required this.flavor,
  });

  /// The name of the package.
  final String name;

  /// Absolute path to the package.
  final String path;

  /// Whether the package uses the mono_repo tool.
  final bool usesMonoRepo;

  /// The package's pubspec.
  final Pubspec pubspec;

  /// The package flavor, e.g. Dart or Flutter.
  final PackageFlavor flavor;

  @override
  List<Object?> get props => [
        name,
        path,
        usesMonoRepo,
        pubspec,
        flavor,
      ];

  @override
  int compareTo(PackageInfo other) {
    return path.compareTo(other.path);
  }
}

extension DirectoryX on Directory {
  /// Whether the package in this directory uses the `mono_repo` tool.
  bool get usesMonoRepo {
    final monoPkgPath = p.join(path, 'mono_pkg.yaml');
    return File(monoPkgPath).existsSync();
  }

  /// The pubspec for the package in this directory, if any.
  Pubspec? get pubspec {
    final pubspecPath = p.join(path, 'pubspec.yaml');
    final pubspecFile = File(pubspecPath);
    if (!pubspecFile.existsSync()) {
      return null;
    }
    final pubspecYaml = pubspecFile.readAsStringSync();
    return Pubspec.parse(pubspecYaml, sourceUrl: pubspecFile.uri);
  }
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

/// The typed representation of the `deps.yaml` file.
@JsonSerializable(
  anyMap: true,
  checked: true,
  createToJson: false,
  disallowUnrecognizedKeys: true,
)
@_VersionConstraintConverter()
class GlobalDependencyConfig {
  const GlobalDependencyConfig({
    required this.dependencies,
  });

  factory GlobalDependencyConfig.fromJson(Map<Object?, Object?>? json) =>
      _$GlobalDependencyConfigFromJson(json ?? const {});

  final Map<String, VersionConstraint> dependencies;
}

/// Typed representation of the `sdk.yaml` file.
@JsonSerializable(
  anyMap: true,
  checked: true,
  disallowUnrecognizedKeys: true,
)
@ShapeIdConverter()
class SdkConfig with AWSSerializable, AWSEquatable<SdkConfig> {
  const SdkConfig({
    required this.apis,
  });

  final Map<String, List<ShapeId>> apis;

  factory SdkConfig.fromJson(Map<Object?, Object?>? json) =>
      _$SdkConfigFromJson(json ?? const {});

  @override
  Map<String, Object?> toJson() => _$SdkConfigToJson(this);

  @override
  List<Object?> get props => [apis];
}

class _VersionConstraintConverter
    implements JsonConverter<VersionConstraint, String> {
  const _VersionConstraintConverter();

  @override
  VersionConstraint fromJson(String json) => VersionConstraint.parse(json);

  @override
  String toJson(VersionConstraint object) => object.toString();
}
