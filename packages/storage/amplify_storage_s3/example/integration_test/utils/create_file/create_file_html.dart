// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

Future<String> createFile({
  required String path,
  required String content,
  String contentType = 'text/plain',
}) async {
  final file = await createHtmlFile(
    path: path,
    content: content,
    contentType: contentType,
  );
  return html.Url.createObjectUrl(file);
}

Future<html.File> createHtmlFile({
  required String path,
  required String content,
  String contentType = 'text/plain',
}) async {
  final fileBlob = html.Blob([content], contentType);
  final file = html.File([fileBlob], path, {'type': fileBlob.type});
  return file;
}
