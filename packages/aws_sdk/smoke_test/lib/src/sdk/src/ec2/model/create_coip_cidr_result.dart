// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_coip_cidr_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/coip_cidr.dart';

part 'create_coip_cidr_result.g.dart';

abstract class CreateCoipCidrResult
    with _i1.AWSEquatable<CreateCoipCidrResult>
    implements Built<CreateCoipCidrResult, CreateCoipCidrResultBuilder> {
  factory CreateCoipCidrResult({CoipCidr? coipCidr}) {
    return _$CreateCoipCidrResult._(coipCidr: coipCidr);
  }

  factory CreateCoipCidrResult.build(
          [void Function(CreateCoipCidrResultBuilder) updates]) =
      _$CreateCoipCidrResult;

  const CreateCoipCidrResult._();

  /// Constructs a [CreateCoipCidrResult] from a [payload] and [response].
  factory CreateCoipCidrResult.fromResponse(
    CreateCoipCidrResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateCoipCidrResult>> serializers = [
    CreateCoipCidrResultEc2QuerySerializer()
  ];

  /// Information about a range of customer-owned IP addresses.
  CoipCidr? get coipCidr;
  @override
  List<Object?> get props => [coipCidr];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateCoipCidrResult')
      ..add(
        'coipCidr',
        coipCidr,
      );
    return helper.toString();
  }
}

class CreateCoipCidrResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateCoipCidrResult> {
  const CreateCoipCidrResultEc2QuerySerializer()
      : super('CreateCoipCidrResult');

  @override
  Iterable<Type> get types => const [
        CreateCoipCidrResult,
        _$CreateCoipCidrResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateCoipCidrResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCoipCidrResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'coipCidr':
          result.coipCidr.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CoipCidr),
          ) as CoipCidr));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateCoipCidrResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateCoipCidrResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateCoipCidrResult(:coipCidr) = object;
    if (coipCidr != null) {
      result$
        ..add(const _i2.XmlElementName('CoipCidr'))
        ..add(serializers.serialize(
          coipCidr,
          specifiedType: const FullType(CoipCidr),
        ));
    }
    return result$;
  }
}
