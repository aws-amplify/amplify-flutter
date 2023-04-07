// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_core.push.push_notification_permission_request_status}
/// The state of the current push notification permissions.
/// {@endtemplate}
enum PushNotificationPermissionStatus {
  shouldRequest('should_request'),
  shouldExplainThenRequest('should_explain_then_request'),
  granted('granted'),
  denied('denied');

  const PushNotificationPermissionStatus(this.name);

  final String name;
}
