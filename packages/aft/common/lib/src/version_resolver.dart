// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:aft_common/aft_common.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:pub_semver/pub_semver.dart';

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
