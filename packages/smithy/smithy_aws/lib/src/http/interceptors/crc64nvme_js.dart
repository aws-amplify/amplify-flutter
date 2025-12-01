// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:crclib/crclib.dart';

/// CRC-64/NVME implementation for JavaScript/Web.
///
/// On JS, only 32-bit integers are supported, so we use BigInt for 64-bit values.
/// Parameters are defined here:
/// https://reveng.sourceforge.io/crc-catalogue/all.htm#crc.cat.crc-64-nvme
/// https://nvmexpress.org/wp-content/uploads/NVM-Express-NVM-Command-Set-Specification-1.0d-2023.12.28-Ratified.pdf
class Crc64Nvme extends ParametricCrc {
  Crc64Nvme()
    : super(
        64,
        BigInt.parse('ad93d23594c93659', radix: 16),
        BigInt.parse('ffffffffffffffff', radix: 16),
        BigInt.parse('ffffffffffffffff', radix: 16),
        inputReflected: true,
        outputReflected: true,
      );
}
