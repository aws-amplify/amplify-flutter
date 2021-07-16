import 'dart:io';

import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';

class TestHelper {
  static String generateDateTimeID() {
    DateTime dateNow = DateTime.now();
    StringBuffer buffer = StringBuffer();

    buffer.write(Platform.operatingSystem.substring(0, 2));
    buffer.write("-");
    buffer.write(dateNow.year % 100);
    buffer.write(".");
    buffer.write(dateNow.month);
    buffer.write(".");
    buffer.write(dateNow.day);
    buffer.write(".");
    buffer.write(dateNow.hour);
    buffer.write(":");
    buffer.write(dateNow.minute);

    return buffer.toString();
  }

  static void runTestA() {
    // get current date
    // generate ID string
    // all events/props will share this date
    String id = generateDateTimeID();

    // register global props
    registerGlobalProperties(id);

    // send event w/ props
    recordEvent(id + "-wGP", createAnalyticsProperties(id));

    Amplify.Analytics.flushEvents();

    // unregister global props
    Amplify.Analytics.unregisterGlobalProperties();

    // send event w/ props
    recordEvent(id + "-noGP", createAnalyticsProperties(id));

    // send user id
    identifyUser(id);

    Amplify.Analytics.flushEvents();

    print("Ran TestA");
  }

  static void recordEvent(String id, AnalyticsProperties analyticsProperties) {
    AnalyticsEvent event = AnalyticsEvent(id);

    event.properties.addBoolProperty("boolKey", true);
    event.properties.addDoubleProperty("doubleKey", 10.0);
    event.properties.addIntProperty("intKey", 10);
    event.properties.addStringProperty("stringKey", "stringValue");

    Amplify.Analytics.recordEvent(event: event);
  }

  static AnalyticsProperties createAnalyticsProperties(String id) {
    AnalyticsProperties properties = new AnalyticsProperties();
    properties.addIntProperty(id + "_1numKey", 1);
    properties.addBoolProperty(id + "_boolKey", true);
    properties.addDoubleProperty(id + "_doubleKey", 10.0);
    properties.addIntProperty(id + "_intKey", 10);
    properties.addStringProperty(id + "_stringKey", "stringValue");
    return properties;
  }

  static void registerGlobalProperties(String id) async {
    Amplify.Analytics.registerGlobalProperties(
        globalProperties: createAnalyticsProperties(id));
  }

  static AnalyticsUserProfile createAnalyticsUserProfile(String id) {
    AnalyticsUserProfile analyticsUserProfile = new AnalyticsUserProfile();
    analyticsUserProfile.name = id + "_name";
    analyticsUserProfile.email = id + "_email";
    analyticsUserProfile.plan = id + "_plan";
    return analyticsUserProfile;
  }

  static AnalyticsUserProfileLocation createAnalyticsUserLocation() {
    AnalyticsUserProfileLocation analyticsUserLocation =
        new AnalyticsUserProfileLocation();
    analyticsUserLocation.latitude = 5;
    analyticsUserLocation.longitude = 5;
    analyticsUserLocation.postalCode = "94070";
    analyticsUserLocation.city = "SanFrancisco";
    analyticsUserLocation.region = "California";
    analyticsUserLocation.country = "USA";
    return analyticsUserLocation;
  }

  static void identifyUser(String id) async {
    AnalyticsUserProfile userProfile = createAnalyticsUserProfile(id);

    AnalyticsUserProfileLocation userLocation = createAnalyticsUserLocation();
    userProfile.location = userLocation;

    AnalyticsProperties userProperties = createAnalyticsProperties(id);
    userProfile.properties = userProperties;

    Amplify.Analytics.identifyUser(userId: id, userProfile: userProfile);
  }
}
