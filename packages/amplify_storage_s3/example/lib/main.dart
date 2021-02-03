/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'amplifyconfiguration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isAmplifyConfigured = false;
  String _uploadFileResult = '';
  String _getUrlResult = '';
  String _removeResult = '';

  @override
  void initState() {
    super.initState();
  }

  void configureAmplify() async {
    // First add plugins (Amplify native requirements)
    AmplifyStorageS3 storage = new AmplifyStorageS3();
    AmplifyAuthCognito auth = new AmplifyAuthCognito();
    Amplify.addPlugins([auth, storage]);

    try {
      // Configure
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      print(
          'Amplify was already configured. Looks like app restarted on android.');
    }

    setState(() {
      _isAmplifyConfigured = true;
    });
  }

  void upload() async {
    try {
      print('In upload');
      // Uploading the file with options
      File local = await FilePicker.getFile(type: FileType.image);
      final key = new DateTime.now().toString();
      Map<String, String> metadata = <String, String>{};
      metadata['name'] = 'filename';
      metadata['desc'] = 'A test file';
      S3UploadFileOptions options = S3UploadFileOptions(
          accessLevel: StorageAccessLevel.guest, metadata: metadata);
      UploadFileResult result = await Amplify.Storage.uploadFile(
          key: key, local: local, options: options);
      setState(() {
        _uploadFileResult = result.key;
      });
    } catch (e) {
      print('UploadFile Err: ' + e.toString());
    }
  }

  void getUrl() async {
    try {
      print('In getUrl');
      String key = _uploadFileResult;
      S3GetUrlOptions options = S3GetUrlOptions(
          accessLevel: StorageAccessLevel.guest, expires: 10000);
      GetUrlResult result =
          await Amplify.Storage.getUrl(key: key, options: options);

      setState(() {
        _getUrlResult = result.url;
      });
    } catch (e) {
      print('GetUrl Err: ' + e.toString());
    }
  }

  void remove() async {
    try {
      print('In remove');
      String key = _uploadFileResult;
      RemoveOptions options =
          RemoveOptions(accessLevel: StorageAccessLevel.guest);
      RemoveResult result =
          await Amplify.Storage.remove(key: key, options: options);

      setState(() {
        _removeResult = result.key;
      });
      print('_removeResult:' + _removeResult);
    } catch (e) {
      print('Remove Err: ' + e.toString());
    }
  }

  void list() async {
    try {
      print('In list');
      S3ListOptions options =
          S3ListOptions(accessLevel: StorageAccessLevel.guest);
      ListResult result = await Amplify.Storage.list(options: options);
      print('List Result:');
      for (StorageItem item in result.items) {
        print(
            'Item: { key:${item.key}, eTag:${item.eTag}, lastModified:${item.lastModified}, size:${item.size}');
      }
    } catch (e) {
      print('List Err: ' + e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Storage S3 Plugin Example App'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.all(10.0)),
                  ElevatedButton(
                    onPressed: _isAmplifyConfigured ? null : configureAmplify,
                    child: const Text('Configure'),
                  ),
                  const Padding(padding: EdgeInsets.all(5.0)),
                  Text('Amplify Configured: $_isAmplifyConfigured'),
                  const Padding(padding: EdgeInsets.all(10.0)),
                  ElevatedButton(
                    onPressed: upload,
                    child: const Text('Upload File'),
                  ),
                  const Padding(padding: EdgeInsets.all(5.0)),
                  Text('Uploaded File: $_uploadFileResult'),
                  const Padding(padding: EdgeInsets.all(5.0)),
                  ElevatedButton(
                    onPressed: remove,
                    child: const Text('Remove uploaded File'),
                  ),
                  const Padding(padding: EdgeInsets.all(5.0)),
                  Text('Removed File: $_removeResult'),
                  const Padding(padding: EdgeInsets.all(5.0)),
                  ElevatedButton(
                    onPressed: list,
                    child: const Text('List Files'),
                  ),
                  const Padding(padding: EdgeInsets.all(5.0)),
                  ElevatedButton(
                    onPressed: getUrl,
                    child: const Text('GetUrl for uploaded File'),
                  ),
                  const Padding(padding: EdgeInsets.all(5.0)),
                  Image.network(_getUrlResult),
                ])
          ],
        ),
      ),
    );
  }
}
