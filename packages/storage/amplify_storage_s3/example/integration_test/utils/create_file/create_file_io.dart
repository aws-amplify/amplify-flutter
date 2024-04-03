// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io' as io;

import 'package:path/path.dart' as p;

Future<String> createFile(String path, List<int> bytes) async {
  final tempPath = io.Directory.systemTemp.path;
  final file = io.File(p.join(tempPath, path));
  await file.create(recursive: true);
  await file.writeAsBytes(bytes);
  return file.path;
}
