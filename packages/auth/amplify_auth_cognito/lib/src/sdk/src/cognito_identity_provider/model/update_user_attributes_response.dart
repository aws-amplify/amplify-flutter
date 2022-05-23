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

library amplify_auth_cognito.cognito_identity_provider.model.update_user_attributes_response;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/code_delivery_details_type.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'update_user_attributes_response.g.dart';

/// Represents the response from the server for the request to update user attributes.
abstract class UpdateUserAttributesResponse
    with
        _i1.AWSEquatable<UpdateUserAttributesResponse>
    implements
        Built<UpdateUserAttributesResponse,
            UpdateUserAttributesResponseBuilder> {
  /// Represents the response from the server for the request to update user attributes.
  factory UpdateUserAttributesResponse(
      {_i2.BuiltList<_i3.CodeDeliveryDetailsType>? codeDeliveryDetailsList}) {
    return _$UpdateUserAttributesResponse._(
        codeDeliveryDetailsList: codeDeliveryDetailsList);
  }

  /// Represents the response from the server for the request to update user attributes.
  factory UpdateUserAttributesResponse.build(
          [void Function(UpdateUserAttributesResponseBuilder) updates]) =
      _$UpdateUserAttributesResponse;

  const UpdateUserAttributesResponse._();

  /// Constructs a [UpdateUserAttributesResponse] from a [payload] and [response].
  factory UpdateUserAttributesResponse.fromResponse(
          UpdateUserAttributesResponse payload,
          _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    _UpdateUserAttributesResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateUserAttributesResponseBuilder b) {}

  /// The code delivery details list from the server for the request to update user attributes.
  _i2.BuiltList<_i3.CodeDeliveryDetailsType>? get codeDeliveryDetailsList;
  @override
  List<Object?> get props => [codeDeliveryDetailsList];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateUserAttributesResponse');
    helper.add('codeDeliveryDetailsList', codeDeliveryDetailsList);
    return helper.toString();
  }
}

class _UpdateUserAttributesResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<UpdateUserAttributesResponse> {
  const _UpdateUserAttributesResponseAwsJson11Serializer()
      : super('UpdateUserAttributesResponse');

  @override
  Iterable<Type> get types =>
      const [UpdateUserAttributesResponse, _$UpdateUserAttributesResponse];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  UpdateUserAttributesResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UpdateUserAttributesResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'CodeDeliveryDetailsList':
          if (value != null) {
            result.codeDeliveryDetailsList.replace((serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                        _i2.BuiltList, [FullType(_i3.CodeDeliveryDetailsType)]))
                as _i2.BuiltList<_i3.CodeDeliveryDetailsType>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as UpdateUserAttributesResponse);
    final result = <Object?>[];
    if (payload.codeDeliveryDetailsList != null) {
      result
        ..add('CodeDeliveryDetailsList')
        ..add(serializers.serialize(payload.codeDeliveryDetailsList!,
            specifiedType: const FullType(
                _i2.BuiltList, [FullType(_i3.CodeDeliveryDetailsType)])));
    }
    return result;
  }
}
