// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io' show Platform;

import 'package:amplify_event_enrichment_dart/src/metadata/device_metadata.dart';

/// {@template amplify_event_enrichment.device_metadata_provider}
/// Provides device metadata for event enrichment.
///
/// Implement this to supply custom device information (e.g. via
/// `device_info_plus` for model/manufacturer). The default
/// [IODeviceMetadataProvider] uses `dart:io Platform` for basic OS info.
/// {@endtemplate}
abstract interface class DeviceMetadataProvider {
  /// Returns device metadata for the current platform.
  Future<DeviceMetadata> getDeviceMetadata();
}

/// {@template amplify_event_enrichment.io_device_metadata_provider}
/// Default [DeviceMetadataProvider] backed by `dart:io Platform`.
///
/// Provides OS name and version. Does not provide manufacturer or model —
/// wire a custom provider (e.g. using `device_info_plus`) if those are needed.
/// {@endtemplate}
class IODeviceMetadataProvider implements DeviceMetadataProvider {
  /// {@macro amplify_event_enrichment.io_device_metadata_provider}
  const IODeviceMetadataProvider();

  @override
  Future<DeviceMetadata> getDeviceMetadata() async {
    return DeviceMetadata(
      platform: Platform.operatingSystem,
      platformVersion: Platform.operatingSystemVersion,
      locale: Platform.localeName,
    );
  }
}
