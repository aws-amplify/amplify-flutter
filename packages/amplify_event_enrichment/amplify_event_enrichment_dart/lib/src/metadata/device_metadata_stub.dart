// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment_dart/src/metadata/device_metadata.dart';

/// Fallback used on platforms without `dart:io` (e.g. web).
///
/// Returns empty device metadata. Supply a custom `DeviceMetadataProvider`
/// (for example one backed by browser APIs) if richer web metadata is needed.
DeviceMetadata resolvePlatformDeviceMetadata() => const DeviceMetadata();
