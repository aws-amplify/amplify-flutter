// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment_dart/src/metadata/device_metadata.dart';
// Web-safe conditional import: dart:io resolver on native, stub on web.
import 'package:amplify_event_enrichment_dart/src/metadata/device_metadata_stub.dart'
    if (dart.library.io) 'package:amplify_event_enrichment_dart/src/metadata/device_metadata_io.dart';

/// {@template amplify_event_enrichment.device_metadata_provider}
/// Provides device metadata for event enrichment.
///
/// Implement this to supply custom device information, e.g. via
/// `device_info_plus` for model and manufacturer.
/// {@endtemplate}
abstract interface class DeviceMetadataProvider {
  /// Returns device metadata for the current platform.
  Future<DeviceMetadata> getDeviceMetadata();
}

/// {@template amplify_event_enrichment.platform_device_metadata_provider}
/// Default [DeviceMetadataProvider] reporting OS name, version, and locale on
/// native platforms, and empty metadata on web.
/// {@endtemplate}
class PlatformDeviceMetadataProvider implements DeviceMetadataProvider {
  /// {@macro amplify_event_enrichment.platform_device_metadata_provider}
  const PlatformDeviceMetadataProvider();

  @override
  Future<DeviceMetadata> getDeviceMetadata() async =>
      resolvePlatformDeviceMetadata();
}
