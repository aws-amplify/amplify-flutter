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

import 'package:amplify_core/amplify_core.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class AnalyticsPlatformInterface extends PlatformInterface
    implements AuthPluginInterface {
  /// Constructs a AmplifyPlatform.
  AnalyticsPlatformInterface({required Object token}) : super(token: token);
}
