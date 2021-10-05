/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

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
      : this.maxCount = 1000,
        this.maxDuration = const Duration(seconds: 2);

  /// removes all throttling options
  ///
  /// Note: during cloud sync, this will result in a new
  /// QuerySnapshot be emitted for every single item that
  /// is synced to the device that matches the query predicate
  const ObserveQueryThrottleOptions.none()
      : this.maxCount = 1,
        this.maxDuration = null;
}
