// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.credit_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'credit_specification_request.g.dart';

/// The credit option for CPU usage of a T instance.
abstract class CreditSpecificationRequest
    with _i1.AWSEquatable<CreditSpecificationRequest>
    implements
        Built<CreditSpecificationRequest, CreditSpecificationRequestBuilder> {
  /// The credit option for CPU usage of a T instance.
  factory CreditSpecificationRequest({String? cpuCredits}) {
    return _$CreditSpecificationRequest._(cpuCredits: cpuCredits);
  }

  /// The credit option for CPU usage of a T instance.
  factory CreditSpecificationRequest.build(
          [void Function(CreditSpecificationRequestBuilder) updates]) =
      _$CreditSpecificationRequest;

  const CreditSpecificationRequest._();

  static const List<_i2.SmithySerializer<CreditSpecificationRequest>>
      serializers = [CreditSpecificationRequestEc2QuerySerializer()];

  /// The credit option for CPU usage of a T instance.
  ///
  /// Valid values: `standard` | `unlimited`
  String? get cpuCredits;
  @override
  List<Object?> get props => [cpuCredits];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreditSpecificationRequest')
      ..add(
        'cpuCredits',
        cpuCredits,
      );
    return helper.toString();
  }
}

class CreditSpecificationRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreditSpecificationRequest> {
  const CreditSpecificationRequestEc2QuerySerializer()
      : super('CreditSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        CreditSpecificationRequest,
        _$CreditSpecificationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreditSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreditSpecificationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CpuCredits':
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
    CreditSpecificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreditSpecificationRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreditSpecificationRequest(:cpuCredits) = object;
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
