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

library amplify_auth_cognito.cognito_identity_provider.model.associate_software_token_response;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'associate_software_token_response.g.dart';

abstract class AssociateSoftwareTokenResponse
    with
        _i1.AWSEquatable<AssociateSoftwareTokenResponse>
    implements
        Built<AssociateSoftwareTokenResponse,
            AssociateSoftwareTokenResponseBuilder> {
  factory AssociateSoftwareTokenResponse(
      {String? secretCode, String? session}) {
    return _$AssociateSoftwareTokenResponse._(
        secretCode: secretCode, session: session);
  }

  factory AssociateSoftwareTokenResponse.build(
          [void Function(AssociateSoftwareTokenResponseBuilder) updates]) =
      _$AssociateSoftwareTokenResponse;

  const AssociateSoftwareTokenResponse._();

  /// Constructs a [AssociateSoftwareTokenResponse] from a [payload] and [response].
  factory AssociateSoftwareTokenResponse.fromResponse(
          AssociateSoftwareTokenResponse payload,
          _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _AssociateSoftwareTokenResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateSoftwareTokenResponseBuilder b) {}

  /// A unique generated shared secret code that is used in the TOTP algorithm to generate a one time code.
  String? get secretCode;

  /// The session which should be passed both ways in challenge-response calls to the service. This allows authentication of the user as part of the MFA setup process.
  String? get session;
  @override
  List<Object?> get props => [secretCode, session];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssociateSoftwareTokenResponse');
    helper.add('secretCode', '***SENSITIVE***');
    helper.add('session', session);
    return helper.toString();
  }
}

class _AssociateSoftwareTokenResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<AssociateSoftwareTokenResponse> {
  const _AssociateSoftwareTokenResponseAwsJson11Serializer()
      : super('AssociateSoftwareTokenResponse');

  @override
  Iterable<Type> get types =>
      const [AssociateSoftwareTokenResponse, _$AssociateSoftwareTokenResponse];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  AssociateSoftwareTokenResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = AssociateSoftwareTokenResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'SecretCode':
          if (value != null) {
            result.secretCode = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Session':
          if (value != null) {
            result.session = (serializers.deserialize(value,
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
    final payload = (object as AssociateSoftwareTokenResponse);
    final result = <Object?>[];
    if (payload.secretCode != null) {
      result
        ..add('SecretCode')
        ..add(serializers.serialize(payload.secretCode!,
            specifiedType: const FullType(String)));
    }
    if (payload.session != null) {
      result
        ..add('Session')
        ..add(serializers.serialize(payload.session!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
