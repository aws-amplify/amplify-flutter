// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

Future<String> createFile({
  required String path,
  required String content,
}) async {
  final fileBlob = html.Blob([content], 'text/plain');
  final file = html.File([fileBlob], path);
  return html.Url.createObjectUrl(file);
}
