// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aft/aft.dart';
import 'package:async/async.dart';
import 'package:pub/src/http.dart' as pub_http;

extension PubAction on AmplifyCommand {
  /// Runs "dart/flutter pub [arguments]" in the given [package].
  ///
  /// Throws an [Exception] if the command fails.
  Future<void> pubAction({
    required List<String> arguments,
    required PackageInfo package,
  }) async {
    // Set the internal HTTP client to one that can be reused multiple times.
    pub_http.innerHttpClient = httpClient;

    if (package.skipChecks) {
      return;
    }
    Result<void> result;
    switch (package.flavor) {
      case PackageFlavor.flutter:
        result = await Result.capture(
          runFlutterPub(
            arguments,
            package,
          ),
        );
        break;
      case PackageFlavor.dart:
        result = await Result.capture(
          createPubRunner().runDartPub(
            arguments,
            package,
          ),
        );
        break;
    }

    final error = result.asError;
    if (error != null) {
      logger
        ..error(error.error.toString())
        ..error(error.stackTrace.toString());
    }
  }
}
