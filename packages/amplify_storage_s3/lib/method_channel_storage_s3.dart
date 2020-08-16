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
  Future<UploadFileResult> uploadFile(
      {@required UploadFileRequest request}) async {
    try {
      final Map<String, dynamic> data =
          await _channel.invokeMapMethod<String, dynamic>(
        'uploadFile',
        request.serializeAsMap(),
      );
      UploadFileResult result = _formatUploadFileResult(data);
      return result;
    } on PlatformException catch (e) {
      //TODO: Convert to StorageError and throw.
      throw (e);
    }
  }

  @override
  Future<GetUrlResult> getUrl({@required GetUrlRequest request}) async {
    try {
      final Map<String, dynamic> data =
          await _channel.invokeMapMethod<String, dynamic>(
        'getUrl',
        request.serializeAsMap(),
      );
      GetUrlResult result = _formatGetUrlResult(data);
      return result;
    } on PlatformException catch (e) {
      //TODO: Convert to StorageError and throw.
      throw (e);
    }
  }

  UploadFileResult _formatUploadFileResult(Map<String, dynamic> result) {
    return UploadFileResult(key: result["key"]);
  }

  GetUrlResult _formatGetUrlResult(Map<String, dynamic> result) {
    return GetUrlResult(url: result["url"]);
  }
}
