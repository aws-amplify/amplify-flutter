// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
  failed,
}

/// {@template amplify_common.hub.api_intended_state}
/// The intended network states for graphql subscriptions.
/// {@endtemplate}
enum IntendedState {
  /// {@macro amplify_common.hub.api_intended_state_connected}
  connected,

  /// {@macro amplify_common.hub.api_intended_state_disconnected}
  disconnected,
}

/// {@template amplify_common.hub.api_subscription_status}
/// A consolidated subscription connection status determined by the network and
/// intended states.
/// {@endtemplate}
enum SubscriptionStatus {
  /// {@macro amplify_common.hub.api_subscription_status_connected}
  connected,

  /// {@macro amplify_common.hub.api_subscription_status_disconnected}
  disconnected,

  /// {@macro amplify_common.hub.api_subscription_status_connected}
  connecting,

  /// {@macro amplify_common.hub.api_subscription_status_disconnected}
  pendingDisconnected,

  /// {@macro amplify_common.hub.api_subscription_status_failed}
  failed,
}

class SubscriptionDetails extends ApiHubEventPayload
    with
        AWSEquatable<SubscriptionDetails>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const SubscriptionDetails(this.networkState, this.intendedState);

  /// {@macro amplify_common.hub.api_network_state}
  final NetworkState networkState;

  /// {@macro amplify_common.hub.api_intended_state}
  final IntendedState intendedState;

  @override
  List<Object?> get props => [intendedState, networkState];

  @override
  Map<String, String> toJson() => {
    'networkState': networkState.name,
    'intendedState': intendedState.name,
  };

  @override
  String get runtimeTypeName => 'SubscriptionDetails';
}

class SubscriptionHubEvent extends ApiHubEvent
    with
        AWSEquatable<SubscriptionHubEvent>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  SubscriptionHubEvent._(this.details) : super(_name, payload: details);

  /// {@template amplify_common.hub.api_subscription_connected}
  /// Emitted when a GraphQL subscription is connected.
  /// {@endtemplate}
  SubscriptionHubEvent.connected()
    : this._(
        const SubscriptionDetails(
          NetworkState.connected,
          IntendedState.connected,
        ),
      );

  /// {@template amplify_common.hub.api_subscription_connected}
  /// Emitted when a GraphQL subscription is connecting/reconnecting.
  /// {@endtemplate}
  SubscriptionHubEvent.connecting()
    : this._(
        const SubscriptionDetails(
          NetworkState.disconnected,
          IntendedState.connected,
        ),
      );

  /// {@template amplify_common.hub.api_subscription_disconnected}
  /// Emitted when a GraphQL subscription connection has disconnected.
  /// {@endtemplate}
  SubscriptionHubEvent.disconnected()
    : this._(
        const SubscriptionDetails(
          NetworkState.disconnected,
          IntendedState.disconnected,
        ),
      );

  /// {@template amplify_common.hub.api_subscription_pending_disconnect}
  /// Emitted when a GraphQL subscription connection is pending disconnect,
  /// but should exist.
  /// {@endtemplate}
  SubscriptionHubEvent.pendingDisconnect()
    : this._(
        const SubscriptionDetails(
          NetworkState.connected,
          IntendedState.disconnected,
        ),
      );

  /// {@template amplify_common.hub.api_subscription_failed}
  /// Emitted when a GraphQL subscription connection has failed.
  /// {@endtemplate}
  SubscriptionHubEvent.failed()
    : this._(
        const SubscriptionDetails(
          NetworkState.failed,
          IntendedState.disconnected,
        ),
      );
  final SubscriptionDetails details;

  static const String _name = 'SubscriptionHubEvent';

  /// {@template amplify_common.hub.api_subscription_status}
  /// An overall status for GraphQL subscription connection, determined by the
  /// underlying [details] `networkState` and `intendedState`.
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
