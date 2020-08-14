import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';

import 'amplify_storage_s3.dart';
export './src/types.dart';

const MethodChannel _channel =
    MethodChannel('com.amazonaws.amplify/storage_s3');

/// An implementation of [AmplifyPlatform] that uses method channels.
class AmplifyStorageS3MethodChannel extends AmplifyStorageS3 {
  @override
  Future<UploadFileResponse> uploadFile(
      {@required UploadFileRequest request}) async {
    try {
      final Map<String, dynamic> data =
          await _channel.invokeMapMethod<String, dynamic>(
        'uploadFile',
        request.serializeAsMap(),
      );
      UploadFileResponse response = _formatUploadFileResponse(data);
      return response;
    } on PlatformException catch (e) {
      //TODO: Convert to StorageError and throw.
      throw (e);
    }
  }

  @override
  Future<GetUrlResponse> getUrl({@required GetUrlRequest request}) async {
    try {
      final Map<String, dynamic> data =
          await _channel.invokeMapMethod<String, dynamic>(
        'getUrl',
        request.serializeAsMap(),
      );
      GetUrlResponse response = _formatGetUrlResponse(data);
      return response;
    } on PlatformException catch (e) {
      //TODO: Convert to StorageError and throw.
      throw (e);
    }
  }

  UploadFileResponse _formatUploadFileResponse(Map<String, dynamic> response) {
    print("UploadFileResponse" + response.toString());
    return UploadFileResponse(key: response["key"]);
  }

  GetUrlResponse _formatGetUrlResponse(Map<String, dynamic> response) {
    print("GetUrlResponse" + response.toString());
    return GetUrlResponse(url: response["url"]);
  }
}
