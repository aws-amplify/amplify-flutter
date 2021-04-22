import 'package:flutter/material.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';

class ImageUploader extends StatelessWidget {
  void _upload(BuildContext context) async {
    try {
      print('In upload');
      // Uploading the file with options
      File local = await FilePicker.getFile(type: FileType.image);
      local.existsSync();
      final key = new DateTime.now().toString();
      Map<String, String> metadata = <String, String>{};
      metadata['name'] = 'filename';
      metadata['desc'] = 'A test file';
      S3UploadFileOptions options = S3UploadFileOptions(
          accessLevel: StorageAccessLevel.guest, metadata: metadata);
      UploadFileResult result = await Amplify.Storage.uploadFile(
          key: key, local: local, options: options);

      print('File uploaded.  Key: ' + result.key);
      Navigator.pop(context, result.key);
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
