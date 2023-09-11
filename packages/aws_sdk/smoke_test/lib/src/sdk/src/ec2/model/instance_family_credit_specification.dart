// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_family_credit_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/unlimited_supported_instance_family.dart';

part 'instance_family_credit_specification.g.dart';

/// Describes the default credit option for CPU usage of a burstable performance instance family.
abstract class InstanceFamilyCreditSpecification
    with
        _i1.AWSEquatable<InstanceFamilyCreditSpecification>
    implements
        Built<InstanceFamilyCreditSpecification,
            InstanceFamilyCreditSpecificationBuilder> {
  /// Describes the default credit option for CPU usage of a burstable performance instance family.
  factory InstanceFamilyCreditSpecification({
    UnlimitedSupportedInstanceFamily? instanceFamily,
    String? cpuCredits,
  }) {
    return _$InstanceFamilyCreditSpecification._(
      instanceFamily: instanceFamily,
      cpuCredits: cpuCredits,
    );
  }

  /// Describes the default credit option for CPU usage of a burstable performance instance family.
  factory InstanceFamilyCreditSpecification.build(
          [void Function(InstanceFamilyCreditSpecificationBuilder) updates]) =
      _$InstanceFamilyCreditSpecification;

  const InstanceFamilyCreditSpecification._();

  static const List<_i2.SmithySerializer<InstanceFamilyCreditSpecification>>
      serializers = [InstanceFamilyCreditSpecificationEc2QuerySerializer()];

  /// The instance family.
  UnlimitedSupportedInstanceFamily? get instanceFamily;

  /// The default credit option for CPU usage of the instance family. Valid values are `standard` and `unlimited`.
  String? get cpuCredits;
  @override
  List<Object?> get props => [
        instanceFamily,
        cpuCredits,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceFamilyCreditSpecification')
          ..add(
            'instanceFamily',
            instanceFamily,
          )
          ..add(
            'cpuCredits',
            cpuCredits,
          );
    return helper.toString();
  }
}

class InstanceFamilyCreditSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceFamilyCreditSpecification> {
  const InstanceFamilyCreditSpecificationEc2QuerySerializer()
      : super('InstanceFamilyCreditSpecification');

  @override
  Iterable<Type> get types => const [
        InstanceFamilyCreditSpecification,
        _$InstanceFamilyCreditSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceFamilyCreditSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceFamilyCreditSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceFamily':
          result.instanceFamily = (serializers.deserialize(
            value,
            specifiedType: const FullType(UnlimitedSupportedInstanceFamily),
          ) as UnlimitedSupportedInstanceFamily);
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
    InstanceFamilyCreditSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InstanceFamilyCreditSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceFamilyCreditSpecification(:instanceFamily, :cpuCredits) =
        object;
    if (instanceFamily != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceFamily'))
        ..add(serializers.serialize(
          instanceFamily,
          specifiedType: const FullType(UnlimitedSupportedInstanceFamily),
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
