// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

Future<String> createFile(String path, List<int> bytes) async {
  final fileBlob = html.Blob(bytes);
  final file = html.File([fileBlob], path);
  return html.Url.createObjectUrl(file);
}
