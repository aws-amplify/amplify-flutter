// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// CRC-64/NVME implementation with platform-specific optimizations.
// This file exports the appropriate implementation based on the platform:
// - On Dart VM: Uses native 64-bit integers
// - On JavaScript: Uses BigInt for 64-bit values
export 'crc64nvme_js.dart' if (dart.library.io) 'crc64nvme_vm.dart';
