import 'package:flutter/services.dart';
import 'package:amplify_analytics_plugin_interface/analytics_plugin_interface.dart';

import 'amplify_analytics_pinpoint.dart';

const MethodChannel _channel = MethodChannel('com.amazonaws.amplify/analytics_pinpoint');


class AmplifyAnalyticsPinpointMethodChannel extends AmplifyAnalyticsPinpointPlugin {

  // List of all method channel objects
  // This code sends Dart commands to the method channel

  @override
  Future<bool> recordEvent({AnalyticsEvent event}) async {

    var name = event.name;
    var eventProperties = event.properties;

    return _channel.invokeMethod<bool>(
      'recordEvent',
      <String, Object>{
        'name': name,
        'propertiesMap': eventProperties.getAllProperties(),
      },
    );
  }

  @override
  Future<bool> flushEvents() async {
    return _channel.invokeMethod<bool>(
        'flushEvents'
    );
  }

  @override
  Future<bool> registerGlobalProperties({AnalyticsProperties globalProperties}) async {
    return _channel.invokeMethod<bool>(
        'registerGlobalProperties',
        globalProperties.getAllProperties()
    );
  }

  @override
  Future<bool> unregisterGlobalProperties({List<String> propertyNames}) async {
    return _channel.invokeMethod<bool>(
        'unregisterGlobalProperties',
        propertyNames
    );
  }

  @override
  Future<bool> unregisterAllGlobalProperties() async {
    return _channel.invokeMethod<bool>(
      'unregisterAllGlobalProperties',
    );
  }

  @override
  Future<bool> enable() async {
    return _channel.invokeMethod<bool>(
      'enable',
    );
  }

  @override
  Future<bool> disable() async{
    return _channel.invokeMethod<bool>(
      'disable',
    );
  }

  @override
  Future<bool> identifyUser({String userId, AnalyticsUserProfile userProfile}) async {
    return _channel.invokeMethod<bool>(
      'identifyUser',
      <String, Object>{
        'userId' : userId,
        'userProfileMap' : userProfile.getAllProperties()
      },
    );
  }
}
