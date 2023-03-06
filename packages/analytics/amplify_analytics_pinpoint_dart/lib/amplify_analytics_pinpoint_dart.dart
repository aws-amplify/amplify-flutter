// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Amplify Analytics Pinpoint for Dart.
library amplify_analytics_pinpoint_dart;

/// For calls to SetChannelType().
export 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/channel_type.dart';
export 'src/analytics_plugin_impl.dart';
export 'src/impl/analytics_client/analytics_client.dart';
export 'src/impl/analytics_client/endpoint_client/aws_pinpoint_user_profile.dart';
export 'src/impl/analytics_client/endpoint_client/endpoint_info_store_manager.dart';

/// For Integration Test.
export 'src/impl/analytics_client/endpoint_client/endpoint_store_keys.dart';
export 'src/impl/flutter_provider_interfaces/app_lifecycle_provider.dart';
export 'src/impl/flutter_provider_interfaces/cached_events_path_provider.dart';
export 'src/impl/flutter_provider_interfaces/device_context_info_provider.dart';
export 'src/impl/flutter_provider_interfaces/legacy_native_data_provider.dart';
