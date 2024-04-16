// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';

import 'package:aft/aft.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:glob/glob.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:path/path.dart' as p;

class _PathSet extends DelegatingSet<String> {
  _PathSet(Iterable<String> paths)
      : super(
          HashSet(equals: p.equals, hashCode: p.hash)..addAll(paths),
        );
}

/// {@template aft.models.package_selector}
/// Defines a subset of the repo's packages.
/// {@endtemplate}
abstract class PackageSelector with AWSSerializable<Object?> {
  /// {@macro aft.models.package_selector}
  factory PackageSelector({
    PackageSelector? include,
    PackageSelector? exclude,
  }) = _PackageSelector;

  /// Deserializes a [PackageSelector] from JSON.
  ///
  /// Selectors can be a:
  /// - A built-in selector:
  ///   - `all`: All packages in the repo
  ///   - `dev`: All development packages (those which are neither examples nor tests)
  ///   - `example`: Example apps
  ///   - `test`: Packages used exclusively for testing
  ///   - `root`: Selects the root repo directory
  ///   - `current`: Selects the current directory
  ///     `dart`: All Dart packages
  ///     `flutter`: All Flutter packages
  /// - A [String] which is not a built-in selector:
  ///   - A package name (e.g. `amplify_flutter`)
  ///   - A component name (e.g. `Amplify Dart`)
  ///   - A glob which is matched against the package name and path (e.g. `*auth*`)
  /// - A [List] of selectors which get OR'd together.
  /// - A [Map] which has keys for one of:
  ///   - `include`/`exclude`: Explicitly includes/excludes a package selector
  ///   - `and`: A list of selectors which are AND'd together
  ///   - `or`: A list of selectors which are OR'd together.
  factory PackageSelector.fromJson(Object? json) {
    if (json is String) {
      switch (json) {
        case 'all':
          return const PackageSelector.all();
        case '':
        case 'dev':
          return const PackageSelector.development();
        case 'example':
          return const PackageSelector.example();
        case 'test':
          return const PackageSelector.test();
        case 'root':
          return const PackageSelector.root();
        case 'current':
          return const PackageSelector.current();
        case 'dart':
          return const PackageSelector.dart();
        case 'flutter':
          return const PackageSelector.flutter();
      }
      return PackageSelector.packageOrComponent(json);
    }
    if (json is List) {
      return PackageSelector.or(
        json.map(PackageSelector.fromJson).toList(),
      );
    }
    if (json is Map) {
      final include = json['include'];
      final exclude = json['exclude'];
      final and = json['and'] as List<Object?>?;
      final or = json['or'] as List<Object?>?;
      if (include != null || exclude != null) {
        if (and != null || or != null) {
          throw ArgumentError('include/exclude cannot be used with and/or');
        }
        return PackageSelector(
          include: include == null ? null : PackageSelector.fromJson(include),
          exclude: exclude == null ? null : PackageSelector.fromJson(exclude),
        );
      }
      if (and != null) {
        if (include != null || exclude != null || or != null) {
          throw ArgumentError('and cannot be used with include/exclude/or');
        }
        return PackageSelector.and(
          and.map(PackageSelector.fromJson).toList(),
        );
      }
      if (or != null) {
        if (include != null || exclude != null || and != null) {
          throw ArgumentError('and cannot be used with include/exclude/and');
        }
        return PackageSelector.or(
          or.map(PackageSelector.fromJson).toList(),
        );
      }
    }
    throw ArgumentError(
      'Invalid package selector. Expected a String, List, or '
      'Map with keys: [include/exclude, and, or].',
    );
  }

  /// {@macro aft.models.package_selector.all}
  const factory PackageSelector.all() = _AllPackageSelector;

  /// {@macro aft.models.package_selector.development}
  const factory PackageSelector.development() = _DevelopmentPackageSelector;

  /// {@macro aft.models.package_selector.example}
  const factory PackageSelector.example() = _ExamplePackageSelector;

  /// {@macro aft.models.package_selector.test}
  const factory PackageSelector.test() = _TestPackageSelector;

  /// {@macro aft.models.package_selector.dart}
  const factory PackageSelector.dart() = _DartPackageSelector;

  /// {@macro aft.models.package_selector.flutter}
  const factory PackageSelector.flutter() = _FlutterPackageSelector;

  /// {@macro aft.models.package_selector.root}
  const factory PackageSelector.root() = _RootPackageSelector;

  /// {@macro aft.models.package_selector.current}
  const factory PackageSelector.current() = _CurrentPackageSelector;

  /// {@macro aft.models.package_selector.or}
  const factory PackageSelector.or(List<PackageSelector> selectors) =
      _OrPackageSelector;

  /// {@macro aft.models.package_selector.and}
  const factory PackageSelector.and(List<PackageSelector> selectors) =
      _AndPackageSelector;

  /// {@macro aft.models.package_selector.package_or_component}
  const factory PackageSelector.packageOrComponent(String selector) =
      _PackageOrComponentSelector;

  const PackageSelector._();

  /// Iterates all paths selected over the given [config].
  Iterable<String> allPaths(AftConfig config);
}

class _PackageSelector extends PackageSelector {
  _PackageSelector({
    PackageSelector? include,
    PackageSelector? exclude,
  })  : _include = include ?? const PackageSelector.all(),
        _exclude = exclude,
        super._();

  final PackageSelector _include;
  final PackageSelector? _exclude;

  @override
  Iterable<String> allPaths(AftConfig config) {
    final include = _PathSet(_include.allPaths(config));
    final exclude = _PathSet(_exclude?.allPaths(config) ?? const {});
    return include.difference(exclude);
  }

  @override
  Object? toJson() => {
        'include': _include.toJson(),
        if (_exclude != null) 'exclude': _exclude.toJson(),
      };
}

/// {@template aft.models.package_selector.package_or_component}
/// Selects all packages whose name, path or component matches the given
/// [selector].
/// {@endtemplate}
class _PackageOrComponentSelector extends PackageSelector {
  const _PackageOrComponentSelector(this.selector) : super._();

  final String selector;

  @override
  Iterable<String> allPaths(AftConfig config) sync* {
    // Matches patterns of the form:
    // - package name, e.g. `amplify_auth_cognito_dart`
    // - package glob, e.g. `*auth*`
    // - component name, e.g. `Smithy`
    final includeGlob = Glob(selector);
    for (final package in config.allPackages.values) {
      // Use the relative path since `**` globs don't match against absolute
      // paths.
      final relativePath = p.relative(
        package.path,
        from: config.rootDirectory.path,
      );
      if (includeGlob.matches(package.name) ||
          includeGlob.matches(relativePath) ||
          selector == config.componentForPackage(package.name)) {
        yield package.path;
      }
    }
  }

  @override
  Object? toJson() => selector;
}

/// {@template aft.models.package_selector.all}
/// Selects all packages in the repository.
/// {@endtemplate}
class _AllPackageSelector extends PackageSelector {
  const _AllPackageSelector() : super._();

  @override
  Iterable<String> allPaths(AftConfig config) sync* {
    for (final package in config.allPackages.values) {
      yield package.path;
    }
  }

  @override
  Object? toJson() => 'all';
}

/// {@template aft.models.package_selector.development}
/// Selects all development packages (those which are neither examples nor
/// tests).
/// {@endtemplate}
class _DevelopmentPackageSelector extends PackageSelector {
  const _DevelopmentPackageSelector() : super._();

  @override
  Iterable<String> allPaths(AftConfig config) sync* {
    for (final package in config.allPackages.values) {
      if (package.isDevelopmentPackage) {
        yield package.path;
      }
    }
  }

  @override
  Object? toJson() => 'dev';
}

/// {@template aft.models.package_selector.example}
/// Selects all example packages in the repository.
/// {@endtemplate}
class _ExamplePackageSelector extends PackageSelector {
  const _ExamplePackageSelector() : super._();

  @override
  Iterable<String> allPaths(AftConfig config) sync* {
    for (final package in config.allPackages.values) {
      if (package.isExample) {
        yield package.path;
      }
    }
  }

  @override
  Object? toJson() => 'example';
}

/// {@template aft.models.package_selector.test}
/// Selects all packages in the repository which are used exclusively for
/// testing.
/// {@endtemplate}
class _TestPackageSelector extends PackageSelector {
  const _TestPackageSelector() : super._();

  @override
  Iterable<String> allPaths(AftConfig config) sync* {
    for (final package in config.allPackages.values) {
      if (package.isTestPackage) {
        yield package.path;
      }
    }
  }

  @override
  Object? toJson() => 'test';
}

/// {@template aft.models.package_selector.dart}
/// Selects all Dart-only packages in the repository.
/// {@endtemplate}
class _DartPackageSelector extends PackageSelector {
  const _DartPackageSelector() : super._();

  @override
  Iterable<String> allPaths(AftConfig config) sync* {
    for (final package in config.allPackages.values) {
      if (package.flavor == PackageFlavor.dart) {
        yield package.path;
      }
    }
  }

  @override
  Object? toJson() => 'dart';
}

/// {@template aft.models.package_selector.flutter}
/// Selects all Flutter packages in the repository (i.e. those packages which
/// have a dependency on `flutter`).
/// {@endtemplate}
class _FlutterPackageSelector extends PackageSelector {
  const _FlutterPackageSelector() : super._();

  @override
  Iterable<String> allPaths(AftConfig config) sync* {
    for (final package in config.allPackages.values) {
      if (package.flavor == PackageFlavor.flutter) {
        yield package.path;
      }
    }
  }

  @override
  Object? toJson() => 'flutter';
}

/// {@template aft.models.package_selector.root}
/// Selects the root directory.
///
/// This is a pseudo-package selector which is useful in running [AftScript]s
/// from the root of the repo.
/// {@endtemplate}
class _RootPackageSelector extends PackageSelector {
  const _RootPackageSelector() : super._();

  @override
  Iterable<String> allPaths(AftConfig config) {
    return [config.rootDirectory.toFilePath()];
  }

  @override
  Object? toJson() => 'root';
}

/// {@template aft.models.package_selector.current}
/// Selects the current working directory.
///
/// This is a pseudo-package selector which is useful in running [AftScript]s
/// from the current working directory.
/// {@endtemplate}
class _CurrentPackageSelector extends PackageSelector {
  const _CurrentPackageSelector() : super._();

  @override
  Iterable<String> allPaths(AftConfig config) {
    return [config.workingDirectory.toFilePath()];
  }

  @override
  Object? toJson() => 'current';
}

/// {@template aft.models.package_selector.or}
/// Selects all packages which match one of the given package [selectors].
/// {@endtemplate}
class _OrPackageSelector extends PackageSelector {
  const _OrPackageSelector(this.selectors) : super._();

  final List<PackageSelector> selectors;

  @override
  Iterable<String> allPaths(AftConfig config) sync* {
    for (final selector in selectors) {
      yield* selector.allPaths(config);
    }
  }

  @override
  Object? toJson() => {
        'or': selectors.map((selector) => selector.toJson()).toList(),
      };
}

/// {@template aft.models.package_selector.and}
/// Selects all packages which match all of the given package [selectors].
/// {@endtemplate}
class _AndPackageSelector extends PackageSelector {
  const _AndPackageSelector(this.selectors) : super._();

  final List<PackageSelector> selectors;

  @override
  Iterable<String> allPaths(AftConfig config) {
    return selectors.map<Set<String>>((selector) {
      return _PathSet(selector.allPaths(config));
    }).reduce((value, element) {
      return value.intersection(element);
    });
  }

  @override
  Object? toJson() => {
        'and': selectors.map((selector) => selector.toJson()).toList(),
      };
}

class PackageSelectorConverter
    implements JsonConverter<PackageSelector, Object?> {
  const PackageSelectorConverter();

  @override
  PackageSelector fromJson(Object? json) {
    if (json == null || json == '') {
      return const PackageSelector.development();
    }
    return PackageSelector.fromJson(json);
  }

  @override
  Object? toJson(PackageSelector object) => object.toJson();
}
