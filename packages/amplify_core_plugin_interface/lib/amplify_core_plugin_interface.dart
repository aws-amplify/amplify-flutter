library amplify_core_platform_interface;

import 'dart:async';
import 'package:flutter/services.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

part 'method_channel_amplify.dart';

/// category parts
part 'amplify_auth_category.dart';



abstract class AmplifyCorePlugin extends PlatformInterface {
  /// Constructs a AmplifyPlatform.
  AmplifyCorePlugin() : super(token: _token);

  static final Object _token = Object();

  static AmplifyCorePlugin _instance = MethodChannelAmplifyCore();

  /// The default instance of [AmplifyPlatform] to use.
  ///
  /// Defaults to [MethodChannelAmplify].
  static AmplifyCorePlugin get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [AmplifyPlatform] when they register themselves.
  static set instance(AmplifyCorePlugin instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Categories
  static final AuthCategory Auth = AuthCategory();

  /// Adds the configuration and return true if it was successful.
  Future<bool> configure(String configuration) {
    throw UnimplementedError('configure() has not been implemented.');
  }
}
