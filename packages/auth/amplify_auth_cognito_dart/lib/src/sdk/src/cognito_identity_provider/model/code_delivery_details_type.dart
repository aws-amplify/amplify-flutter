// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? destination,
    _i2.DeliveryMediumType? deliveryMedium,
    String? attributeName,
  }) {
    return _$CodeDeliveryDetailsType._(
      destination: destination,
      deliveryMedium: deliveryMedium,
      attributeName: attributeName,
    );
  }

  /// The delivery details for an email or SMS message that Amazon Cognito sent for authentication or verification.
  factory CodeDeliveryDetailsType.build(
          [void Function(CodeDeliveryDetailsTypeBuilder) updates]) =
      _$CodeDeliveryDetailsType;

  const CodeDeliveryDetailsType._();

  static const List<_i3.SmithySerializer<CodeDeliveryDetailsType>> serializers =
      [CodeDeliveryDetailsTypeAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CodeDeliveryDetailsTypeBuilder b) {}

  /// The email address or phone number destination where Amazon Cognito sent the code.
  String? get destination;

  /// The method that Amazon Cognito used to send the code.
  _i2.DeliveryMediumType? get deliveryMedium;

  /// The name of the attribute that Amazon Cognito verifies with the code.
  String? get attributeName;
  @override
  List<Object?> get props => [
        destination,
        deliveryMedium,
        attributeName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CodeDeliveryDetailsType')
      ..add(
        'destination',
        destination,
      )
      ..add(
        'deliveryMedium',
        deliveryMedium,
      )
      ..add(
        'attributeName',
        attributeName,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Destination':
          result.destination = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DeliveryMedium':
          result.deliveryMedium = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.DeliveryMediumType),
          ) as _i2.DeliveryMediumType);
        case 'AttributeName':
          result.attributeName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CodeDeliveryDetailsType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CodeDeliveryDetailsType(
      :destination,
      :deliveryMedium,
      :attributeName
    ) = object;
    if (destination != null) {
      result$
        ..add('Destination')
        ..add(serializers.serialize(
          destination,
          specifiedType: const FullType(String),
        ));
    }
    if (deliveryMedium != null) {
      result$
        ..add('DeliveryMedium')
        ..add(serializers.serialize(
          deliveryMedium,
          specifiedType: const FullType(_i2.DeliveryMediumType),
        ));
    }
    if (attributeName != null) {
      result$
        ..add('AttributeName')
        ..add(serializers.serialize(
          attributeName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
