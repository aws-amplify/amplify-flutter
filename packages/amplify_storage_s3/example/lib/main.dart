import 'package:amplify_storage_s3/method_channel_storage_s3.dart';
import 'package:flutter/material.dart';
import 'dart:async';

// import 'package:flutter/services.dart';
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
  String _uploadFileResult = "";
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
      print("Failed to configure amplify");
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
      print("In upload with options updated");
      String path = await FilePicker.getFilePath(type: FileType.image);
      Map<String, String> metadata = <String, String>{};
      metadata["name"] = "filename";
      metadata["desc"] = "A test file";
      S3UploadFileOptions options = S3UploadFileOptions(
          accessLevel: StorageAccessLevel.protected,
          contentType: 'image',
          targetIdentityId: 'otheruserid');
      UploadFileRequest request = new UploadFileRequest(
          key: new DateTime.now().toString(), path: path, options: options);
      print("path is: " + request.path + ", key is: " + request.key);
      UploadFileResponse response = await Amplify.Storage.uploadFile(request);
      setState(() {
        _uploadFileResult = response.key;
      });
    } catch (e) {
      print('Err: ' + e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
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
                  Text('Result: $_uploadFileResult'),
                ])
          ],
        ),
      ),
    );
  }
}
