import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_analytics_plugin_interface/analytics_plugin_interface.dart';
import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';

void main() {
  const MethodChannel analyticsChannel =
      MethodChannel('com.amazonaws.amplify/analytics_pinpoint');
  const MethodChannel coreChannel = MethodChannel('com.amazonaws.amplify/core');

  Amplify amplify = new Amplify();
  AmplifyAnalyticsPinpointPlugin analytics =
      new AmplifyAnalyticsPinpointPlugin();

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    analyticsChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
    coreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
  });

  tearDown(() {
    analyticsChannel.setMockMethodCallHandler(null);
    coreChannel.setMockMethodCallHandler(null);
  });

  test('amplify_analytics_pinpoint plugin can be added to Amplify instance',
      () async {
    expect(amplify.addPlugin(analytics), true);
  });

  test('configure success after plugin is added', () async {
    expect(await amplify.configure("{}"), true);
  });

  // test sending basic events
  test('recordEvent results in true', () async {
    var event = AnalyticsEvent("test");

    expect(await Amplify.Analytics.recordEvent(event: event), true);
  });

  test('recordEvent results in true', () async {
    var event = AnalyticsEvent("test");

    event.properties.addBoolProperty("boolKey", true);
    event.properties.addDoubleProperty("doubleKey", 10.0);
    event.properties.addIntProperty("intKey", 10);
    event.properties.addStringProperty("stringKey", "stringValue");

    expect(await Amplify.Analytics.recordEvent(event: event), true);
  });

  test('registerGlobalProperties results in true', () async {
    var globalProperties = AnalyticsProperties();

    expect(await Amplify.Analytics.registerGlobalProperties(
        globalProperties: globalProperties), true);
  });

  test('registerGlobalProperties results in true', () async {
    var globalProperties = AnalyticsProperties();

    globalProperties.addBoolProperty("boolKey", true);
    globalProperties.addDoubleProperty("doubleKey", 10.0);
    globalProperties.addIntProperty("intKey", 10);
    globalProperties.addStringProperty("stringKey", "stringValue");

    expect(await Amplify.Analytics.registerGlobalProperties(
        globalProperties: globalProperties), true);
  });

  test('identify user results in true', () async {
    var userProfile = AnalyticsUserProfile();
    expect(await Amplify.Analytics.identifyUser(
        userId: "testUser", userProfile: userProfile), true);
  });

  test('identify user results in true', () async {
    var userProfile = AnalyticsUserProfile();
    userProfile.name = "name";
    userProfile.email = "email";
    userProfile.plan = "plan";

    var analyticsUserLocation = new AnalyticsUserProfileLocation();
    userProfile.location = analyticsUserLocation;

    var analyticsProperties = new AnalyticsProperties();
    userProfile.properties = analyticsProperties;

    expect(await Amplify.Analytics.identifyUser(
        userId: "testUser", userProfile: userProfile), true);
  });

  test('identify user results in true', () async {
    var userProfile = AnalyticsUserProfile();
    userProfile.name = "name";
    userProfile.email = "email";
    userProfile.plan = "plan";

    var analyticsUserLocation = new AnalyticsUserProfileLocation();
    analyticsUserLocation.latitude = 5;
    analyticsUserLocation.longitude = 5;
    analyticsUserLocation.postalCode = "94070";
    analyticsUserLocation.city = "SanFrancisco";
    analyticsUserLocation.region = "California";
    analyticsUserLocation.country = "USA";
    userProfile.location = analyticsUserLocation;

    var analyticsProperties = new AnalyticsProperties();
    analyticsProperties.addBoolProperty("boolKey", true);
    analyticsProperties.addDoubleProperty("doubleKey", 10.0);
    analyticsProperties.addIntProperty("intKey", 10);
    analyticsProperties.addStringProperty("stringKey", "stringValue");
    userProfile.properties = analyticsProperties;

    expect(await Amplify.Analytics.identifyUser(
        userId: "testUser", userProfile: userProfile), true);
  });
}
