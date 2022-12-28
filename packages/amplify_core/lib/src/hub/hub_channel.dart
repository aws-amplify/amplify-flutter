// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: constant_identifier_names

import 'package:amplify_core/amplify_core.dart';

/// A channel which can be listened on via [AmplifyHub] (`Amplify.Hub`).
enum HubChannel<HubEventPayload, E extends HubEvent<HubEventPayload>> {
  /// Events of the Auth category.
  ///
  /// See also:
  /// - [AuthHubEvent]
  /// - [AuthHubEventType]
  Auth<AuthUser, AuthHubEvent>(),

  /// Events of the DataStore category.
  DataStore<DataStoreHubEventPayload, DataStoreHubEvent>(),

  /// Events of the API category
  Api<ApiHubEventPayload, ApiHubEvent>();
}
