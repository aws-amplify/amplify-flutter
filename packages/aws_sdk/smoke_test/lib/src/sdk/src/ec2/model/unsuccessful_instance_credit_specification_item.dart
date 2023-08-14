// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.unsuccessful_instance_credit_specification_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_instance_credit_specification_item_error.dart';

part 'unsuccessful_instance_credit_specification_item.g.dart';

/// Describes the burstable performance instance whose credit option for CPU usage was not modified.
abstract class UnsuccessfulInstanceCreditSpecificationItem
    with
        _i1.AWSEquatable<UnsuccessfulInstanceCreditSpecificationItem>
    implements
        Built<UnsuccessfulInstanceCreditSpecificationItem,
            UnsuccessfulInstanceCreditSpecificationItemBuilder> {
  /// Describes the burstable performance instance whose credit option for CPU usage was not modified.
  factory UnsuccessfulInstanceCreditSpecificationItem({
    String? instanceId,
    UnsuccessfulInstanceCreditSpecificationItemError? error,
  }) {
    return _$UnsuccessfulInstanceCreditSpecificationItem._(
      instanceId: instanceId,
      error: error,
    );
  }

  /// Describes the burstable performance instance whose credit option for CPU usage was not modified.
  factory UnsuccessfulInstanceCreditSpecificationItem.build(
      [void Function(UnsuccessfulInstanceCreditSpecificationItemBuilder)
          updates]) = _$UnsuccessfulInstanceCreditSpecificationItem;

  const UnsuccessfulInstanceCreditSpecificationItem._();

  static const List<
          _i2.SmithySerializer<UnsuccessfulInstanceCreditSpecificationItem>>
      serializers = [
    UnsuccessfulInstanceCreditSpecificationItemEc2QuerySerializer()
  ];

  /// The ID of the instance.
  String? get instanceId;

  /// The applicable error for the burstable performance instance whose credit option for CPU usage was not modified.
  UnsuccessfulInstanceCreditSpecificationItemError? get error;
  @override
  List<Object?> get props => [
        instanceId,
        error,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'UnsuccessfulInstanceCreditSpecificationItem')
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'error',
        error,
      );
    return helper.toString();
  }
}

class UnsuccessfulInstanceCreditSpecificationItemEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<UnsuccessfulInstanceCreditSpecificationItem> {
  const UnsuccessfulInstanceCreditSpecificationItemEc2QuerySerializer()
      : super('UnsuccessfulInstanceCreditSpecificationItem');

  @override
  Iterable<Type> get types => const [
        UnsuccessfulInstanceCreditSpecificationItem,
        _$UnsuccessfulInstanceCreditSpecificationItem,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UnsuccessfulInstanceCreditSpecificationItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnsuccessfulInstanceCreditSpecificationItemBuilder();
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
        case 'error':
          result.error.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
                UnsuccessfulInstanceCreditSpecificationItemError),
          ) as UnsuccessfulInstanceCreditSpecificationItemError));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UnsuccessfulInstanceCreditSpecificationItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'UnsuccessfulInstanceCreditSpecificationItemResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final UnsuccessfulInstanceCreditSpecificationItem(:instanceId, :error) =
        object;
    if (instanceId != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (error != null) {
      result$
        ..add(const _i2.XmlElementName('Error'))
        ..add(serializers.serialize(
          error,
          specifiedType:
              const FullType(UnsuccessfulInstanceCreditSpecificationItemError),
        ));
    }
    return result$;
  }
}
