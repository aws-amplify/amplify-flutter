/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
}
