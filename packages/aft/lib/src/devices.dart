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

import 'dart:io';

import 'package:aws_common/aws_common.dart';


/// {@template amplify_tools.device}
/// Information about an active device.
/// {@endtemplate}
class ActiveDevice
    with AWSEquatable<ActiveDevice>
    implements Comparable<ActiveDevice> {
  /// {@macro amplify_tools.deviceo}
  const ActiveDevice({
    required this.name,
    required this.id,
  });

  /// The name of the device.
  final String name;

  /// id of the device.
  final String id;

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
