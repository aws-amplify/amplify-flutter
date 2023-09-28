// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:aft_common/aft_common.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:pub_semver/pub_semver.dart';

/// {@template aft_common.constraint_updater}
/// Calculates necessary constraint changes to satisfy latest versions.
/// {@endtemplate}
final class ConstraintUpdater {
  /// {@macro aft_common.constraint_updater}
  ConstraintUpdater({
    AWSLogger? logger,
    this.includeBreakingChanges = false,
  }) : _logger = logger ?? AWSLogger().createChild('ConstraintUpdater');

  final AWSLogger _logger;

  /// Whether to consider breaking changes when updating constraints.
  ///
  /// Defaults to `false`.
  final bool includeBreakingChanges;

  /// Checks if [latestVersion] warrants a new version constraint.
  ///
  /// Returns `null` if the [currentConstraint] is sufficient to accommodate
  /// the [latestVersion].
  VersionConstraint? updateFor(
    String dependency,
    VersionConstraint currentConstraint,
    Version latestVersion,
  ) {
    // TODO: Assert no pre-release/build tags (+) in constraints
    // TODO: Enforce all third-party deps are tracked in root pubspec
    // Update the constraint to include `latestVersion` as its new upper
    // bound.
    switch (currentConstraint) {
      // For pinned versions, update them to the latest version (do not
      // create a range).
      case final Version currentVersion:
        if (latestVersion == currentVersion) {
          return null;
        }
        if (latestVersion >= currentVersion.nextBreaking &&
            !includeBreakingChanges) {
          _logger.warn(
            'Breaking change detected for $dependency: $latestVersion '
            '(current constraint: $currentVersion)',
          );
          return null;
        }
        return latestVersion;

      // For ranged versions, slide the window appropriately, respecting
      // whether the current constraint includes its upper/lower bounds.
      case final currentConstraint as VersionRange:
        // Do nothing if the current range includes the latest version.
        if (currentConstraint.allows(latestVersion)) {
          return null;
        }

        final lowerBound = currentConstraint.min;
        final includeLowerBound = currentConstraint.includeMin;
        final upperBound = currentConstraint.max;
        final includeUpperBound = currentConstraint.includeMax;
        if (lowerBound == null || upperBound == null) {
          throw ArgumentError.value(
            lowerBound,
            'lowerBound',
            'Constaints without a lower or upper bound are not supported',
          );
        }

        final nextBreaking = includeUpperBound
            ? upperBound.nextBreaking
            : lowerBound.nextBreaking;
        final isBreakingChange = latestVersion >= nextBreaking;
        if (isBreakingChange && !includeBreakingChanges) {
          _logger.warn(
            'Breaking change detected for $dependency: $latestVersion '
            '(current constraint: $currentConstraint)',
          );
          return null;
        }

        // Slide the window.
        final versionWindow = VersionWindow.fromRange(currentConstraint);
        switch ((versionWindow, isBreaking: isBreakingChange)) {
          // ">3.0.5 <6.0.0"
          case (VersionWindow.major, isBreaking: _):
            assert(isBreakingChange, 'Multiple major is always breaking');
            return VersionRange(
              min: lowerBound,
              includeMin: includeLowerBound,
              max: includeUpperBound ? latestVersion : latestVersion.nextMajor,
              includeMax: includeUpperBound,
            );

          // ">=1.1.0 <1.2.0"
          case (VersionWindow.singleMinor, isBreaking: _):
            return VersionRange(
              min: Version(latestVersion.major, latestVersion.minor, 0),
              includeMin: true,
              max: latestVersion.nextMinor,
              includeMax: false,
            );

          // ">=1.1.0 <1.4.3"
          case (VersionWindow.multipleMinor, isBreaking: true):
            return VersionRange(
              // Workaround for pre-v1 versions where isBreaking=true if
              // the window spans multiple 0.x versions.
              min: maxBy(
                [
                  Version(latestVersion.major, 0, 0),
                  lowerBound,
                ],
                (v) => v,
              ),
              includeMin: true,
              max: includeUpperBound ? latestVersion : latestVersion.nextMinor,
              includeMax: includeUpperBound,
            );
          case (VersionWindow.multipleMinor, isBreaking: false):
            return VersionRange(
              min: lowerBound,
              includeMin: includeLowerBound,
              max: includeUpperBound ? latestVersion : latestVersion.nextMinor,
              includeMax: includeUpperBound,
            );

          // ">=3.0.6 <=3.0.8"
          case (VersionWindow.patch, isBreaking: true):
            return VersionRange(
              min: latestVersion,
              includeMin: true,
              max: latestVersion.nextPatch,
              includeMax: false,
            );
          case (VersionWindow.patch, isBreaking: false):
            return VersionRange(
              min: lowerBound,
              includeMin: includeLowerBound,
              max: latestVersion,
              includeMax: true,
            );
        }
    }
  }
}

/// Resolves hosted dependency versions.
abstract interface class VersionResolver {
  /// Retrieves the latest published version of [dependency].
  FutureOr<Version?> latestVersion(String dependency);
}

final class PubVersionResolver implements VersionResolver {
  PubVersionResolver({
    AWSHttpClient? httpClient,
  }) : httpClient = httpClient ?? AWSHttpClient();

  final AWSHttpClient httpClient;
  final Map<String, PubVersionInfo?> _cache = {};

  /// Resolves the latest version information from `pub.dev`.
  Future<PubVersionInfo?> _resolveVersionInfo(String package) async {
    // Get the currently published version of the package.
    final uri = Uri.parse('https://pub.dev/api/packages/$package');
    final request = AWSHttpRequest.get(
      uri,
      headers: const {AWSHeaders.accept: 'application/vnd.pub.v2+json'},
    );
    final resp = await request.send().response;
    final body = await resp.decodeBody();

    // Package is unpublished
    if (resp.statusCode == 404) {
      return null;
    }
    if (resp.statusCode != 200) {
      throw AWSHttpException(request, body);
    }

    final respJson = jsonDecode(body) as Map<String, Object?>;
    final versions = (respJson['versions'] as List<Object?>?) ?? <Object?>[];
    final semvers = <Version>[];
    for (final version in versions) {
      final map = (version as Map).cast<String, Object?>();
      final semver = map['version'] as String?;
      if (semver == null) {
        continue;
      }
      semvers.add(Version.parse(semver));
    }

    return _cache[package] = PubVersionInfo(semvers..sort());
  }

  @override
  Future<Version?> latestVersion(String dependency) async {
    var versionInfo = _cache[dependency];
    if (versionInfo == null && !_cache.containsKey(dependency)) {
      versionInfo = await _resolveVersionInfo(dependency);
    }
    return maxBy(
      [
        // Only include pre-releases if the package has not reached 1.0 yet.
        if (versionInfo?.latestPrerelease case final latestPrerelease?
            when latestPrerelease < Version(1, 0, 0))
          latestPrerelease,
        if (versionInfo?.latestVersion case final latestVersion?) latestVersion,
      ],
      (v) => v,
    );
  }
}

/// The window which a [VersionRange] spans.
enum VersionWindow {
  /// Spans only patch versions, e.g. `>=3.0.6 <3.0.8`
  patch,

  /// Spans a single minor version, e.g. `>=1.1.0 <1.2.0`
  singleMinor,

  /// Spans multiple minor versions, e.g. `>=1.0.5 <1.4.3`
  multipleMinor,

  /// Spans multiple major versions, e.g. `>=1.0.0 <3.0.0`
  major;

  /// Calculates the version window of [range] by examining the difference
  /// between the upper and lower bounds.
  factory VersionWindow.fromRange(VersionRange range) {
    final lowerBound = range.min ?? Version.none;
    final upperBound = range.max ?? Version.none;
    return switch ((
      upperBound.major - lowerBound.major,
      upperBound.minor - lowerBound.minor,
      upperBound.patch - lowerBound.patch,
    )) {
      (> 0, _, _) => VersionWindow.major,
      (0, 1, 0) when range.includeMin && !range.includeMax =>
        VersionWindow.singleMinor,
      (0, >= 1, _) => VersionWindow.multipleMinor,
      _ => VersionWindow.patch,
    };
  }
}
