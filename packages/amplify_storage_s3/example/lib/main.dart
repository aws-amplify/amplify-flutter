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
import 'package:flutter/material.dart';
import 'dart:io';
// import 'dart:async';

//import 'package:flutter/services.dart';
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
    amplify.addPlugin(storage);

    // Now configure
    bool isConfigured = await amplify.configure(amplifyconfig);

    if (!isConfigured) {
      print('Failed to configure amplify');
      setState(() {
        _isAmplifyConfigured = false;
      });
      return;
    }

    setState(() {
      _isAmplifyConfigured = true;
    });
  }

  void upload() async {
    try {
      print('In upload with options');
      // Uploading the file with options
      File local = await FilePicker.getFile(type: FileType.image);
      String path = local.absolute.path;
      Map<String, String> metadata = <String, String>{};
      metadata['name'] = 'filename';
      metadata['desc'] = 'A test file';
      S3UploadFileOptions options = S3UploadFileOptions(
          accessLevel: StorageAccessLevel.public, metadata: metadata);
      UploadFileRequest request = new UploadFileRequest(
          key: new DateTime.now().toString(), path: path, options: options);
      print('path is: ' + request.path + ', key is: ' + request.key);
      UploadFileResponse response = await Amplify.Storage.uploadFile(request);
      setState(() {
        _uploadFileResult = response.key;
      });
    } catch (e) {
      print('UploadFile Err: ' + e.toString());
    }
  }

  void getUrl() async {
    try {
      print('In getUrl with options');
      String key = _uploadFileResult;
      S3GetUrlOptions options = S3GetUrlOptions(
          accessLevel: StorageAccessLevel.public, expires: 10000);
      GetUrlRequest request = new GetUrlRequest(key: key, options: options);
      GetUrlResponse response = await Amplify.Storage.getUrl(request);

      setState(() {
        _getUrlResult = response.url;
      });
      print('_getUrl:' + _getUrlResult);
    } catch (e) {
      print('GetUrl Err: ' + e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Storage S3 Plugin example app'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.all(10.0)),
                  RaisedButton(
                    onPressed: configureAmplify,
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
