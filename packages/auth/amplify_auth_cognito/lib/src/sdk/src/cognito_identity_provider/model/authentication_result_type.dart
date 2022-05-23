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

// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library amplify_auth_cognito.cognito_identity_provider.model.authentication_result_type;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/new_device_metadata_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'authentication_result_type.g.dart';

/// The authentication result.
abstract class AuthenticationResultType
    with _i1.AWSEquatable<AuthenticationResultType>
    implements
        Built<AuthenticationResultType, AuthenticationResultTypeBuilder> {
  /// The authentication result.
  factory AuthenticationResultType(
      {String? accessToken,
      int? expiresIn,
      String? idToken,
      _i2.NewDeviceMetadataType? newDeviceMetadata,
      String? refreshToken,
      String? tokenType}) {
    return _$AuthenticationResultType._(
        accessToken: accessToken,
        expiresIn: expiresIn,
        idToken: idToken,
        newDeviceMetadata: newDeviceMetadata,
        refreshToken: refreshToken,
        tokenType: tokenType);
  }

  /// The authentication result.
  factory AuthenticationResultType.build(
          [void Function(AuthenticationResultTypeBuilder) updates]) =
      _$AuthenticationResultType;

  const AuthenticationResultType._();

  static const List<_i3.SmithySerializer> serializers = [
    _AuthenticationResultTypeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AuthenticationResultTypeBuilder b) {}

  /// The access token.
  String? get accessToken;

  /// The expiration period of the authentication result in seconds.
  int? get expiresIn;

  /// The ID token.
  String? get idToken;

  /// The new device metadata from an authentication result.
  _i2.NewDeviceMetadataType? get newDeviceMetadata;

  /// The refresh token.
  String? get refreshToken;

  /// The token type.
  String? get tokenType;
  @override
  List<Object?> get props => [
        accessToken,
        expiresIn,
        idToken,
        newDeviceMetadata,
        refreshToken,
        tokenType
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AuthenticationResultType');
    helper.add('accessToken', '***SENSITIVE***');
    helper.add('expiresIn', expiresIn);
    helper.add('idToken', '***SENSITIVE***');
    helper.add('newDeviceMetadata', newDeviceMetadata);
    helper.add('refreshToken', '***SENSITIVE***');
    helper.add('tokenType', tokenType);
    return helper.toString();
  }
}

class _AuthenticationResultTypeAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<AuthenticationResultType> {
  const _AuthenticationResultTypeAwsJson11Serializer()
      : super('AuthenticationResultType');

  @override
  Iterable<Type> get types =>
      const [AuthenticationResultType, _$AuthenticationResultType];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  AuthenticationResultType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = AuthenticationResultTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AccessToken':
          if (value != null) {
            result.accessToken = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'ExpiresIn':
          if (value != null) {
            result.expiresIn = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'IdToken':
          if (value != null) {
            result.idToken = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'NewDeviceMetadata':
          if (value != null) {
            result.newDeviceMetadata.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i2.NewDeviceMetadataType))
                as _i2.NewDeviceMetadataType));
          }
          break;
        case 'RefreshToken':
          if (value != null) {
            result.refreshToken = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'TokenType':
          if (value != null) {
            result.tokenType = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as AuthenticationResultType);
    final result = <Object?>[];
    if (payload.accessToken != null) {
      result
        ..add('AccessToken')
        ..add(serializers.serialize(payload.accessToken!,
            specifiedType: const FullType(String)));
    }
    if (payload.expiresIn != null) {
      result
        ..add('ExpiresIn')
        ..add(serializers.serialize(payload.expiresIn!,
            specifiedType: const FullType(int)));
    }
    if (payload.idToken != null) {
      result
        ..add('IdToken')
        ..add(serializers.serialize(payload.idToken!,
            specifiedType: const FullType(String)));
    }
    if (payload.newDeviceMetadata != null) {
      result
        ..add('NewDeviceMetadata')
        ..add(serializers.serialize(payload.newDeviceMetadata!,
            specifiedType: const FullType(_i2.NewDeviceMetadataType)));
    }
    if (payload.refreshToken != null) {
      result
        ..add('RefreshToken')
        ..add(serializers.serialize(payload.refreshToken!,
            specifiedType: const FullType(String)));
    }
    if (payload.tokenType != null) {
      result
        ..add('TokenType')
        ..add(serializers.serialize(payload.tokenType!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
