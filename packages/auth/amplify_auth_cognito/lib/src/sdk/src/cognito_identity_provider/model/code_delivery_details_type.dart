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

library amplify_auth_cognito.cognito_identity_provider.model.code_delivery_details_type;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/delivery_medium_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'code_delivery_details_type.g.dart';

/// The code delivery details being returned from the server.
abstract class CodeDeliveryDetailsType
    with _i1.AWSEquatable<CodeDeliveryDetailsType>
    implements Built<CodeDeliveryDetailsType, CodeDeliveryDetailsTypeBuilder> {
  /// The code delivery details being returned from the server.
  factory CodeDeliveryDetailsType(
      {String? attributeName,
      _i2.DeliveryMediumType? deliveryMedium,
      String? destination}) {
    return _$CodeDeliveryDetailsType._(
        attributeName: attributeName,
        deliveryMedium: deliveryMedium,
        destination: destination);
  }

  /// The code delivery details being returned from the server.
  factory CodeDeliveryDetailsType.build(
          [void Function(CodeDeliveryDetailsTypeBuilder) updates]) =
      _$CodeDeliveryDetailsType;

  const CodeDeliveryDetailsType._();

  static const List<_i3.SmithySerializer> serializers = [
    _CodeDeliveryDetailsTypeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CodeDeliveryDetailsTypeBuilder b) {}

  /// The attribute name.
  String? get attributeName;

  /// The delivery medium (email message or phone number).
  _i2.DeliveryMediumType? get deliveryMedium;

  /// The destination for the code delivery details.
  String? get destination;
  @override
  List<Object?> get props => [attributeName, deliveryMedium, destination];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CodeDeliveryDetailsType');
    helper.add('attributeName', attributeName);
    helper.add('deliveryMedium', deliveryMedium);
    helper.add('destination', destination);
    return helper.toString();
  }
}

class _CodeDeliveryDetailsTypeAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<CodeDeliveryDetailsType> {
  const _CodeDeliveryDetailsTypeAwsJson11Serializer()
      : super('CodeDeliveryDetailsType');

  @override
  Iterable<Type> get types =>
      const [CodeDeliveryDetailsType, _$CodeDeliveryDetailsType];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  CodeDeliveryDetailsType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = CodeDeliveryDetailsTypeBuilder();
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
        case 'Destination':
          if (value != null) {
            result.destination = (serializers.deserialize(value,
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
    final payload = (object as CodeDeliveryDetailsType);
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
    if (payload.destination != null) {
      result
        ..add('Destination')
        ..add(serializers.serialize(payload.destination!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
