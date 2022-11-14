// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';

/// {@template amplify_analytics_pinpoint.device_info}
/// Data representation of DeviceInfo required for Pinpoint EndpointDemographic.
///
/// For more details see Pinpoint [Endpoint](https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints.html) online spec.
/// {@endtemplate}
class DeviceInfo {
  /// {@macro amplify_analytics_pinpoint.device_info}
  const DeviceInfo({
    this.make,
    this.model,
    this.modelVersion,
    this.platform,
    this.platformVersion,
  });

  /// Manufacturer
  final String? make;

  /// Model name or number of device
  final String? model;

  /// Model version of device
  final String? modelVersion;

  /// Platform: iOS/Android, etc.
  final DevicePlatform? platform;

  /// Version of platform
  final String? platformVersion;
}
