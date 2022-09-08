/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_common.hub.api_network_state}
/// Network states for graphql subscriptions.
/// {@endtemplate}
enum NetworkState {
  /// {@macro amplify_common.hub.api_network_state_connected}
  connected,

  /// {@macro amplify_common.hub.api_network_state_disconnected}
  disconnected,

  /// {@macro amplify_common.hub.api_network_state_failed}
  failed;
}

/// {@template amplify_common.hub.api_intended_state}
/// The intended network states for graphql subscriptions.
/// {@endtemplate}
enum IntendedState {
  /// {@macro amplify_common.hub.api_intended_state_connected}
  connected(),

  /// {@macro amplify_common.hub.api_intended_state_disconnected}
  disconnected();
}

/// {@template amplify_common.hub.api_subscription_status}
/// A consolidated subscription connection status determined by the network and
/// intended states.
/// {@endtemplate}
enum SubscriptionStatus {
  /// {@macro amplify_common.hub.api_subscription_status_connected}
  connected(),

  /// {@macro amplify_common.hub.api_subscription_status_disconnected}
  disconnected(),

  /// {@macro amplify_common.hub.api_subscription_status_connected}
  connecting(),

  /// {@macro amplify_common.hub.api_subscription_status_disconnected}
  pendingDisconnected(),

  /// {@macro amplify_common.hub.api_subscription_status_failed}
  failed();
}

class SubscriptionDetails with AWSEquatable<SubscriptionDetails> {
  /// {@macro amplify_common.hub.api_network_state}
  final NetworkState networkState;

  /// {@macro amplify_common.hub.api_intended_state}
  final IntendedState intendedState;

  SubscriptionDetails(this.networkState, this.intendedState);

  @override
  List<Object?> get props => [intendedState, networkState];

  Map<String, String> toJson() => {
        'networkState': networkState.name,
        'intendedState': intendedState.name,
      };
}

class SubscriptionHubEvent extends ApiHubEvent
    with
        AWSEquatable<SubscriptionHubEvent>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  final SubscriptionDetails details;

  static const String _name = 'SubscriptionHubEvent';

  SubscriptionHubEvent._(this.details) : super(_name);

  /// {@template amplify_common.hub.api_subscription_status}
  /// An overall status for GraphQL subscription connection, determined by the
  /// underlying details [networkState] & [intendedState]
  /// {@endtemplate}
  SubscriptionStatus get status {
    // Connection failed
    if (details.networkState == NetworkState.failed) {
      return SubscriptionStatus.failed;
    }
    // Connected with active subscriptions
    if (details.networkState == NetworkState.connected &&
        details.intendedState == IntendedState.connected) {
      return SubscriptionStatus.connected;
    }
    // Disconnected with active subscriptions
    if (details.networkState == NetworkState.disconnected &&
        details.intendedState == IntendedState.connected) {
      return SubscriptionStatus.connecting;
    }
    // Connected without active subscriptions
    if (details.networkState == NetworkState.connected &&
        details.intendedState == IntendedState.disconnected) {
      return SubscriptionStatus.pendingDisconnected;
    }

    // disconnected without active subscriptions
    return SubscriptionStatus.disconnected;
  }

  /// {@template amplify_common.hub.api_subscrption_connected}
  /// Emitted when a GraphQL subscrption is connected.
  /// {@endtemplate}
  SubscriptionHubEvent.connected()
      : this._(SubscriptionDetails(
            NetworkState.connected, IntendedState.connected));

  /// {@template amplify_common.hub.api_subscrption_connected}
  /// Emitted when a GraphQL subscrption is connecting/reconnecting.
  /// {@endtemplate}
  SubscriptionHubEvent.connecting()
      : this._(SubscriptionDetails(
            NetworkState.disconnected, IntendedState.connected));

  /// {@template amplify_common.hub.api_subscrption_disconnected}
  /// Emitted when a GraphQL subscrption connection has disconnected.
  /// {@endtemplate}
  SubscriptionHubEvent.disconnected()
      : this._(SubscriptionDetails(
            NetworkState.disconnected, IntendedState.disconnected));

  /// {@template amplify_common.hub.api_subscrption_pending_disconnect}
  /// Emitted when a GraphQL subscrption connection is pending disconnect,
  /// but should exist.
  /// {@endtemplate}
  SubscriptionHubEvent.pendingDisconnect()
      : this._(SubscriptionDetails(
            NetworkState.connected, IntendedState.disconnected));

  /// {@template amplify_common.hub.api_subscrption_failed}
  /// Emitted when a GraphQL subscrption connection has failed.
  /// {@endtemplate}
  SubscriptionHubEvent.failed()
      : this._(SubscriptionDetails(
            NetworkState.failed, IntendedState.disconnected));

  @override
  List<Object?> get props => [details, status];

  @override
  String get runtimeTypeName => 'SubscriptionHubEvent';

  @override
  Map<String, Object?> toJson() => <String, dynamic>{
        'status': status.name,
        'details': details.toJson(),
      };
}
