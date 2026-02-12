import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'aws_liveness_method_channel.dart';

abstract class AwsLivenessPlatform extends PlatformInterface {
  /// Constructs a AwsLivenessPlatform.
  AwsLivenessPlatform() : super(token: _token);

  static final Object _token = Object();

  static AwsLivenessPlatform _instance = MethodChannelAwsLiveness();

  /// The default instance of [AwsLivenessPlatform] to use.
  ///
  /// Defaults to [MethodChannelAwsLiveness].
  static AwsLivenessPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AwsLivenessPlatform] when
  /// they register themselves.
  static set instance(AwsLivenessPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
