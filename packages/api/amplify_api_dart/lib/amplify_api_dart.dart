// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Amplify API for Dart
library;

export 'package:amplify_core/src/types/api/api_types.dart'
    hide WebSocketOptions;

export 'src/api_plugin_impl.dart';

/// API plugin options
export 'src/api_plugin_options.dart';

/// Model helpers
export 'src/graphql/model_helpers/model_mutations.dart';
export 'src/graphql/model_helpers/model_queries.dart';
export 'src/graphql/model_helpers/model_subscriptions.dart';

/// Network connectivity util not needed by consumers of Flutter package amplify_api.
export 'src/graphql/web_socket/types/connectivity_platform.dart';
export 'src/graphql/web_socket/types/process_life_cycle.dart';
