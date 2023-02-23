// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_analytics_pinpoint/src/flutter_app_lifecycle_provider.dart';
import 'package:amplify_analytics_pinpoint/src/flutter_path_provider/flutter_path_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:meta/meta.dart';

/// {@template amplify_analytics_pinpoint.analytics_plugin_impl}
/// The AWS Pinpoint implementation of the Amplify Analytics category.
/// {@endtemplate}
class AmplifyAnalyticsPinpoint extends AmplifyAnalyticsPinpointDart {
  /// {@macro amplify_analytics_pinpoint.analytics_plugin_impl}
  AmplifyAnalyticsPinpoint({
    @visibleForTesting AppLifecycleProvider? appLifecycleProvider,
    AnalyticsClient? analyticsClient,
  }) : super(
          pathProvider: FlutterPathProvider(),
          appLifecycleProvider:
              appLifecycleProvider ?? FlutterAppLifecycleProvider(),
          analyticsClient: analyticsClient ?? FlutterAnalyticsClient(),
        );
}
