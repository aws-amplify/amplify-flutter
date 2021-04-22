import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/material.dart';

class ImagePreview extends StatefulWidget {
  final String storageKey;

  ImagePreview({Key key, this.storageKey}) : super(key: key);

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
