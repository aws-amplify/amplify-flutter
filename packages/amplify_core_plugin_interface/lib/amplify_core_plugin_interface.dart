library amplify_flutter_platform_interface;

import 'dart:async';
import 'package:flutter/services.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:amplify_analytics_plugin_interface/analytics_plugin_interface.dart';

part 'method_channel_amplify.dart';
part 'amplify_analytics_category.dart';

/// category parts



abstract class Core extends PlatformInterface {
  /// Constructs a AmplifyPlatform.
  Core() : super(token: _token);

  static final Object _token = Object();

  static Core _instance = MethodChannelAmplifyCore();

  /// The default instance of [AmplifyPlatform] to use.
  ///
  /// Defaults to [MethodChannelAmplify].
  static Core get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [AmplifyPlatform] when they register themselves.
  static set instance(Core instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Categories
  final AnalyticsCategory Analytics = AnalyticsCategory();

  /// Adds the configuration and return true if it was successful.
  Future<bool> configure(String configuration) {
    throw UnimplementedError('configure() has not been implemented.');
  }
}
