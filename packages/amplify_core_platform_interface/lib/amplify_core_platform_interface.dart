library amplify_flutter_platform_interface;

import 'dart:async';
import 'package:flutter/services.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

part 'method_channel_amplify.dart';

/// category parts


/// The interface that implementations of amplify must implement.
///
/// Platform implementations should extend this class rather than implement it as `amplify`
/// does not consider newly added methods to be breaking changes. Extending this class
/// (using `extends`) ensures that the subclass will get the default implementation, while
/// platform implementations that `implements` this interface will be broken by newly added
/// [AmplifyPlatform] methods.
abstract class AmplifyCorePlatform extends PlatformInterface {
  /// Constructs a AmplifyPlatform.
  AmplifyCorePlatform() : super(token: _token);

  static final Object _token = Object();

  static AmplifyCorePlatform _instance = MethodChannelAmplifyCore();

  /// The default instance of [AmplifyPlatform] to use.
  ///
  /// Defaults to [MethodChannelAmplify].
  static AmplifyCorePlatform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [AmplifyPlatform] when they register themselves.
  static set instance(AmplifyCorePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Categories

  /// Adds the configuration and return true if it was successful.
  Future<bool> configure(String configuration) {
    throw UnimplementedError('configure() has not been implemented.');
  }
}
