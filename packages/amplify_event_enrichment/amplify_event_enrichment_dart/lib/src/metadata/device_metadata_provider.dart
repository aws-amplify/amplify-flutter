// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment_dart/src/metadata/device_metadata.dart';
// Selects the native (`dart:io`) resolver when available and falls back to a
// web-safe stub otherwise, so this library compiles on web.
import 'package:amplify_event_enrichment_dart/src/metadata/device_metadata_stub.dart'
    if (dart.library.io) 'package:amplify_event_enrichment_dart/src/metadata/device_metadata_io.dart';

/// {@template amplify_event_enrichment.device_metadata_provider}
/// Provides device metadata for event enrichment.
///
/// Implement this to supply custom device information (e.g. via
/// `device_info_plus` for model/manufacturer). The default
/// [PlatformDeviceMetadataProvider] reads basic OS info from the platform on
/// native, and returns empty metadata on web.
/// {@endtemplate}
abstract interface class DeviceMetadataProvider {
  /// Returns device metadata for the current platform.
  Future<DeviceMetadata> getDeviceMetadata();
}

/// {@template amplify_event_enrichment.platform_device_metadata_provider}
/// Default [DeviceMetadataProvider] backed by the platform.
///
/// On native platforms it reports OS name, version, and locale. On web, where
/// `dart:io` is unavailable, it returns empty metadata. It does not provide
/// manufacturer or model — wire a custom provider (e.g. using
/// `device_info_plus`) if those are needed.
/// {@endtemplate}
class PlatformDeviceMetadataProvider implements DeviceMetadataProvider {
  /// {@macro amplify_event_enrichment.platform_device_metadata_provider}
  const PlatformDeviceMetadataProvider();

  @override
  Future<DeviceMetadata> getDeviceMetadata() async =>
      resolvePlatformDeviceMetadata();
}
