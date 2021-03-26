/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

library amplify_analytics_plugin_interface;

import 'dart:async';

import 'package:meta/meta.dart';
import 'package:amplify_core/types/index.dart';

import 'src/types.dart';
export 'src/types.dart';

abstract class AnalyticsPluginInterface extends AmplifyPluginInterface {
  /// Constructs a AmplifyPlatform.
  AnalyticsPluginInterface({@required Object token}) : super(token: token);

  Future<void> addPlugin() async {
    throw UnimplementedError('addPlugin() has not been implemented.');
  }

  Future<void> recordEvent({@required AnalyticsEvent event}) async {
    throw UnimplementedError('recordEvent() has not been implemented.');
  }

  Future<void> flushEvents() async {
    throw UnimplementedError('flushEvents() has not been implemented.');
  }

  Future<void> registerGlobalProperties(
      {@required AnalyticsProperties globalProperties}) async {
    throw UnimplementedError(
        'registerGlobalProperties() has not been implemented.');
  }

  Future<void> unregisterGlobalProperties(
      {@required List<String> propertyNames}) async {
    throw UnimplementedError(
        'unregisterGlobalProperties() has not been implemented.');
  }

  Future<void> enable() async {
    throw UnimplementedError('enable() has not been implemented.');
  }

  Future<void> disable() async {
    throw UnimplementedError('disable() has not been implemented.');
  }

  Future<void> identifyUser(
      {@required String userId,
      @required AnalyticsUserProfile userProfile}) async {
    throw UnimplementedError('identifyUser() has not been implemented.');
  }
}
