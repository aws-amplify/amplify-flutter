// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_common.hub.auth_hub_event_type}
/// Hub Event types for the Auth category.
/// {@endtemplate}
enum AuthHubEventType {
  /// {@macro amplify_common.hub.auth_hub_event_signed_in}
  signedIn('SIGNED_IN'),

  /// {@macro amplify_common.hub.auth_hub_event_signed_out}
  signedOut('SIGNED_OUT'),

  /// {@macro amplify_common.hub.auth_hub_event_session_expired}
  sessionExpired('SESSION_EXPIRED'),

  /// {@macro amplify_common.hub.auth_hub_event_user_deleted}
  userDeleted('USER_DELETED');

  /// The event name.
  final String eventName;

  /// {@macro amplify_common.hub.auth_hub_event_type}
  const AuthHubEventType(this.eventName);
}

/// The base class for hub events of the Auth category.
///
/// One of [AuthHubEventType.values].
class AuthHubEvent extends HubEvent<AuthUser>
    with AWSEquatable<AuthHubEvent>, AWSDebuggable {
  AuthHubEvent._(
    this.type, {
    AuthUser? payload,
  }) : super(type.eventName, payload: payload);

  /// {@macro amplify_common.hub.auth_hub_event_type}
  final AuthHubEventType type;

  /// {@template amplify_common.hub.auth_hub_event_signed_in}
  /// Emitted when a user successfully signs in or when the app is started and
  /// a user was already signed in.
  /// {@endtemplate}
  AuthHubEvent.signedIn(AuthUser user)
      : this._(AuthHubEventType.signedIn, payload: user);

  /// {@template amplify_common.hub.auth_hub_event_signed_out}
  /// Emitted when the user is signed out, either by calling
  /// `Amplify.Auth.signOut` or implicitly via a call to
  /// `Amplify.Auth.deleteUser`, for example.
  /// {@endtemplate}
  AuthHubEvent.signedOut() : this._(AuthHubEventType.signedOut);

  /// {@template amplify_common.hub.auth_hub_event_session_expired}
  /// Emitted when a user's session expires, i.e. their Cognito User Pool tokens
  /// or AWS credentials expire and cannot be refreshed.
  /// {@endtemplate}
  AuthHubEvent.sessionExpired() : this._(AuthHubEventType.sessionExpired);

  /// {@template amplify_common.hub.auth_hub_event_user_deleted}
  /// Emitted when a user is deleted by calling `Amplify.Auth.deleteUser`.
  /// {@endtemplate}
  AuthHubEvent.userDeleted() : this._(AuthHubEventType.userDeleted);

  @override
  List<Object?> get props => [type, payload];

  @override
  String get runtimeTypeName => 'AuthHubEvent';
}
