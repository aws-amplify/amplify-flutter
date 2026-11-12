// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:yaml_edit/yaml_edit.dart';

final class GlobalConstraintsUpdater {
  GlobalConstraintsUpdater({
    required this.globalConstraints,
    required this.pinned,
    required this.resolveLatestVersion,
    required this.logger,
  });

  final Map<String, VersionConstraint> globalConstraints;

  /// Global dependencies whose constraints are left unchanged.
  final Set<String> pinned;

  /// Resolves the latest published version of a package, or `null` if the
  /// package is unpublished.
  final Future<Version?> Function(String package) resolveLatestVersion;

  final AWSLogger logger;

  /// Records the updated constraints for [globalConstraints] in [editor].
  ///
  /// Returns a description of every dependency which could not be updated.
  Future<List<String>> update(YamlEditor editor) async {
    final failedUpdates = <String>[];
    for (final entry in globalConstraints.entries) {
      final package = entry.key;
      final versionConstraint = entry.value;
      if (pinned.contains(package)) {
        continue;
      }

      void updateConstraint(VersionConstraint newVersionConstraint) {
        editor.update([
          'dependencies',
          package,
        ], newVersionConstraint.toString());
      }

      // Get the currently published version of the package.
      try {
        final latestVersion = await resolveLatestVersion(package);
        if (latestVersion == null) {
          failedUpdates.add('No versions found for package: $package');
          continue;
        }

        // Update the constraint to include `latestVersion` as its new upper
        // bound.
        if (versionConstraint is Version) {
          // For pinned versions, update them to the latest version (do not
          // create a range).
          if (latestVersion != versionConstraint) {
            updateConstraint(
              maxBy([versionConstraint, latestVersion], (v) => v)!,
            );
          }
        } else {
          // For ranged versions:
          // - If the range specifies a lower bound only, e.g. `^1.0.0`, do
          //   nothing but warn if a new breaking change is available.
          // - If the range specifies a sliding window for a single minor
          //   version, e.g. `>=1.1.0 <1.2.0`, and the latest version is greater
          //   than the upper bound, slide the window.
          // - If the range specifies a window larger than a single minor
          //   version, keep the lower bound and move the upper bound unless
          //   it's a major version bump.
          versionConstraint as VersionRange;
          final lowerBound = versionConstraint.min;
          final includeLowerBound = versionConstraint.includeMin;
          final upperBound = versionConstraint.max;
          final includeUpperBound = versionConstraint.includeMax;
          if (lowerBound == null || upperBound == null) {
            throw ArgumentError.value(
              lowerBound,
              'lowerBound',
              'Constaints without a lower or upper bound are not supported',
            );
          }
          // ^1.0.0
          if (versionConstraint ==
              VersionConstraint.compatibleWith(lowerBound)) {
            if (latestVersion > upperBound) {
              logger.warn(
                'Breaking change detected for $package: $latestVersion '
                '(current constraint: $versionConstraint)',
              );
            }
            continue;
          }
          // ">=1.1.0 <1.2.0"
          if (lowerBound.major == upperBound.major &&
              lowerBound.minor == upperBound.minor - 1 &&
              includeLowerBound &&
              !includeUpperBound) {
            if (latestVersion < upperBound) {
              continue;
            }
            updateConstraint(
              VersionRange(
                min: Version(latestVersion.major, latestVersion.minor, 0),
                includeMin: true,
                max: Version(latestVersion.major, latestVersion.minor + 1, 0),
                includeMax: false,
              ),
            );
            continue;
          }
          if (latestVersion >= lowerBound.nextBreaking) {
            logger.warn(
              'Breaking change detected for $package: $latestVersion '
              '(current constraint: $versionConstraint)',
            );
            continue;
          }
          // ">=1.1.0 <1.4.3"
          updateConstraint(
            VersionRange(
              min: lowerBound,
              includeMin: includeLowerBound,
              max: maxBy([latestVersion, upperBound], (v) => v),
              includeMax: includeUpperBound,
            ),
          );
        }
      } on Exception catch (e) {
        failedUpdates.add('$package: $e');
        continue;
      }
    }
    return failedUpdates;
  }
}
