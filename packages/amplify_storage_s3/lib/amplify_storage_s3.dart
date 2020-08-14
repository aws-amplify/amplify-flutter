library amplify_storage_plugin;

import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import './method_channel_storage_s3.dart';
import 'package:flutter/foundation.dart';

class AmplifyStorageS3 extends StoragePluginInterface {
  static final Object _token = Object();

  /// Constructs a AmplifyStoragePlugin.
  AmplifyStorageS3() : super(token: _token);

  static AmplifyStorageS3 _instance = AmplifyStorageS3MethodChannel();

  /// The default instance of [AmplifyStoragePlugin] to use.
  static StoragePluginInterface get instance => _instance;

  static set instance(StoragePluginInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  @override
  Future<UploadFileResponse> uploadFile({@required UploadFileRequest request}) {
    return _instance.uploadFile(request: request);
  }

  @override
  Future<GetUrlResponse> getUrl({@required GetUrlRequest request}) {
    return _instance.getUrl(request: request);
  }
}
