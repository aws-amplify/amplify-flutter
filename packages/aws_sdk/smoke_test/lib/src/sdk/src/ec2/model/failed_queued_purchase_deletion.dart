// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.failed_queued_purchase_deletion; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_queued_reserved_instances_error.dart';

part 'failed_queued_purchase_deletion.g.dart';

/// Describes a Reserved Instance whose queued purchase was not deleted.
abstract class FailedQueuedPurchaseDeletion
    with
        _i1.AWSEquatable<FailedQueuedPurchaseDeletion>
    implements
        Built<FailedQueuedPurchaseDeletion,
            FailedQueuedPurchaseDeletionBuilder> {
  /// Describes a Reserved Instance whose queued purchase was not deleted.
  factory FailedQueuedPurchaseDeletion({
    DeleteQueuedReservedInstancesError? error,
    String? reservedInstancesId,
  }) {
    return _$FailedQueuedPurchaseDeletion._(
      error: error,
      reservedInstancesId: reservedInstancesId,
    );
  }

  /// Describes a Reserved Instance whose queued purchase was not deleted.
  factory FailedQueuedPurchaseDeletion.build(
          [void Function(FailedQueuedPurchaseDeletionBuilder) updates]) =
      _$FailedQueuedPurchaseDeletion;

  const FailedQueuedPurchaseDeletion._();

  static const List<_i2.SmithySerializer<FailedQueuedPurchaseDeletion>>
      serializers = [FailedQueuedPurchaseDeletionEc2QuerySerializer()];

  /// The error.
  DeleteQueuedReservedInstancesError? get error;

  /// The ID of the Reserved Instance.
  String? get reservedInstancesId;
  @override
  List<Object?> get props => [
        error,
        reservedInstancesId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FailedQueuedPurchaseDeletion')
      ..add(
        'error',
        error,
      )
      ..add(
        'reservedInstancesId',
        reservedInstancesId,
      );
    return helper.toString();
  }
}

class FailedQueuedPurchaseDeletionEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<FailedQueuedPurchaseDeletion> {
  const FailedQueuedPurchaseDeletionEc2QuerySerializer()
      : super('FailedQueuedPurchaseDeletion');

  @override
  Iterable<Type> get types => const [
        FailedQueuedPurchaseDeletion,
        _$FailedQueuedPurchaseDeletion,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FailedQueuedPurchaseDeletion deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FailedQueuedPurchaseDeletionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'error':
          result.error.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(DeleteQueuedReservedInstancesError),
          ) as DeleteQueuedReservedInstancesError));
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
    FailedQueuedPurchaseDeletion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'FailedQueuedPurchaseDeletionResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FailedQueuedPurchaseDeletion(:error, :reservedInstancesId) = object;
    if (error != null) {
      result$
        ..add(const _i2.XmlElementName('Error'))
        ..add(serializers.serialize(
          error,
          specifiedType: const FullType(DeleteQueuedReservedInstancesError),
        ));
    }
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
