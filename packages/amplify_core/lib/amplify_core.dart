import 'dart:async';

import 'package:flutter/services.dart';
import 'package:amplify_core_plugin_interface/amplify_core_plugin_interface.dart';

class Amplify {
  Future<bool> configure(String configuration) async {
    assert(configuration != null, 'configuration is null');
    var res = await AmplifyCorePlugin.instance.configure(configuration);
    return res;
  }
}
