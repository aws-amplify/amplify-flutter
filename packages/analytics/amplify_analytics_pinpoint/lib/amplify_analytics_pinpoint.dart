// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Amplify Analytics Pinpoint
library amplify_analytics_pinpoint;

/// For Push Notifications
export 'package:amplify_analytics_pinpoint/src/device_context_info_provider/flutter_device_context_info_provider.dart';

/// Overridable Flutter injected dependencies
export 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart'
    show AppLifecycleProvider, AWSPinpointUserProfile;

/// Category Implementation
export 'src/analytics_plugin_impl.dart';
