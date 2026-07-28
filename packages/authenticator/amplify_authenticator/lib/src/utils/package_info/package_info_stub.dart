// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_authenticator.get_app_name}
/// Returns the current application's name.
///
/// Split by platform so the web build never imports `package_info_plus`, which
/// transitively pulls in `dart:io` and breaks wasm compatibility.
/// {@endtemplate}
Future<String> getAppName() async {
  throw UnsupportedError(
    'No suitable implementation was found on this platform.',
  );
}
