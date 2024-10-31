// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.model.mfa_option_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/delivery_medium_type.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'mfa_option_type.g.dart';

/// _This data type is no longer supported._ Applies only to SMS multi-factor authentication (MFA) configurations. Does not apply to time-based one-time password (TOTP) software token MFA configurations.
abstract class MfaOptionType
    with _i1.AWSEquatable<MfaOptionType>
    implements Built<MfaOptionType, MfaOptionTypeBuilder> {
  /// _This data type is no longer supported._ Applies only to SMS multi-factor authentication (MFA) configurations. Does not apply to time-based one-time password (TOTP) software token MFA configurations.
  factory MfaOptionType({
    DeliveryMediumType? deliveryMedium,
    String? attributeName,
  }) {
    return _$MfaOptionType._(
      deliveryMedium: deliveryMedium,
      attributeName: attributeName,
    );
  }

  /// _This data type is no longer supported._ Applies only to SMS multi-factor authentication (MFA) configurations. Does not apply to time-based one-time password (TOTP) software token MFA configurations.
  factory MfaOptionType.build([void Function(MfaOptionTypeBuilder) updates]) =
      _$MfaOptionType;

  const MfaOptionType._();

  static const List<_i2.SmithySerializer<MfaOptionType>> serializers = [
    MfaOptionTypeAwsJson11Serializer()
  ];

  /// The delivery medium to send the MFA code. You can use this parameter to set only the `SMS` delivery medium value.
  DeliveryMediumType? get deliveryMedium;

  /// The attribute name of the MFA option type. The only valid value is `phone_number`.
  String? get attributeName;
  @override
  List<Object?> get props => [
        deliveryMedium,
        attributeName,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MfaOptionType')
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

class MfaOptionTypeAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<MfaOptionType> {
  const MfaOptionTypeAwsJson11Serializer() : super('MfaOptionType');

  @override
  Iterable<Type> get types => const [
        MfaOptionType,
        _$MfaOptionType,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  MfaOptionType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MfaOptionTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DeliveryMedium':
          result.deliveryMedium = (serializers.deserialize(
            value,
            specifiedType: const FullType(DeliveryMediumType),
          ) as DeliveryMediumType);
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
    MfaOptionType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MfaOptionType(:deliveryMedium, :attributeName) = object;
    if (deliveryMedium != null) {
      result$
        ..add('DeliveryMedium')
        ..add(serializers.serialize(
          deliveryMedium,
          specifiedType: const FullType(DeliveryMediumType),
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
