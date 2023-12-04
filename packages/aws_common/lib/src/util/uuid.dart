// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:math';
import 'dart:typed_data';

import 'package:uuid/uuid.dart';

/// Generates a UUID (v4).
///
/// If [secure] is `true`, uses a crypto-secure RNG at the cost of worse
/// performance (5-100x, depending on the platform).
String uuid({bool secure = false}) => const Uuid().v4(
      // ignore: deprecated_member_use
      options: !secure
          ? null
          : const <String, Object>{
              'rng': _cryptoRNG,
              'positionalArgs': [],
              'namedArgs': <Symbol, dynamic>{},
            },
    );

/// Creates 16 digit cryptographically secure random number.
Uint8List _cryptoRNG() {
  return Uint8List.fromList(
    List<int>.generate(16, (i) => Random.secure().nextInt(256)),
  );
}
