library amplify_storage_plugin_interface;

import 'dart:async';
import 'package:meta/meta.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'src/types.dart';
export 'src/types.dart';

abstract class StoragePluginInterface extends PlatformInterface {
  StoragePluginInterface({@required Object token}) : super(token: token);

  /// Adds the configuration and return true if it was successful.
  Future<bool> configure(String configuration) {
    throw UnimplementedError('configure() has not been implemented.');
  }

  Future<UploadFileResponse> uploadFile(UploadFileRequest request) {
    throw UnimplementedError('uploadFile() has not been implemented.');
  }
}
