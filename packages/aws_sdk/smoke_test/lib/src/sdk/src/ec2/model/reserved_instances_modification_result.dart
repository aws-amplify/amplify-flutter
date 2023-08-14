// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reserved_instances_modification_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_configuration.dart';

part 'reserved_instances_modification_result.g.dart';

/// Describes the modification request/s.
abstract class ReservedInstancesModificationResult
    with
        _i1.AWSEquatable<ReservedInstancesModificationResult>
    implements
        Built<ReservedInstancesModificationResult,
            ReservedInstancesModificationResultBuilder> {
  /// Describes the modification request/s.
  factory ReservedInstancesModificationResult({
    String? reservedInstancesId,
    ReservedInstancesConfiguration? targetConfiguration,
  }) {
    return _$ReservedInstancesModificationResult._(
      reservedInstancesId: reservedInstancesId,
      targetConfiguration: targetConfiguration,
    );
  }

  /// Describes the modification request/s.
  factory ReservedInstancesModificationResult.build(
          [void Function(ReservedInstancesModificationResultBuilder) updates]) =
      _$ReservedInstancesModificationResult;

  const ReservedInstancesModificationResult._();

  static const List<_i2.SmithySerializer<ReservedInstancesModificationResult>>
      serializers = [ReservedInstancesModificationResultEc2QuerySerializer()];

  /// The ID for the Reserved Instances that were created as part of the modification request. This field is only available when the modification is fulfilled.
  String? get reservedInstancesId;

  /// The target Reserved Instances configurations supplied as part of the modification request.
  ReservedInstancesConfiguration? get targetConfiguration;
  @override
  List<Object?> get props => [
        reservedInstancesId,
        targetConfiguration,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ReservedInstancesModificationResult')
          ..add(
            'reservedInstancesId',
            reservedInstancesId,
          )
          ..add(
            'targetConfiguration',
            targetConfiguration,
          );
    return helper.toString();
  }
}

class ReservedInstancesModificationResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ReservedInstancesModificationResult> {
  const ReservedInstancesModificationResultEc2QuerySerializer()
      : super('ReservedInstancesModificationResult');

  @override
  Iterable<Type> get types => const [
        ReservedInstancesModificationResult,
        _$ReservedInstancesModificationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReservedInstancesModificationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservedInstancesModificationResultBuilder();
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
        case 'targetConfiguration':
          result.targetConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ReservedInstancesConfiguration),
          ) as ReservedInstancesConfiguration));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReservedInstancesModificationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ReservedInstancesModificationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReservedInstancesModificationResult(
      :reservedInstancesId,
      :targetConfiguration
    ) = object;
    if (reservedInstancesId != null) {
      result$
        ..add(const _i2.XmlElementName('ReservedInstancesId'))
        ..add(serializers.serialize(
          reservedInstancesId,
          specifiedType: const FullType(String),
        ));
    }
    if (targetConfiguration != null) {
      result$
        ..add(const _i2.XmlElementName('TargetConfiguration'))
        ..add(serializers.serialize(
          targetConfiguration,
          specifiedType: const FullType(ReservedInstancesConfiguration),
        ));
    }
    return result$;
  }
}
