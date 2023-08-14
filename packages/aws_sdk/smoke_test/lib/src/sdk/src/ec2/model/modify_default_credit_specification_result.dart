// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_default_credit_specification_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_family_credit_specification.dart';

part 'modify_default_credit_specification_result.g.dart';

abstract class ModifyDefaultCreditSpecificationResult
    with
        _i1.AWSEquatable<ModifyDefaultCreditSpecificationResult>
    implements
        Built<ModifyDefaultCreditSpecificationResult,
            ModifyDefaultCreditSpecificationResultBuilder> {
  factory ModifyDefaultCreditSpecificationResult(
      {InstanceFamilyCreditSpecification? instanceFamilyCreditSpecification}) {
    return _$ModifyDefaultCreditSpecificationResult._(
        instanceFamilyCreditSpecification: instanceFamilyCreditSpecification);
  }

  factory ModifyDefaultCreditSpecificationResult.build(
      [void Function(ModifyDefaultCreditSpecificationResultBuilder)
          updates]) = _$ModifyDefaultCreditSpecificationResult;

  const ModifyDefaultCreditSpecificationResult._();

  /// Constructs a [ModifyDefaultCreditSpecificationResult] from a [payload] and [response].
  factory ModifyDefaultCreditSpecificationResult.fromResponse(
    ModifyDefaultCreditSpecificationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<ModifyDefaultCreditSpecificationResult>>
      serializers = [
    ModifyDefaultCreditSpecificationResultEc2QuerySerializer()
  ];

  /// The default credit option for CPU usage of the instance family.
  InstanceFamilyCreditSpecification? get instanceFamilyCreditSpecification;
  @override
  List<Object?> get props => [instanceFamilyCreditSpecification];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyDefaultCreditSpecificationResult')
          ..add(
            'instanceFamilyCreditSpecification',
            instanceFamilyCreditSpecification,
          );
    return helper.toString();
  }
}

class ModifyDefaultCreditSpecificationResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ModifyDefaultCreditSpecificationResult> {
  const ModifyDefaultCreditSpecificationResultEc2QuerySerializer()
      : super('ModifyDefaultCreditSpecificationResult');

  @override
  Iterable<Type> get types => const [
        ModifyDefaultCreditSpecificationResult,
        _$ModifyDefaultCreditSpecificationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyDefaultCreditSpecificationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyDefaultCreditSpecificationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceFamilyCreditSpecification':
          result.instanceFamilyCreditSpecification
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceFamilyCreditSpecification),
          ) as InstanceFamilyCreditSpecification));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyDefaultCreditSpecificationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyDefaultCreditSpecificationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyDefaultCreditSpecificationResult(
      :instanceFamilyCreditSpecification
    ) = object;
    if (instanceFamilyCreditSpecification != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceFamilyCreditSpecification'))
        ..add(serializers.serialize(
          instanceFamilyCreditSpecification,
          specifiedType: const FullType(InstanceFamilyCreditSpecification),
        ));
    }
    return result$;
  }
}
