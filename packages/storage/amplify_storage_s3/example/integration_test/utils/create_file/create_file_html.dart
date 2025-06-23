// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore: deprecated_member_use, avoid_web_libraries_in_flutter
import 'dart:js_interop';

import 'package:web/web.dart';

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
  return URL.createObjectURL(file);
}

Future<File> createHtmlFile({
  required String path,
  required String content,
  String contentType = 'text/plain',
}) async {
  final fileBlob = Blob(
    [content.toJS].toJS,
    BlobPropertyBag(type: contentType),
  );
  final file = File(
    [fileBlob].toJS,
    path,
    FilePropertyBag(type: fileBlob.type),
  );
  return file;
}
