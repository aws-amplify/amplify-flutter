// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.successful_queued_purchase_deletion; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'successful_queued_purchase_deletion.g.dart';

/// Describes a Reserved Instance whose queued purchase was successfully deleted.
abstract class SuccessfulQueuedPurchaseDeletion
    with
        _i1.AWSEquatable<SuccessfulQueuedPurchaseDeletion>
    implements
        Built<SuccessfulQueuedPurchaseDeletion,
            SuccessfulQueuedPurchaseDeletionBuilder> {
  /// Describes a Reserved Instance whose queued purchase was successfully deleted.
  factory SuccessfulQueuedPurchaseDeletion({String? reservedInstancesId}) {
    return _$SuccessfulQueuedPurchaseDeletion._(
        reservedInstancesId: reservedInstancesId);
  }

  /// Describes a Reserved Instance whose queued purchase was successfully deleted.
  factory SuccessfulQueuedPurchaseDeletion.build(
          [void Function(SuccessfulQueuedPurchaseDeletionBuilder) updates]) =
      _$SuccessfulQueuedPurchaseDeletion;

  const SuccessfulQueuedPurchaseDeletion._();

  static const List<_i2.SmithySerializer<SuccessfulQueuedPurchaseDeletion>>
      serializers = [SuccessfulQueuedPurchaseDeletionEc2QuerySerializer()];

  /// The ID of the Reserved Instance.
  String? get reservedInstancesId;
  @override
  List<Object?> get props => [reservedInstancesId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SuccessfulQueuedPurchaseDeletion')
          ..add(
            'reservedInstancesId',
            reservedInstancesId,
          );
    return helper.toString();
  }
}

class SuccessfulQueuedPurchaseDeletionEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SuccessfulQueuedPurchaseDeletion> {
  const SuccessfulQueuedPurchaseDeletionEc2QuerySerializer()
      : super('SuccessfulQueuedPurchaseDeletion');

  @override
  Iterable<Type> get types => const [
        SuccessfulQueuedPurchaseDeletion,
        _$SuccessfulQueuedPurchaseDeletion,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SuccessfulQueuedPurchaseDeletion deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SuccessfulQueuedPurchaseDeletionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'reservedInstancesId':
          result.reservedInstancesId = (serializers.deserialize(
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
    SuccessfulQueuedPurchaseDeletion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SuccessfulQueuedPurchaseDeletionResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SuccessfulQueuedPurchaseDeletion(:reservedInstancesId) = object;
    if (reservedInstancesId != null) {
      result$
        ..add(const _i2.XmlElementName('ReservedInstancesId'))
        ..add(serializers.serialize(
          reservedInstancesId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
