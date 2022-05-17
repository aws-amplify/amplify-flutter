//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/material.dart';

class ImagePreview extends StatefulWidget {
  final String storageKey;

  ImagePreview({Key? key, required this.storageKey}) : super(key: key);

  @override
  _ImagePreviewState createState() => _ImagePreviewState();
}

class _ImagePreviewState extends State<ImagePreview> {
  String _imageURL = '';

  @override
  void initState() {
    super.initState();
    _getUrl(widget.storageKey);
  }

  void _getUrl(String storageKey) async {
    try {
      print('In getUrl');
      String key = storageKey;
      S3GetUrlOptions options = S3GetUrlOptions(
          accessLevel: StorageAccessLevel.guest, expires: 10000);
      GetUrlResult result =
          await Amplify.Storage.getUrl(key: key, options: options);

      setState(() {
        _imageURL = result.url;
      });

      print('URL: ' + _imageURL);
      AnalyticsEvent event = AnalyticsEvent("image_url_retrieved");
      event.properties.addStringProperty("file_key", storageKey);
      Amplify.Analytics.recordEvent(event: event);
    } catch (e) {
      print('GetUrl Err: ' + e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //Image(image: AssetImage('images/image.png')),
      Center(child: Image.network(_imageURL))
    ]);
  }
}
