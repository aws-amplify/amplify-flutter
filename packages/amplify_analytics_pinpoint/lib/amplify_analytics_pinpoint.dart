library amplify_analytics_pinpoint;

import 'package:amplify_analytics_plugin_interface/analytics_plugin_interface.dart';
import 'package:flutter/cupertino.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import './method_channel_amplify.dart';

export './src/types.dart';


class AmplifyAnalyticsPinpointPlugin extends AnalyticsPluginInterface {
  static final Object _token = Object();

  /// Constructs a AmplifyApiPlugin.
  AmplifyAnalyticsPinpointPlugin() : super(token: _token);

  static AmplifyAnalyticsPinpointPlugin _instance = AmplifyAnalyticsPinpointMethodChannel();

  /// The default instance of [AmplifyApiPlugin] to use.
  ///
  /// Defaults to [MethodChannelAmplify].
  static AnalyticsPluginInterface get instance => _instance;


  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [AnalyticsPluginInterface] when they register themselves.
  static set instance(AnalyticsPluginInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }


  // Public facing methods

  Future<bool> recordEvent({@required AnalyticsEvent event}) async {
    return _instance.recordEvent(event: event);
  }

  Future<bool> flushEvents() async {
    return _instance.flushEvents();
  }

  Future<bool> registerGlobalProperties({@required AnalyticsProperties globalProperties}) async {
    return _instance.registerGlobalProperties(globalProperties: globalProperties);
  }

  Future<bool> unregisterGlobalProperties({@required List<String> propertyNames}) async {
    return _instance.unregisterGlobalProperties(propertyNames: propertyNames);
  }

  Future<bool> unregisterAllGlobalProperties() async {
    return _instance.unregisterAllGlobalProperties();
  }

  Future<bool> enable() async {
    return _instance.enable();
  }

  Future<bool> disable() async{
    return _instance.disable();
  }

  Future<bool> identifyUser({@required String userId, @required AnalyticsUserProfile userProfile}) async {
    return _instance.identifyUser(userId: userId, userProfile: userProfile);
  }
}
