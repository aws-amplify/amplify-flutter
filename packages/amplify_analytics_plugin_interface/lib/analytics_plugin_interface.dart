library amplify_analytics_plugin_interface;

import 'dart:async';

import 'package:meta/meta.dart';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'src/types.dart';
export 'src/types.dart';


abstract class AnalyticsPluginInterface extends PlatformInterface {

  /// Constructs a AmplifyPlatform.
  AnalyticsPluginInterface({@required Object token}) : super(token: token);

  Future<bool> recordEvent({@required AnalyticsEvent event}) async {
    throw UnimplementedError('recordEvent() has not been implemented.');
  }

  Future<bool> flushEvents() async {
    throw UnimplementedError('flushEvents() has not been implemented.');
  }

  Future<bool> registerGlobalProperties({@required AnalyticsProperties globalProperties}) async {
    throw UnimplementedError('registerGlobalProperties() has not been implemented.');
  }

  Future<bool> unregisterGlobalProperties({@required List<String> propertyNames}) async {
    throw UnimplementedError('unregisterGlobalProperties() has not been implemented.');
  }

  Future<bool> unregisterAllGlobalProperties() async {
    throw UnimplementedError('unregisterAllGlobalProperties() has not been implemented.');
  }

  Future<bool> enable() async {
    throw UnimplementedError('enable() has not been implemented.');
  }

  Future<bool> disable() async{
    throw UnimplementedError('disable() has not been implemented.');
  }

  Future<bool> identifyUser({@required String userId, @required AnalyticsUserProfile userProfile}) async {
    throw UnimplementedError('identifyUser() has not been implemented.');
  }

}