import 'dart:async';

import 'package:flutter/services.dart';
import 'package:amplify_core_plugin_interface/amplify_core_plugin_interface.dart';

class AmplifyCore {
  Future<bool> configure(String configuration) async {
    assert(configuration != null, 'configuration is null');
    var res = await AmplifyCorePlatform.instance.configure(configuration);
    return res;
  }
}
