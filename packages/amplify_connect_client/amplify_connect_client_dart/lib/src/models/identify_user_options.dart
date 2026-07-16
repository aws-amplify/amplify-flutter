// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_connect_client_dart/src/models/channel_type.dart';
import 'package:meta/meta.dart';

/// {@template amplify_connect_client.opt_out}
/// Push opt-out preference. Accepted for API compatibility but has no effect
/// on the current backend contract.
/// {@endtemplate}
enum OptOut {
  /// Opt out of all messages.
  all('ALL'),

  /// Opt out of no messages.
  none('NONE');

  /// {@macro amplify_connect_client.opt_out}
  const OptOut(this.value);

  /// The wire value (`ALL` or `NONE`).
  final String value;
}

/// {@template amplify_connect_client.identify_user_options}
/// Options for the identify endpoint, mirroring the contract's `options`
/// object.
///
/// Device registration is expressed here rather than through a separate route:
/// set [address] (the push token), [deviceId], [channelType], and optionally
/// [platform] / [appVersion].
/// {@endtemplate}
@immutable
class IdentifyUserOptions {
  /// {@macro amplify_connect_client.identify_user_options}
  const IdentifyUserOptions({
    this.userAttributes,
    this.address,
    this.deviceId,
    this.channelType,
    this.platform,
    this.appVersion,
    this.optOut,
  });

  /// Additional string user attributes, each key mapping to a list of values.
  final Map<String, List<String>>? userAttributes;

  /// Mutable push token / endpoint address. Stored as a field, not a key.
  final String? address;

  /// Stable device identifier; the unique key of the device object, so a token
  /// refresh for the same device upserts in place.
  final String? deviceId;

  /// The push channel for the registered device.
  final ChannelType? channelType;

  /// Client OS platform recorded on the device object.
  final String? platform;

  /// App version recorded on the device object.
  final String? appVersion;

  /// Opt-out preference. The backend currently accepts this field but does not
  /// act on it yet, so setting it has no effect for now.
  final OptOut? optOut;

  /// Serializes to the endpoint's `options` shape, omitting null fields.
  Map<String, dynamic> toJson() => {
    if (userAttributes != null && userAttributes!.isNotEmpty)
      'userAttributes': userAttributes,
    'address': ?address,
    'deviceId': ?deviceId,
    'channelType': ?channelType?.value,
    'platform': ?platform,
    'appVersion': ?appVersion,
    'optOut': ?optOut?.value,
  };

  /// Whether every field is null/empty (nothing to send).
  bool get isEmpty => toJson().isEmpty;
}
