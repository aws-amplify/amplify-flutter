import 'dart:async';
import 'dart:convert';

import 'package:aft_common/aft_common.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:pub_semver/pub_semver.dart';

abstract base class VersionResolver {
  const VersionResolver({required this.logger});

  final AWSLogger logger;

  FutureOr<Version?> latestVersion(String package);

  VersionConstraint? updateFor(
    String package,
    VersionConstraint currentConstraint,
    Version latestVersion, {
    bool includeBreakingChanges = false,
  }) {
    // Update the constraint to include `latestVersion` as its new upper
    // bound.
    switch (currentConstraint) {
      case Version _:
        // For pinned versions, update them to the latest version (do not
        // create a range).
        if (latestVersion == currentConstraint) {
          return null;
        }
        if (latestVersion >= currentConstraint.nextBreaking &&
            !includeBreakingChanges) {
          logger.warn(
            'Breaking change detected for $package: $latestVersion '
            '(current constraint: $currentConstraint)',
          );
          return null;
        }
        return latestVersion;
      case final currentConstraint as VersionRange:
        // For ranged versions:
        // - If the range specifies a lower bound only, e.g. `^1.0.0`, do
        //   nothing but warn if a new breaking change is available.
        // - If the range specifies a sliding window for a single minor
        //   version, e.g. `>=1.1.0 <1.2.0`, and the latest version is greater
        //   than the upper bound, slide the window.
        // - If the range specifies a window larger than a single minor
        //   version, keep the lower bound and move the upper bound unless
        //   it's a major version bump.
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
        // ^1.0.0
        if (currentConstraint == VersionConstraint.compatibleWith(lowerBound)) {
          if (latestVersion < upperBound) {
            return null;
          }
          if (includeBreakingChanges) {
            return VersionConstraint.compatibleWith(latestVersion);
          }
          logger.warn(
            'Breaking change detected for $package: $latestVersion '
            '(current constraint: $currentConstraint)',
          );
          return null;
        }
        final versionWindow = switch ((
          upperBound.major - lowerBound.major,
          upperBound.minor - lowerBound.minor,
        )) {
          (> 0, _) => _VersionWindow.major,
          (_, > 0) => _VersionWindow.minor,
          _ => _VersionWindow.patch,
        };

        switch (versionWindow) {
          case _VersionWindow.major:
          case _VersionWindow.minor:
          case _VersionWindow.patch:
        }

        // ">=1.1.0 <1.2.0"
        if (lowerBound.major == upperBound.major &&
            lowerBound.minor == upperBound.minor - 1 &&
            includeLowerBound &&
            !includeUpperBound) {
          if (latestVersion < upperBound) {
            return null;
          }
          return VersionRange(
            min: Version(latestVersion.major, latestVersion.minor, 0),
            includeMin: true,
            max: Version(latestVersion.major, latestVersion.minor + 1, 0),
            includeMax: false,
          );
        }
        if ((includeUpperBound
            ? latestVersion <= upperBound
            : latestVersion < upperBound)) {
          return null;
        }
        if (latestVersion >= upperBound.nextBreaking &&
            !includeBreakingChanges) {
          logger.warn(
            'Breaking change detected for $package: $latestVersion '
            '(current constraint: $currentConstraint)',
          );
          return null;
        }
        // ">=1.1.0 <1.4.3"
        return VersionRange(
          min: lowerBound,
          includeMin: includeLowerBound,
          max: latestVersion,
          includeMax: includeUpperBound,
        );
    }
  }
}

final class PubVersionResolver extends VersionResolver {
  PubVersionResolver({
    AWSHttpClient? httpClient,
    AWSLogger? logger,
  })  : httpClient = httpClient ?? AWSHttpClient(),
        super(logger: logger ?? AWSLogger().createChild('PubVersionResolver'));

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
  Future<Version?> latestVersion(String package) async {
    var versionInfo = _cache[package];
    if (versionInfo == null && !_cache.containsKey(package)) {
      versionInfo = await _resolveVersionInfo(package);
    }
    return maxBy(
      [
        if (versionInfo?.latestPrerelease case final latestPrerelease?)
          latestPrerelease,
        if (versionInfo?.latestVersion case final latestVersion?) latestVersion,
      ],
      (v) => v,
    );
  }
}

enum _VersionWindow { patch, minor, major }
