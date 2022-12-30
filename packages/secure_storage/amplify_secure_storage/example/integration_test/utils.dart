// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:path_provider/path_provider.dart';

/// Mimics an app uninstall on Linux & Windows by removing
/// all files in the application support directory
Future<void> uninstall() async {
  final dir = await getApplicationSupportDirectory();
  await dir.delete(recursive: true);
}
