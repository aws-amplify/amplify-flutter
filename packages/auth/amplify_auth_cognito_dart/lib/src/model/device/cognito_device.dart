// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// Helper functions for [AuthDevice].
extension AuthDeviceX on AuthDevice {
  /// Returns this device as a [CognitoDevice].
  CognitoDevice get asCognitoDevice => this is CognitoDevice
      ? this as CognitoDevice
      : CognitoDevice(id: id, name: name);
}

/// {@template amplify_auth_cognito.cognito_device}
/// A device tracked by AWS Cognito.
/// {@endtemplate}
@immutable
class CognitoDevice extends AuthDevice with AWSEquatable<CognitoDevice> {
  /// {@macro amplify_auth_cognito.cognito_device}
  const CognitoDevice({
    required this.id,
    String? name,
    this.attributes,
    this.createdDate,
    this.lastAuthenticatedDate,
    this.lastModifiedDate,
  }) : _name = name;

  /// {@macro amplify_auth_cognito.cognito_device}
  factory CognitoDevice.fromJson(Map<String, Object?> json) {
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

  @override
  Map<String, Object?> toJson() => {
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
  List<Object?> get props => [
        id,
        name,
        attributes,
        createdDate,
        lastAuthenticatedDate,
        lastModifiedDate,
      ];
}
