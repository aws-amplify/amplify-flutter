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

import 'package:amplify_storage_s3/method_channel_storage_s3.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';
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
  Amplify amplify = new Amplify();

  @override
  void initState() {
    super.initState();
  }

  void configureAmplify() async {
    // First add plugins (Amplify native requirements)
    AmplifyStorageS3 storage = new AmplifyStorageS3();
    AmplifyAuthCognito auth = new AmplifyAuthCognito();
    amplify.addPlugin(authPlugins: [auth], storagePlugins: [storage]);

    // Configure
    await amplify.configure(amplifyconfig);

    setState(() {
      _isAmplifyConfigured = true;
    });
  }

  void upload() async {
    try {
      print('In upload');
      // Uploading the file with options
      File local = await FilePicker.getFile(type: FileType.image);
      local.existsSync();
      final key = new DateTime.now().toString();
      final path = local.absolute.path;
      Map<String, String> metadata = <String, String>{};
      metadata['name'] = 'filename';
      metadata['desc'] = 'A test file';
      S3UploadFileOptions options = S3UploadFileOptions(
          accessLevel: StorageAccessLevel.public, metadata: metadata);
      UploadFileResult result = await Amplify.Storage.uploadFile(
          key: key, path: path, options: options);
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
          accessLevel: StorageAccessLevel.public, expires: 10000);
      GetUrlResult result =
          await Amplify.Storage.getUrl(key: key, options: options);

      setState(() {
        _getUrlResult = result.url;
      });
    } catch (e) {
      print('GetUrl Err: ' + e.toString());
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
                  RaisedButton(
                    onPressed: _isAmplifyConfigured ? null : configureAmplify,
                    child: const Text('Configure'),
                  ),
                  const Padding(padding: EdgeInsets.all(5.0)),
                  Text('Amplify Configured: $_isAmplifyConfigured'),
                  const Padding(padding: EdgeInsets.all(10.0)),
                  RaisedButton(
                    onPressed: upload,
                    child: const Text('Upload File'),
                  ),
                  const Padding(padding: EdgeInsets.all(5.0)),
                  Text('Uploaded File: $_uploadFileResult'),
                  const Padding(padding: EdgeInsets.all(10.0)),
                  RaisedButton(
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
