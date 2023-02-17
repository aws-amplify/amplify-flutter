// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_analytics_pinpoint_dart.app_lifecycle_provider}
/// Provides callbacks to notify listeners when app is foregrounded or backgrounded.
/// {@endtemplate}
abstract class AppLifecycleProvider {
  /// {@macro amplify_analytics_pinpoint_dart.app_lifecycle_provider}
  AppLifecycleProvider();

  /// [onForeground] should be called when app goes to foreground.
  void setOnForegroundListener(void Function() onForeground);

  /// [onBackground] should be called when app goes to background.
  void setOnBackgroundListener(void Function() onBackground);

  /// Start observing app foreground/background changes.
  void startObserving();

  /// Stop observing app foreground/background changes.
  void stopObserving();
}
