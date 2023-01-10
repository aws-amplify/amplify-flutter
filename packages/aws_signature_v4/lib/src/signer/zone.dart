// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'aws_signer.dart';

/// Runs the given sign function in a [Zone] where [print] only works in debug
/// mode in order to prevent accidental exposure of secrets.
@visibleForTesting
R signZoned<R>(R Function() signFn) {
  return runZoned(
    signFn,
    zoneSpecification: ZoneSpecification(
      print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
        if (zDebugMode) {
          parent.print(zone, line);
        }
      },
    ),
  );
}
