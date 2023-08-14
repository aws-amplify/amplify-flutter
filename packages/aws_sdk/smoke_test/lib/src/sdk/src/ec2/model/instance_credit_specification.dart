// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_credit_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'instance_credit_specification.g.dart';

/// Describes the credit option for CPU usage of a burstable performance instance.
abstract class InstanceCreditSpecification
    with _i1.AWSEquatable<InstanceCreditSpecification>
    implements
        Built<InstanceCreditSpecification, InstanceCreditSpecificationBuilder> {
  /// Describes the credit option for CPU usage of a burstable performance instance.
  factory InstanceCreditSpecification({
    String? instanceId,
    String? cpuCredits,
  }) {
    return _$InstanceCreditSpecification._(
      instanceId: instanceId,
      cpuCredits: cpuCredits,
    );
  }

  /// Describes the credit option for CPU usage of a burstable performance instance.
  factory InstanceCreditSpecification.build(
          [void Function(InstanceCreditSpecificationBuilder) updates]) =
      _$InstanceCreditSpecification;

  const InstanceCreditSpecification._();

  static const List<_i2.SmithySerializer<InstanceCreditSpecification>>
      serializers = [InstanceCreditSpecificationEc2QuerySerializer()];

  /// The ID of the instance.
  String? get instanceId;

  /// The credit option for CPU usage of the instance.
  ///
  /// Valid values: `standard` | `unlimited`
  String? get cpuCredits;
  @override
  List<Object?> get props => [
        instanceId,
        cpuCredits,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceCreditSpecification')
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'cpuCredits',
        cpuCredits,
      );
    return helper.toString();
  }
}

class InstanceCreditSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceCreditSpecification> {
  const InstanceCreditSpecificationEc2QuerySerializer()
      : super('InstanceCreditSpecification');

  @override
  Iterable<Type> get types => const [
        InstanceCreditSpecification,
        _$InstanceCreditSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceCreditSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceCreditSpecificationBuilder();
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
        case 'cpuCredits':
          result.cpuCredits = (serializers.deserialize(
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
    InstanceCreditSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InstanceCreditSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceCreditSpecification(:instanceId, :cpuCredits) = object;
    if (instanceId != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (cpuCredits != null) {
      result$
        ..add(const _i2.XmlElementName('CpuCredits'))
        ..add(serializers.serialize(
          cpuCredits,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
