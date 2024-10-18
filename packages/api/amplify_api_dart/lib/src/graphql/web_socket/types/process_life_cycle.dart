// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Possible process life cycle states
enum ProcessStatus {
  /// Engine is running without a view.
  detached,

  /// Application is not visible to the user or responding to user input.
  paused,

  /// All views of an application are hidden.
  hidden,

  /// A view of the application is visible, but none have input.
  inactive,

  /// Default running mode.
  resumed,
}

/// {@template amplify_api_dart.process_life_cycle}
/// Used to create a stream representing the process life cycle state.
///
/// The generated stream is empty.
/// {@endtemplate}
class ProcessLifeCycle {
  /// {@macro amplify_api_dart.process_life_cycle}
  const ProcessLifeCycle();

  /// Generates a new stream of [ProcessStatus].
  Stream<ProcessStatus> get onStateChanged => const Stream.empty();
}
