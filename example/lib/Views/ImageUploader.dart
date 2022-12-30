// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class ImageUploader extends StatelessWidget {
  void _upload(BuildContext context) async {
    List<PlatformFile>? _paths;
    try {
      // TODO(HuiSF): update example with correct code
      print('In upload');
      // Uploading the file with options
      _paths =
          (await FilePicker.platform.pickFiles(type: FileType.image))?.files;

      File local = File(_paths!.single.path!);
      local.existsSync();
      // final key = new DateTime.now().toString();
      Map<String, String> metadata = <String, String>{};
      metadata['name'] = 'filename';
      metadata['desc'] = 'A test file';
      // S3UploadFileOptions options = S3UploadFileOptions(
      //     accessLevel: StorageAccessLevel.guest, metadata: metadata);
      // UploadFileResult result = await Amplify.Storage.uploadFile(
      //     key: key, local: local, options: options);

      // print('File uploaded.  Key: ' + result.key);
      // Navigator.pop(context, result.key);
    } catch (e) {
      print('UploadFile Err: ' + e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(
        child: const Text("Upload Image"),
        onPressed: () {
          _upload(context);
        },
      )
    ]);
  }
}
