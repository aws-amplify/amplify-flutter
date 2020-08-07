import 'package:flutter/services.dart';
import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';

import 'amplify_storage_s3.dart';
export './src/types.dart';

const MethodChannel _channel = MethodChannel('amplify.aws/storage');

/// An implementation of [AmplifyPlatform] that uses method channels.
class AmplifyStorageS3MethodChannel extends AmplifyStorageS3 {
  @override
  Future<UploadFileResponse> uploadFile(UploadFileRequest request) async {
    final Map<String, dynamic> data =
        await _channel.invokeMapMethod<String, dynamic>(
      'uploadFile',
      request.serializeAsMap(),
    );
    return _formatUploadFileResponse(data);
  }

  @override
  Future<GetUrlResponse> getUrl(GetUrlRequest request) async {
    final Map<String, dynamic> data =
        await _channel.invokeMapMethod<String, dynamic>(
      'getUrl',
      request.serializeAsMap(),
    );
    return _formatGetUrlResponse(data);
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
