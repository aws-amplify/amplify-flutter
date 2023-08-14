// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.credit_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'credit_specification.g.dart';

/// Describes the credit option for CPU usage of a T instance.
abstract class CreditSpecification
    with _i1.AWSEquatable<CreditSpecification>
    implements Built<CreditSpecification, CreditSpecificationBuilder> {
  /// Describes the credit option for CPU usage of a T instance.
  factory CreditSpecification({String? cpuCredits}) {
    return _$CreditSpecification._(cpuCredits: cpuCredits);
  }

  /// Describes the credit option for CPU usage of a T instance.
  factory CreditSpecification.build(
          [void Function(CreditSpecificationBuilder) updates]) =
      _$CreditSpecification;

  const CreditSpecification._();

  static const List<_i2.SmithySerializer<CreditSpecification>> serializers = [
    CreditSpecificationEc2QuerySerializer()
  ];

  /// The credit option for CPU usage of a T instance.
  ///
  /// Valid values: `standard` | `unlimited`
  String? get cpuCredits;
  @override
  List<Object?> get props => [cpuCredits];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreditSpecification')
      ..add(
        'cpuCredits',
        cpuCredits,
      );
    return helper.toString();
  }
}

class CreditSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreditSpecification> {
  const CreditSpecificationEc2QuerySerializer() : super('CreditSpecification');

  @override
  Iterable<Type> get types => const [
        CreditSpecification,
        _$CreditSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreditSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreditSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    CreditSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreditSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreditSpecification(:cpuCredits) = object;
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
