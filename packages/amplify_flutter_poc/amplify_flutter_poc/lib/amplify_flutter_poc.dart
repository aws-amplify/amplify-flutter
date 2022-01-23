// You have generated a new plugin project without
// specifying the `--platforms` flag. A plugin project supports no platforms is generated.
// To add platforms, run `flutter create -t plugin --platforms <platforms> .` under the same
// directory. You can also find a detailed instruction on how to add platforms in the `pubspec.yaml` at https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'dart:async';

import 'package:amplify_flutter_platform_interface/amplify_flutter_platform_interface.dart';
import 'package:flutter/services.dart';

export 'package:amplify_core/amplify_core.dart';

// class AmplifyFlutterPoc {
//   static const MethodChannel _channel = MethodChannel('amplify_flutter_poc');

//   static Future<String?> get platformVersion async {
//     final String? version = await _channel.invokeMethod('getPlatformVersion');
//     return version;
//   }
// }

final AmplifyClass Amplify = AmplifyClass.protected();
