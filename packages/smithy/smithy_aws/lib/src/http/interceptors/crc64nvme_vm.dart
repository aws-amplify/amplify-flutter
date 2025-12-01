// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:crclib/crclib.dart';

/// CRC-64/NVME implementation for Dart VM.
///
/// On the VM, 64-bit integers are supported natively, so we use int.
/// Parameters are defined here:
/// https://reveng.sourceforge.io/crc-catalogue/all.htm#crc.cat.crc-64-nvme
/// https://nvmexpress.org/wp-content/uploads/NVM-Express-NVM-Command-Set-Specification-1.0d-2023.12.28-Ratified.pdf
class Crc64Nvme extends ParametricCrc {
  Crc64Nvme()
    : super(
        64,
        // ignore: avoid_js_rounded_ints
        0xad93d23594c93659,
        0xffffffffffffffff,
        0xffffffffffffffff,
        inputReflected: true,
        outputReflected: true,
      );
}
