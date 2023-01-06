// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/flutter_device_context_info_provider.dart';
import 'package:amplify_analytics_pinpoint/src/flutter_app_lifecycle_provider.dart';
import 'package:amplify_analytics_pinpoint/src/flutter_path_provider/flutter_path_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_db_common/amplify_db_common.dart' as db_common;
import 'package:meta/meta.dart';

/// {@template amplify_analytics_pinpoint.analytics_plugin_impl}
/// The AWS Pinpoint implementation of the Amplify Analytics category.
/// {@endtemplate}
class AmplifyAnalyticsPinpoint extends AmplifyAnalyticsPinpointDart {
  /// {@macro amplify_analytics_pinpoint.analytics_plugin_impl}
  AmplifyAnalyticsPinpoint({
    @visibleForTesting super.endpointInfoStore,
    @visibleForTesting CachedEventsPathProvider? pathProvider,
    @visibleForTesting AppLifecycleProvider? appLifecycleProvider,
    @visibleForTesting DeviceContextInfoProvider? deviceContextInfoProvider,
  }) : super(
          pathProvider: pathProvider ?? FlutterPathProvider(),
          appLifecycleProvider:
              appLifecycleProvider ?? FlutterAppLifecycleProvider(),
          deviceContextInfoProvider: deviceContextInfoProvider ??
              const FlutterDeviceContextInfoProvider(),
          dbConnectFunction: db_common.connect,
        );
}
