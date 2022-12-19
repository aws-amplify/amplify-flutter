// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template observe_query_throttle_options}
/// Options for throttling events emitted from ObserveQuery during
/// the sync process
/// {@endtemplate}
class ObserveQueryThrottleOptions {
  /// During the initial sync, a [QuerySnapshot] wil be
  /// generated every [maxCount] records
  ///
  /// If [maxDuration] is non-null, a [QuerySnapshot] may
  /// be generated more freqnently than every [maxCount]
  final int? maxCount;

  /// During the initial sync, a [QuerySnapshot] wil be
  /// generated every [maxDuration]
  ///
  /// If [maxCount] is non-null, a [QuerySnapshot] may
  /// generated more freqnently than every [maxDuration]
  final Duration? maxDuration;

  /// {@macro observe_query_throttle_options}
  const ObserveQueryThrottleOptions({this.maxCount, this.maxDuration});

  /// default throttle options
  const ObserveQueryThrottleOptions.defaults()
      : maxCount = 1000,
        maxDuration = const Duration(seconds: 2);

  /// removes all throttling options
  ///
  /// Note: during cloud sync, this will result in a new
  /// QuerySnapshot be emitted for every single item that
  /// is synced to the device that matches the query predicate
  const ObserveQueryThrottleOptions.none()
      : maxCount = 1,
        maxDuration = null;
}
