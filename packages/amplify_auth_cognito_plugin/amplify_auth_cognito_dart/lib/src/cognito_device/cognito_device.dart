/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';

/// Helper functions for [AuthDevice].
extension AuthDeviceX on AuthDevice {
  /// Returns this device as a [CognitoDevice].
  CognitoDevice get asCognitoDevice => this is CognitoDevice
      ? this as CognitoDevice
      : CognitoDevice(id: id, name: name);
}

/// {@template cognito_device}
/// A device tracked by AWS Cognito.
/// {@endtemplate}
class CognitoDevice extends AuthDevice {
  /// Attribute key for retrieving a device's name.
  static const deviceNameKey = 'device_name';

  @override
  final String id;

  /// Optional override of attribute value.
  final String? _name;

  @override
  String? get name => _name ?? attributes?[deviceNameKey];

  /// Device attributes.
  final Map<String, String>? attributes;

  /// The date this device was created.
  final DateTime? createdDate;

  /// The date this device was last authenticated.
  final DateTime? lastAuthenticatedDate;

  /// The date this device was last updated.
  final DateTime? lastModifiedDate;

  /// {@macro cognito_device}
  const CognitoDevice({
    required this.id,
    String? name,
    this.attributes,
    this.createdDate,
    this.lastAuthenticatedDate,
    this.lastModifiedDate,
  }) : _name = name;

  factory CognitoDevice.fromJson(Map json) {
    final attributes = json['attributes'] as Map?;
    final createdDate = json['createdDate'] as int?;
    final lastAuthenticatedDate = json['lastAuthenticatedDate'] as int?;
    final lastModifiedDate = json['lastModifiedDate'] as int?;
    return CognitoDevice(
      id: json['id'] as String,
      name: json['name'] as String?,
      attributes:
          attributes == null ? null : Map<String, String>.from(attributes),
      createdDate: createdDate == null
          ? null
          : DateTime.fromMillisecondsSinceEpoch(createdDate),
      lastAuthenticatedDate: lastAuthenticatedDate == null
          ? null
          : DateTime.fromMillisecondsSinceEpoch(lastAuthenticatedDate),
      lastModifiedDate: lastModifiedDate == null
          ? null
          : DateTime.fromMillisecondsSinceEpoch(lastModifiedDate),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        if (attributes != null) 'attributes': attributes,
        if (createdDate != null)
          'createdDate': createdDate!.millisecondsSinceEpoch,
        if (lastAuthenticatedDate != null)
          'lastAuthenticatedDate':
              lastAuthenticatedDate!.millisecondsSinceEpoch,
        if (lastModifiedDate != null)
          'lastModifiedDate': lastModifiedDate!.millisecondsSinceEpoch,
      };

  @override
  String toString() {
    return 'CognitoDevice{id=$id, name=$name, attributes=$attributes, createdDate=$createdDate, '
        'lastAuthenticatedDate=$lastAuthenticatedDate, lastModifiedDate=$lastModifiedDate}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CognitoDevice &&
          id == other.id &&
          name == other.name &&
          const MapEquality().equals(attributes, other.attributes) &&
          createdDate == other.createdDate &&
          lastAuthenticatedDate == other.lastAuthenticatedDate &&
          lastModifiedDate == other.lastModifiedDate;

  @override
  int get hashCode => const DeepCollectionEquality().hash([
        id,
        name,
        attributes,
        createdDate,
        lastAuthenticatedDate,
        lastModifiedDate,
      ]);
}
