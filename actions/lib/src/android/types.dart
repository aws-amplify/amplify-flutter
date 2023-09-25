// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/actions.dart';

/// An Android ABI.
///
/// See: https://developer.android.com/ndk/guides/abis
enum AndroidAbi {
  x86('x86'),
  x86_64('x86_64'),
  arm64('arm64-v8a');

  const AndroidAbi(this.abi);

  static AndroidAbi parse(String value) => values.firstWhere(
        (el) => el.name == value || el.abi == value,
        orElse: () => throw ArgumentError.value(
          value,
          'value',
          'Invalid Android ABI. Expected one of: [${allAbis.join(', ')}]',
        ),
      );

  static AndroidAbi forArch(Arch arch) => switch (arch) {
        Arch.x64 => x86_64,
        Arch.arm64 => arm64,
      };

  static List<String> get allAbis => values.map((el) => el.abi).toList();

  final String abi;

  @override
  String toString() => abi;
}

/// All Android API levels.
///
/// See: https://apilevels.com/
enum AndroidApiLevel {
  api_34(34),
  api_33(33),
  api_32(32),
  api_31(31),
  api_30(30),
  api_29(29),
  api_28(28),
  api_27(27),
  api_26(26),
  api_25(25),
  api_24(24); // The lowest API level we support.

  const AndroidApiLevel(this.level);

  static AndroidApiLevel parse(String apiLevel) {
    Never invalidApiLevel() {
      throw ArgumentError.value(
        apiLevel,
        'apiLevel',
        'Specified level is not a valid API level. '
            'Expected one of: [${allApiLevels.join(', ')}]',
      );
    }

    final levelInt = int.tryParse(apiLevel);
    if (levelInt == null) {
      invalidApiLevel();
    }
    return values.firstWhere(
      (el) => el.level == levelInt,
      orElse: invalidApiLevel,
    );
  }

  static List<int> get allApiLevels => values.map((el) => el.level).toList();

  final int level;

  @override
  String toString() => level.toString();
}

/// Available Android system images for emulation.
enum AndroidSystemImageTarget {
  default$('default'),
  googleApis('google_apis'),
  googleApisPlaystore('google_apis_playstore');

  const AndroidSystemImageTarget(this.tag);

  static AndroidSystemImageTarget parse(String target) => values.firstWhere(
        (el) => el.tag == target,
        orElse: () => throw ArgumentError.value(
          target,
          'target',
          'Invalid Android system image taget. '
              'Expected one of: [${allTags.join(', ')}]',
        ),
      );

  static List<String> get allTags => values.map((el) => el.tag).toList();

  final String tag;

  @override
  String toString() => tag;
}
