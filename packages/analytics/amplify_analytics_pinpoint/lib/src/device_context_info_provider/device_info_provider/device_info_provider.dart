// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_analytics_pinpoint.device_info_provider}
/// Provides DeviceInfo from Flutter -> Dart.
/// {@endtemplate}

/// Multi platform class that provides DeviceInfo.
/// Requires Flutter specific dependencies.
export 'device_info_provider_stub.dart'
    if (dart.library.html) 'device_info_provider_html.dart'
    if (dart.library.io) 'device_info_provider_io.dart';
