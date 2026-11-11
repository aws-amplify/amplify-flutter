// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_event_enrichment.lifecycle_observer}
/// Abstract interface for observing app lifecycle transitions.
///
/// Implement this to bridge platform-specific lifecycle events
/// (e.g. Flutter's `WidgetsBindingObserver`) to the session manager.
/// {@endtemplate}
abstract interface class LifecycleObserver {
  /// Forwards a move to the background, typically to
  /// `SessionManager.handleAppPaused`.
  void onPause();

  /// Forwards a return to the foreground, typically to
  /// `SessionManager.handleAppResumed`.
  void onResume();

  /// Stops observing, so no further [onPause] or [onResume] calls are made.
  void dispose();
}
