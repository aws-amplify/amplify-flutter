// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_policy_rule_meta_data; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'transit_gateway_policy_rule_meta_data.g.dart';

/// Describes the meta data tags associated with a transit gateway policy rule.
abstract class TransitGatewayPolicyRuleMetaData
    with
        _i1.AWSEquatable<TransitGatewayPolicyRuleMetaData>
    implements
        Built<TransitGatewayPolicyRuleMetaData,
            TransitGatewayPolicyRuleMetaDataBuilder> {
  /// Describes the meta data tags associated with a transit gateway policy rule.
  factory TransitGatewayPolicyRuleMetaData({
    String? metaDataKey,
    String? metaDataValue,
  }) {
    return _$TransitGatewayPolicyRuleMetaData._(
      metaDataKey: metaDataKey,
      metaDataValue: metaDataValue,
    );
  }

  /// Describes the meta data tags associated with a transit gateway policy rule.
  factory TransitGatewayPolicyRuleMetaData.build(
          [void Function(TransitGatewayPolicyRuleMetaDataBuilder) updates]) =
      _$TransitGatewayPolicyRuleMetaData;

  const TransitGatewayPolicyRuleMetaData._();

  static const List<_i2.SmithySerializer<TransitGatewayPolicyRuleMetaData>>
      serializers = [TransitGatewayPolicyRuleMetaDataEc2QuerySerializer()];

  /// The key name for the transit gateway policy rule meta data tag.
  String? get metaDataKey;

  /// The value of the key for the transit gateway policy rule meta data tag.
  String? get metaDataValue;
  @override
  List<Object?> get props => [
        metaDataKey,
        metaDataValue,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayPolicyRuleMetaData')
          ..add(
            'metaDataKey',
            metaDataKey,
          )
          ..add(
            'metaDataValue',
            metaDataValue,
          );
    return helper.toString();
  }
}

class TransitGatewayPolicyRuleMetaDataEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<TransitGatewayPolicyRuleMetaData> {
  const TransitGatewayPolicyRuleMetaDataEc2QuerySerializer()
      : super('TransitGatewayPolicyRuleMetaData');

  @override
  Iterable<Type> get types => const [
        TransitGatewayPolicyRuleMetaData,
        _$TransitGatewayPolicyRuleMetaData,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayPolicyRuleMetaData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayPolicyRuleMetaDataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'metaDataKey':
          result.metaDataKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'metaDataValue':
          result.metaDataValue = (serializers.deserialize(
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
    TransitGatewayPolicyRuleMetaData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TransitGatewayPolicyRuleMetaDataResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayPolicyRuleMetaData(:metaDataKey, :metaDataValue) =
        object;
    if (metaDataKey != null) {
      result$
        ..add(const _i2.XmlElementName('MetaDataKey'))
        ..add(serializers.serialize(
          metaDataKey,
          specifiedType: const FullType(String),
        ));
    }
    if (metaDataValue != null) {
      result$
        ..add(const _i2.XmlElementName('MetaDataValue'))
        ..add(serializers.serialize(
          metaDataValue,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
