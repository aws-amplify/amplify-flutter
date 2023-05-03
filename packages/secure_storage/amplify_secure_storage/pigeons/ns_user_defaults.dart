// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// To regenerate, run `make pigeons`.

// ignore_for_file: avoid_positional_boolean_parameters

import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/src/pigeons/ns_user_defaults_pigeon.g.dart',
    swiftOut: 'ios/Classes/pigeons/NSUserDefaultsPigeon.swift',
    copyrightHeader: 'pigeons/copyright.txt',
  ),
)

/// A pigeon for interacting with the NSUserDefaults API on iOS and macOS.
@HostApi()
abstract class NSUserDefaultsPigeon {
  void setBool(String key, bool value);

  bool boolFor(String key);
}
