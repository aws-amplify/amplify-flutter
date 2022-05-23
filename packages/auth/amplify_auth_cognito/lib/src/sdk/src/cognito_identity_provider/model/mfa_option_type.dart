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

library amplify_auth_cognito.cognito_identity_provider.model.mfa_option_type;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/delivery_medium_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'mfa_option_type.g.dart';

/// _This data type is no longer supported._ You can use it only for SMS MFA configurations. You can't use it for TOTP software token MFA configurations.
abstract class MfaOptionType
    with _i1.AWSEquatable<MfaOptionType>
    implements Built<MfaOptionType, MfaOptionTypeBuilder> {
  /// _This data type is no longer supported._ You can use it only for SMS MFA configurations. You can't use it for TOTP software token MFA configurations.
  factory MfaOptionType(
      {String? attributeName, _i2.DeliveryMediumType? deliveryMedium}) {
    return _$MfaOptionType._(
        attributeName: attributeName, deliveryMedium: deliveryMedium);
  }

  /// _This data type is no longer supported._ You can use it only for SMS MFA configurations. You can't use it for TOTP software token MFA configurations.
  factory MfaOptionType.build([void Function(MfaOptionTypeBuilder) updates]) =
      _$MfaOptionType;

  const MfaOptionType._();

  static const List<_i3.SmithySerializer> serializers = [
    _MfaOptionTypeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MfaOptionTypeBuilder b) {}

  /// The attribute name of the MFA option type. The only valid value is `phone_number`.
  String? get attributeName;

  /// The delivery medium to send the MFA code. You can use this parameter to set only the `SMS` delivery medium value.
  _i2.DeliveryMediumType? get deliveryMedium;
  @override
  List<Object?> get props => [attributeName, deliveryMedium];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MfaOptionType');
    helper.add('attributeName', attributeName);
    helper.add('deliveryMedium', deliveryMedium);
    return helper.toString();
  }
}

class _MfaOptionTypeAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<MfaOptionType> {
  const _MfaOptionTypeAwsJson11Serializer() : super('MfaOptionType');

  @override
  Iterable<Type> get types => const [MfaOptionType, _$MfaOptionType];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  MfaOptionType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MfaOptionTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AttributeName':
          if (value != null) {
            result.attributeName = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'DeliveryMedium':
          if (value != null) {
            result.deliveryMedium = (serializers.deserialize(value,
                    specifiedType: const FullType(_i2.DeliveryMediumType))
                as _i2.DeliveryMediumType);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as MfaOptionType);
    final result = <Object?>[];
    if (payload.attributeName != null) {
      result
        ..add('AttributeName')
        ..add(serializers.serialize(payload.attributeName!,
            specifiedType: const FullType(String)));
    }
    if (payload.deliveryMedium != null) {
      result
        ..add('DeliveryMedium')
        ..add(serializers.serialize(payload.deliveryMedium!,
            specifiedType: const FullType(_i2.DeliveryMediumType)));
    }
    return result;
  }
}
