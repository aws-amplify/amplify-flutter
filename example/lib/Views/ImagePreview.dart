// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
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
      // TODO(HuiSF): update example with correct code
      StorageGetUrlOperation operation = await Amplify.Storage.getUrl(key: key);
      StorageGetUrlResult result = await operation.result;

      setState(() {
        _imageURL = result.url.toString();
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
