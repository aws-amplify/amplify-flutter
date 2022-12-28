// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

/// Generates a UUID (v4).
///
/// If [secure] is `true`, uses a crypto-secure RNG at the cost of worse
/// performance (5-100x, depending on the platform).
String uuid({bool secure = false}) => const Uuid().v4(
      options: !secure
          ? null
          // Use the crypto-secure RNG per `package:uuid` docs:
          // https://github.com/Daegalus/dart-uuid/blob/d7bc930942afc752edd0fd15f8bf8234d81dfeda/example/example.dart#L21
          : const <String, Object>{
              'rng': UuidUtil.cryptoRNG,
            },
    );
