// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Amplify Analytics Pinpoint.
library amplify_analytics_pinpoint;

/// Overridable Flutter injected dependencies.
export 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart'
    show
        AppLifecycleProvider,
        AWSPinpointUserProfile,

        /// For Push Notifications.
        // TODO(kylecheng): export via SecureStorage instead.
        EndpointInfoStoreManager,

        /// For calls to SetChannelType().
        ChannelType,
        ChannelTypeHelpers;

/// Category Implementation.
export 'src/analytics_plugin_impl.dart';

/// Push Notifications.
// TODO(kylecheng): check if still needed after secure storage factory change.
export 'src/flutter_analytics_client.dart';

/// Cognito Auth endpoint management.
// TODO(kylecheng): change to secure storage factory instead
export 'src/flutter_endpoint_info_store_manager.dart';
