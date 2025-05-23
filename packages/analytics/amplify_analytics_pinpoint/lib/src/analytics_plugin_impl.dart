// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/flutter_device_context_info_provider.dart';
import 'package:amplify_analytics_pinpoint/src/flutter_app_lifecycle_provider.dart';
import 'package:amplify_analytics_pinpoint/src/flutter_path_provider/flutter_path_provider.dart';
import 'package:amplify_analytics_pinpoint/src/legacy_native_data_provider/flutter_legacy_native_data_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
// ignore: implementation_imports
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/app_lifecycle_provider.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:meta/meta.dart';

/// {@template amplify_analytics_pinpoint.analytics_plugin_impl}
/// The AWS Pinpoint implementation of the Amplify Analytics category.
/// {@endtemplate}
class AmplifyAnalyticsPinpoint extends AmplifyAnalyticsPinpointDart {
  /// {@macro amplify_analytics_pinpoint.analytics_plugin_impl}
  AmplifyAnalyticsPinpoint({
    @visibleForTesting AppLifecycleProvider? appLifecycleProvider,
    @visibleForTesting SecureStorageFactory? secureStorageFactory,
    super.options,
  }) : super(
         pathProvider: FlutterPathProvider(),
         legacyNativeDataProvider: FlutterLegacyNativeDataProvider(),
         deviceContextInfoProvider: const FlutterDeviceContextInfoProvider(),
         appLifecycleProvider:
             appLifecycleProvider ?? FlutterAppLifecycleProvider(),
         secureStorageFactory:
             secureStorageFactory ?? AmplifySecureStorage.factoryFrom(),
       );
}
