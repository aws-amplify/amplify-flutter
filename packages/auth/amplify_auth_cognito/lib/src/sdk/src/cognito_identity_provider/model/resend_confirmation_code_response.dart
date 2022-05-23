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

library amplify_auth_cognito.cognito_identity_provider.model.resend_confirmation_code_response;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/code_delivery_details_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'resend_confirmation_code_response.g.dart';

/// The response from the server when the Amazon Cognito Your User Pools service makes the request to resend a confirmation code.
abstract class ResendConfirmationCodeResponse
    with
        _i1.AWSEquatable<ResendConfirmationCodeResponse>
    implements
        Built<ResendConfirmationCodeResponse,
            ResendConfirmationCodeResponseBuilder> {
  /// The response from the server when the Amazon Cognito Your User Pools service makes the request to resend a confirmation code.
  factory ResendConfirmationCodeResponse(
      {_i2.CodeDeliveryDetailsType? codeDeliveryDetails}) {
    return _$ResendConfirmationCodeResponse._(
        codeDeliveryDetails: codeDeliveryDetails);
  }

  /// The response from the server when the Amazon Cognito Your User Pools service makes the request to resend a confirmation code.
  factory ResendConfirmationCodeResponse.build(
          [void Function(ResendConfirmationCodeResponseBuilder) updates]) =
      _$ResendConfirmationCodeResponse;

  const ResendConfirmationCodeResponse._();

  /// Constructs a [ResendConfirmationCodeResponse] from a [payload] and [response].
  factory ResendConfirmationCodeResponse.fromResponse(
          ResendConfirmationCodeResponse payload,
          _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    _ResendConfirmationCodeResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResendConfirmationCodeResponseBuilder b) {}

  /// The code delivery details returned by the server in response to the request to resend the confirmation code.
  _i2.CodeDeliveryDetailsType? get codeDeliveryDetails;
  @override
  List<Object?> get props => [codeDeliveryDetails];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ResendConfirmationCodeResponse');
    helper.add('codeDeliveryDetails', codeDeliveryDetails);
    return helper.toString();
  }
}

class _ResendConfirmationCodeResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ResendConfirmationCodeResponse> {
  const _ResendConfirmationCodeResponseAwsJson11Serializer()
      : super('ResendConfirmationCodeResponse');

  @override
  Iterable<Type> get types =>
      const [ResendConfirmationCodeResponse, _$ResendConfirmationCodeResponse];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  ResendConfirmationCodeResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ResendConfirmationCodeResponseBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as ResendConfirmationCodeResponse);
    final result = <Object?>[];
    if (payload.codeDeliveryDetails != null) {
      result
        ..add('CodeDeliveryDetails')
        ..add(serializers.serialize(payload.codeDeliveryDetails!,
            specifiedType: const FullType(_i2.CodeDeliveryDetailsType)));
    }
    return result;
  }
}
