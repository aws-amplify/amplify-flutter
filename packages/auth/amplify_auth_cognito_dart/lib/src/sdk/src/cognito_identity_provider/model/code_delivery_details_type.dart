// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.code_delivery_details_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/delivery_medium_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'code_delivery_details_type.g.dart';

/// The delivery details for an email or SMS message that Amazon Cognito sent for authentication or verification.
abstract class CodeDeliveryDetailsType
    with _i1.AWSEquatable<CodeDeliveryDetailsType>
    implements Built<CodeDeliveryDetailsType, CodeDeliveryDetailsTypeBuilder> {
  /// The delivery details for an email or SMS message that Amazon Cognito sent for authentication or verification.
  factory CodeDeliveryDetailsType({
    String? attributeName,
    _i2.DeliveryMediumType? deliveryMedium,
    String? destination,
  }) {
    return _$CodeDeliveryDetailsType._(
      attributeName: attributeName,
      deliveryMedium: deliveryMedium,
      destination: destination,
    );
  }

  /// The delivery details for an email or SMS message that Amazon Cognito sent for authentication or verification.
  factory CodeDeliveryDetailsType.build(
          [void Function(CodeDeliveryDetailsTypeBuilder) updates]) =
      _$CodeDeliveryDetailsType;

  const CodeDeliveryDetailsType._();

  static const List<_i3.SmithySerializer> serializers = [
    CodeDeliveryDetailsTypeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CodeDeliveryDetailsTypeBuilder b) {}

  /// The name of the attribute that Amazon Cognito verifies with the code.
  String? get attributeName;

  /// The method that Amazon Cognito used to send the code.
  _i2.DeliveryMediumType? get deliveryMedium;

  /// The email address or phone number destination where Amazon Cognito sent the code.
  String? get destination;
  @override
  List<Object?> get props => [
        attributeName,
        deliveryMedium,
        destination,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CodeDeliveryDetailsType');
    helper.add(
      'attributeName',
      attributeName,
    );
    helper.add(
      'deliveryMedium',
      deliveryMedium,
    );
    helper.add(
      'destination',
      destination,
    );
    return helper.toString();
  }
}

class CodeDeliveryDetailsTypeAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<CodeDeliveryDetailsType> {
  const CodeDeliveryDetailsTypeAwsJson11Serializer()
      : super('CodeDeliveryDetailsType');

  @override
  Iterable<Type> get types => const [
        CodeDeliveryDetailsType,
        _$CodeDeliveryDetailsType,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  CodeDeliveryDetailsType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CodeDeliveryDetailsTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AttributeName':
          if (value != null) {
            result.attributeName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DeliveryMedium':
          if (value != null) {
            result.deliveryMedium = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DeliveryMediumType),
            ) as _i2.DeliveryMediumType);
          }
          break;
        case 'Destination':
          if (value != null) {
            result.destination = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as CodeDeliveryDetailsType);
    final result = <Object?>[];
    if (payload.attributeName != null) {
      result
        ..add('AttributeName')
        ..add(serializers.serialize(
          payload.attributeName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.deliveryMedium != null) {
      result
        ..add('DeliveryMedium')
        ..add(serializers.serialize(
          payload.deliveryMedium!,
          specifiedType: const FullType(_i2.DeliveryMediumType),
        ));
    }
    if (payload.destination != null) {
      result
        ..add('Destination')
        ..add(serializers.serialize(
          payload.destination!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
