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

library amplify_auth_cognito.cognito_identity_provider.model.sign_up_response;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/code_delivery_details_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'sign_up_response.g.dart';

/// The response from the server for a registration request.
abstract class SignUpResponse
    with _i1.AWSEquatable<SignUpResponse>
    implements Built<SignUpResponse, SignUpResponseBuilder> {
  /// The response from the server for a registration request.
  factory SignUpResponse(
      {_i2.CodeDeliveryDetailsType? codeDeliveryDetails,
      required bool userConfirmed,
      required String userSub}) {
    return _$SignUpResponse._(
        codeDeliveryDetails: codeDeliveryDetails,
        userConfirmed: userConfirmed,
        userSub: userSub);
  }

  /// The response from the server for a registration request.
  factory SignUpResponse.build([void Function(SignUpResponseBuilder) updates]) =
      _$SignUpResponse;

  const SignUpResponse._();

  /// Constructs a [SignUpResponse] from a [payload] and [response].
  factory SignUpResponse.fromResponse(
          SignUpResponse payload, _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    _SignUpResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SignUpResponseBuilder b) {}

  /// The code delivery details returned by the server response to the user registration request.
  _i2.CodeDeliveryDetailsType? get codeDeliveryDetails;

  /// A response from the server indicating that a user registration has been confirmed.
  bool get userConfirmed;

  /// The UUID of the authenticated user. This is not the same as `username`.
  String get userSub;
  @override
  List<Object?> get props => [codeDeliveryDetails, userConfirmed, userSub];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SignUpResponse');
    helper.add('codeDeliveryDetails', codeDeliveryDetails);
    helper.add('userConfirmed', userConfirmed);
    helper.add('userSub', userSub);
    return helper.toString();
  }
}

class _SignUpResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<SignUpResponse> {
  const _SignUpResponseAwsJson11Serializer() : super('SignUpResponse');

  @override
  Iterable<Type> get types => const [SignUpResponse, _$SignUpResponse];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  SignUpResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = SignUpResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'CodeDeliveryDetails':
          if (value != null) {
            result.codeDeliveryDetails.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i2.CodeDeliveryDetailsType))
                as _i2.CodeDeliveryDetailsType));
          }
          break;
        case 'UserConfirmed':
          result.userConfirmed = (serializers.deserialize(value!,
              specifiedType: const FullType(bool)) as bool);
          break;
        case 'UserSub':
          result.userSub = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as SignUpResponse);
    final result = <Object?>[
      'UserConfirmed',
      serializers.serialize(payload.userConfirmed,
          specifiedType: const FullType(bool)),
      'UserSub',
      serializers.serialize(payload.userSub,
          specifiedType: const FullType(String))
    ];
    if (payload.codeDeliveryDetails != null) {
      result
        ..add('CodeDeliveryDetails')
        ..add(serializers.serialize(payload.codeDeliveryDetails!,
            specifiedType: const FullType(_i2.CodeDeliveryDetailsType)));
    }
    return result;
  }
}
