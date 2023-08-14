// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_reserved_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'modify_reserved_instances_result.g.dart';

/// Contains the output of ModifyReservedInstances.
abstract class ModifyReservedInstancesResult
    with
        _i1.AWSEquatable<ModifyReservedInstancesResult>
    implements
        Built<ModifyReservedInstancesResult,
            ModifyReservedInstancesResultBuilder> {
  /// Contains the output of ModifyReservedInstances.
  factory ModifyReservedInstancesResult(
      {String? reservedInstancesModificationId}) {
    return _$ModifyReservedInstancesResult._(
        reservedInstancesModificationId: reservedInstancesModificationId);
  }

  /// Contains the output of ModifyReservedInstances.
  factory ModifyReservedInstancesResult.build(
          [void Function(ModifyReservedInstancesResultBuilder) updates]) =
      _$ModifyReservedInstancesResult;

  const ModifyReservedInstancesResult._();

  /// Constructs a [ModifyReservedInstancesResult] from a [payload] and [response].
  factory ModifyReservedInstancesResult.fromResponse(
    ModifyReservedInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyReservedInstancesResult>>
      serializers = [ModifyReservedInstancesResultEc2QuerySerializer()];

  /// The ID for the modification.
  String? get reservedInstancesModificationId;
  @override
  List<Object?> get props => [reservedInstancesModificationId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyReservedInstancesResult')
      ..add(
        'reservedInstancesModificationId',
        reservedInstancesModificationId,
      );
    return helper.toString();
  }
}

class ModifyReservedInstancesResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyReservedInstancesResult> {
  const ModifyReservedInstancesResultEc2QuerySerializer()
      : super('ModifyReservedInstancesResult');

  @override
  Iterable<Type> get types => const [
        ModifyReservedInstancesResult,
        _$ModifyReservedInstancesResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyReservedInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyReservedInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'reservedInstancesModificationId':
          result.reservedInstancesModificationId = (serializers.deserialize(
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
    ModifyReservedInstancesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyReservedInstancesResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyReservedInstancesResult(:reservedInstancesModificationId) =
        object;
    if (reservedInstancesModificationId != null) {
      result$
        ..add(const _i2.XmlElementName('ReservedInstancesModificationId'))
        ..add(serializers.serialize(
          reservedInstancesModificationId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
