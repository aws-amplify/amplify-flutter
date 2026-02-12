import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'aws_liveness_platform_interface.dart';

/// An implementation of [AwsLivenessPlatform] that uses method channels.
class MethodChannelAwsLiveness extends AwsLivenessPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('aws_liveness');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
