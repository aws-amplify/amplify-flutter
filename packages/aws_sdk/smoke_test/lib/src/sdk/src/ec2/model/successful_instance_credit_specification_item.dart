// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.successful_instance_credit_specification_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'successful_instance_credit_specification_item.g.dart';

/// Describes the burstable performance instance whose credit option for CPU usage was successfully modified.
abstract class SuccessfulInstanceCreditSpecificationItem
    with
        _i1.AWSEquatable<SuccessfulInstanceCreditSpecificationItem>
    implements
        Built<SuccessfulInstanceCreditSpecificationItem,
            SuccessfulInstanceCreditSpecificationItemBuilder> {
  /// Describes the burstable performance instance whose credit option for CPU usage was successfully modified.
  factory SuccessfulInstanceCreditSpecificationItem({String? instanceId}) {
    return _$SuccessfulInstanceCreditSpecificationItem._(
        instanceId: instanceId);
  }

  /// Describes the burstable performance instance whose credit option for CPU usage was successfully modified.
  factory SuccessfulInstanceCreditSpecificationItem.build(
      [void Function(SuccessfulInstanceCreditSpecificationItemBuilder)
          updates]) = _$SuccessfulInstanceCreditSpecificationItem;

  const SuccessfulInstanceCreditSpecificationItem._();

  static const List<
          _i2.SmithySerializer<SuccessfulInstanceCreditSpecificationItem>>
      serializers = [
    SuccessfulInstanceCreditSpecificationItemEc2QuerySerializer()
  ];

  /// The ID of the instance.
  String? get instanceId;
  @override
  List<Object?> get props => [instanceId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SuccessfulInstanceCreditSpecificationItem')
          ..add(
            'instanceId',
            instanceId,
          );
    return helper.toString();
  }
}

class SuccessfulInstanceCreditSpecificationItemEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<SuccessfulInstanceCreditSpecificationItem> {
  const SuccessfulInstanceCreditSpecificationItemEc2QuerySerializer()
      : super('SuccessfulInstanceCreditSpecificationItem');

  @override
  Iterable<Type> get types => const [
        SuccessfulInstanceCreditSpecificationItem,
        _$SuccessfulInstanceCreditSpecificationItem,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SuccessfulInstanceCreditSpecificationItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SuccessfulInstanceCreditSpecificationItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
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
    SuccessfulInstanceCreditSpecificationItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SuccessfulInstanceCreditSpecificationItemResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SuccessfulInstanceCreditSpecificationItem(:instanceId) = object;
    if (instanceId != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
