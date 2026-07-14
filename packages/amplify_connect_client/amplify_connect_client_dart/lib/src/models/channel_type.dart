// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_connect_client.channel_type}
/// The push notification channel a registered device token belongs to.
///
/// The [value] is the wire format sent to the Customer Profiles identify
/// endpoint and matches the channel type names used by push providers.
/// {@endtemplate}
enum ChannelType {
  /// Firebase Cloud Messaging, used for Android devices.
  gcm('GCM'),

  /// Apple Push Notification service, production environment.
  apns('APNS'),

  /// Apple Push Notification service, sandbox (development) environment.
  apnsSandbox('APNS_SANDBOX'),

  /// In-app messaging channel. `IN_APP` registrations are stored on the
  /// profile but are not a push-deliverable channel.
  inApp('IN_APP');

  /// {@macro amplify_connect_client.channel_type}
  const ChannelType(this.value);

  /// The wire value sent to the endpoint (for example `GCM`).
  final String value;
}
