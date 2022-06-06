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

library amplify_auth_cognito.cognito_identity.model.credentials;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'credentials.g.dart';

/// Credentials for the provided identity ID.
abstract class Credentials
    with _i1.AWSEquatable<Credentials>
    implements Built<Credentials, CredentialsBuilder> {
  /// Credentials for the provided identity ID.
  factory Credentials(
      {String? accessKeyId,
      DateTime? expiration,
      String? secretKey,
      String? sessionToken}) {
    return _$Credentials._(
        accessKeyId: accessKeyId,
        expiration: expiration,
        secretKey: secretKey,
        sessionToken: sessionToken);
  }

  /// Credentials for the provided identity ID.
  factory Credentials.build([void Function(CredentialsBuilder) updates]) =
      _$Credentials;

  const Credentials._();

  static const List<_i2.SmithySerializer> serializers = [
    _CredentialsAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CredentialsBuilder b) {}

  /// The Access Key portion of the credentials.
  String? get accessKeyId;

  /// The date at which these credentials will expire.
  DateTime? get expiration;

  /// The Secret Access Key portion of the credentials
  String? get secretKey;

  /// The Session Token portion of the credentials
  String? get sessionToken;
  @override
  List<Object?> get props => [accessKeyId, expiration, secretKey, sessionToken];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Credentials');
    helper.add('accessKeyId', accessKeyId);
    helper.add('expiration', expiration);
    helper.add('secretKey', secretKey);
    helper.add('sessionToken', sessionToken);
    return helper.toString();
  }
}

class _CredentialsAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<Credentials> {
  const _CredentialsAwsJson11Serializer() : super('Credentials');

  @override
  Iterable<Type> get types => const [Credentials, _$Credentials];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  Credentials deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = CredentialsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AccessKeyId':
          if (value != null) {
            result.accessKeyId = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Expiration':
          if (value != null) {
            result.expiration = (serializers.deserialize(value,
                specifiedType: const FullType(DateTime)) as DateTime);
          }
          break;
        case 'SecretKey':
          if (value != null) {
            result.secretKey = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'SessionToken':
          if (value != null) {
            result.sessionToken = (serializers.deserialize(value,
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
    final payload = (object as Credentials);
    final result = <Object?>[];
    if (payload.accessKeyId != null) {
      result
        ..add('AccessKeyId')
        ..add(serializers.serialize(payload.accessKeyId!,
            specifiedType: const FullType(String)));
    }
    if (payload.expiration != null) {
      result
        ..add('Expiration')
        ..add(serializers.serialize(payload.expiration!,
            specifiedType: const FullType(DateTime)));
    }
    if (payload.secretKey != null) {
      result
        ..add('SecretKey')
        ..add(serializers.serialize(payload.secretKey!,
            specifiedType: const FullType(String)));
    }
    if (payload.sessionToken != null) {
      result
        ..add('SessionToken')
        ..add(serializers.serialize(payload.sessionToken!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
