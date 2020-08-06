import 'dart:async';

import 'package:flutter/services.dart';
import 'package:amplify_core_plugin_interface/amplify_core_plugin_interface.dart';
import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';

class Amplify {
  static const StorageCategory Storage = StorageCategory();

  bool addPlugin(StoragePluginInterface storagePlugin) {
    try {
      if (storagePlugin != null) {
        print("Adding Storage Plugin");
        Storage.addPlugin(storagePlugin);
      }
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> configure(String configuration) async {
    assert(configuration != null, 'configuration is null');
    var res = await Core.instance.configure(configuration);
    return res;
  }
}
