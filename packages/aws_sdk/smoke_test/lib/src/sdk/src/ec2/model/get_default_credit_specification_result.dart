// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_default_credit_specification_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_family_credit_specification.dart';

part 'get_default_credit_specification_result.g.dart';

abstract class GetDefaultCreditSpecificationResult
    with
        _i1.AWSEquatable<GetDefaultCreditSpecificationResult>
    implements
        Built<GetDefaultCreditSpecificationResult,
            GetDefaultCreditSpecificationResultBuilder> {
  factory GetDefaultCreditSpecificationResult(
      {InstanceFamilyCreditSpecification? instanceFamilyCreditSpecification}) {
    return _$GetDefaultCreditSpecificationResult._(
        instanceFamilyCreditSpecification: instanceFamilyCreditSpecification);
  }

  factory GetDefaultCreditSpecificationResult.build(
          [void Function(GetDefaultCreditSpecificationResultBuilder) updates]) =
      _$GetDefaultCreditSpecificationResult;

  const GetDefaultCreditSpecificationResult._();

  /// Constructs a [GetDefaultCreditSpecificationResult] from a [payload] and [response].
  factory GetDefaultCreditSpecificationResult.fromResponse(
    GetDefaultCreditSpecificationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetDefaultCreditSpecificationResult>>
      serializers = [GetDefaultCreditSpecificationResultEc2QuerySerializer()];

  /// The default credit option for CPU usage of the instance family.
  InstanceFamilyCreditSpecification? get instanceFamilyCreditSpecification;
  @override
  List<Object?> get props => [instanceFamilyCreditSpecification];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetDefaultCreditSpecificationResult')
          ..add(
            'instanceFamilyCreditSpecification',
            instanceFamilyCreditSpecification,
          );
    return helper.toString();
  }
}

class GetDefaultCreditSpecificationResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<GetDefaultCreditSpecificationResult> {
  const GetDefaultCreditSpecificationResultEc2QuerySerializer()
      : super('GetDefaultCreditSpecificationResult');

  @override
  Iterable<Type> get types => const [
        GetDefaultCreditSpecificationResult,
        _$GetDefaultCreditSpecificationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetDefaultCreditSpecificationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDefaultCreditSpecificationResultBuilder();
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
    GetDefaultCreditSpecificationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetDefaultCreditSpecificationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetDefaultCreditSpecificationResult(
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
