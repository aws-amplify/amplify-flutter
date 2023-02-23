// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of amplify_interface;

/// {@template amplify_core.amplify_notifications_category}
/// Top-Level Category for Notifications that holds a reference to Push Notifications
/// {@endtemplate}
class NotificationsCategory {
  /// {@template amplify_core.amplify_notifications_category.Push}
  /// Returns a singleton instance of PushNotificaitonsCategory
  /// {@endtemplate}
  PushNotificationsCategory get Push => PushNotificationsCategory();
}
