import 'dart:async';
import 'package:flutter/services.dart';
import 'core_platform_interface.dart';

const MethodChannel _channel = MethodChannel('com.amplify.flutter/core');

/// An implementation of [AmplifyCorePlatform] that uses method channels.
class MethodChannelCore extends AmplifyCorePlatform {

  Future<void> configure() {
    return _channel.invokeMethod('configure');
  }

  Future<String> getConfiguration() async {
    return _channel.invokeMethod('getConfiguration');
  }
}
