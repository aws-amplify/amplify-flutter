// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:path_provider/path_provider.dart';

/// Returns the application support directory path on IO platforms.
Future<String?> getStoragePath() async {
  final dir = await getApplicationSupportDirectory();
  return dir.path;
}
