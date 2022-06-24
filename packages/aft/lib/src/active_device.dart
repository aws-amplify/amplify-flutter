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

import 'package:aft/src/platform.dart';
import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'active_device.g.dart';

enum TargetPlatform {
  android('android'),
  androidArm('android_arm'),
  androidArm64('android_arm64'),
  androidX64('android_x64'),
  androidX869('android_x86'),
  webJavascript('web_javascript'),
  ios('ios'),
  darwin('darwin'),
  windowsX64('windows_x64'),
  linuxX64('linux_x64'),
  linuxArm64('linux_arm64');

  const TargetPlatform(this.flutterDeviceName);
  final String flutterDeviceName;
}

/// {@template amplify_tools.active_device}
/// Information about an active device.
/// {@endtemplate}
@JsonSerializable()
class ActiveDevice
    with AWSEquatable<ActiveDevice>
    implements Comparable<ActiveDevice> {
  /// {@macro amplify_tools.active_device}
  const ActiveDevice({
    required this.name,
    required this.id,
    required this.targetPlatform,
  });

  /// {@macro amplify_tools.active_device_from_json}
  factory ActiveDevice.fromJson(Map<String, dynamic> json) =>
      _$ActiveDeviceFromJson(json);

  /// The name of the device.
  final String name;

  /// The ID of the device.
  final String id;

  /// The target platform of the device.
  final TargetPlatform targetPlatform;

  FlutterPlatform? get platform {
    switch (TargetPlatform) {
      case TargetPlatform:
        return FlutterPlatform.android;
    }
  }

  @override
  List<Object?> get props => [
        name,
        id,
      ];

  @override
  int compareTo(ActiveDevice other) {
    return id.compareTo(other.id);
  }
}
