import 'dart:async';
import 'package:core_platform_interface/core_platform_interface.dart';


Future<void> configure() async {
  AmplifyCorePlatform.instance.configure();
}

Future<Object> getConfiguration() async {
  return AmplifyCorePlatform.instance.getConfiguration();
}
