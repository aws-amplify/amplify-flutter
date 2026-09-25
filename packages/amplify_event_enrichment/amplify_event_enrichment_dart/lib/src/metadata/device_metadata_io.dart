// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io' show Platform;

import 'package:amplify_event_enrichment_dart/src/metadata/device_metadata.dart';

/// Resolves basic device metadata from `dart:io Platform` on native platforms.
DeviceMetadata resolvePlatformDeviceMetadata() {
  return DeviceMetadata(
    platform: Platform.operatingSystem,
    platformVersion: Platform.operatingSystemVersion,
    locale: Platform.localeName,
  );
}
