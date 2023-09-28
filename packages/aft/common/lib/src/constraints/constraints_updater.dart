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

        // Assert that pre-release/build tags are not used in any constraints.
        if (lowerBound.preRelease.isNotEmpty ||
            switch (upperBound.preRelease) {
              [] => false,
              // ">=1.0.0 <1.1.0" actually sets a pre-release upper bound
              [0] when !includeUpperBound => false,
              _ => true,
            }) {
          throw ArgumentError.value(
            currentConstraint.toString(),
            'currentConstraint',
            'Constraint on "$dependency" specifies a pre-release, which is not allowed',
          );
        }
        if (lowerBound.build.isNotEmpty || upperBound.build.isNotEmpty) {
          throw ArgumentError.value(
            currentConstraint.toString(),
            'currentConstraint',
            'Constraint on "$dependency" specifies a build tag, which is not allowed',
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
