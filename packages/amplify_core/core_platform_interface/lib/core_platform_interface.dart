import 'dart:async';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'method_channel_core.dart';


abstract class AmplifyCorePlatform extends PlatformInterface {
  /// Constructs a AmplifyCorePlatform.
  AmplifyCorePlatform() : super(token: _token);

  static final Object _token = Object();

  static AmplifyCorePlatform _instance = MethodChannelCore();

  /// The default instance of [AmplifyCorePlatform] to use.
  ///
  /// Defaults to [MethodChannelCore].
  static AmplifyCorePlatform get instance => _instance;

  static set instance(AmplifyCorePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> configure() {
    throw UnimplementedError('getMyAmplify() has not been implemented.');
  }

  Future<String> getConfiguration() {
    throw UnimplementedError('getConfiguration() has not been implemented.');
  }
}
