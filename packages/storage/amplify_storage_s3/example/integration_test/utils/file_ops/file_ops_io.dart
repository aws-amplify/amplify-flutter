// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';
import 'dart:typed_data';

Future<Uint8List> readFile({
  required String path,
}) async {
  final file = File(path);
  return file.readAsBytes();
}
