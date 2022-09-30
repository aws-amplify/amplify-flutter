// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_analytics_pinpoint/src/flutter_path_provider/flutter_path_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';

import 'device_context_info_provider/flutter_device_context_info_provider.dart';
import 'flutter_app_lifecycle_provider.dart';

/// {@template amplify_analytics_pinpoint.amplify_analytics_pinpoint}
/// The Amplify Analytics Pinpoint implementation of the Amplify Analytics category.
/// {@endtemplate}
class AmplifyAnalyticsPinpoint extends AmplifyAnalyticsPinpointDart {
  /// {@macro amplify_analytics_pinpoint.amplify_analytics_pinpoint}
  ///
  /// The parameters provide Flutter related functionality to the underlying
  /// Dart only implementation.
  /// [keyValueStorage] is a [AmplifySecureStorage] instance used for storing global properties and unique id
  /// [pathProvider] is used on non web platforms to provide a proper storage location for cached analytics events
  /// [appLifecycleProvider] provides app lifecycle events for auto session tracking
  /// [deviceContextInfoProvider] provides device information sent to Pinpoint Endpoints
  AmplifyAnalyticsPinpoint()
      : super(
            keyValueStorage: AmplifySecureStorage(
              config: AmplifySecureStorageConfig(
                scope: 'analytics',
              ),
            ),
            pathProvider: FlutterPathProvider(),
            appLifecycleProvider: FlutterAppLifecycleProvider(),
            deviceContextInfoProvider: FlutterDeviceContextInfoProvider());
}
