// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:path_provider/path_provider.dart';

/// {@template flutter_path_provider}
/// A [AppPathProvider] that uses the [path_provider](https://pub.dev/packages/path_provider)
/// package to get the application support and temporary paths.
/// {@endtemplate}
class FlutterPathProvider implements AppPathProvider {
  @override
  Future<String> getApplicationSupportPath() async {
    final directory = await getApplicationSupportDirectory();
    return directory.path;
  }

  @override
  Future<String> getTemporaryPath() async {
    final directory = await getTemporaryDirectory();
    return directory.path;
  }
}
