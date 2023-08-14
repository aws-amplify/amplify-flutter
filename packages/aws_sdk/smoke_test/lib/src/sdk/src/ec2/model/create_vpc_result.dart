// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_vpc_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc.dart';

part 'create_vpc_result.g.dart';

abstract class CreateVpcResult
    with _i1.AWSEquatable<CreateVpcResult>
    implements Built<CreateVpcResult, CreateVpcResultBuilder> {
  factory CreateVpcResult({Vpc? vpc}) {
    return _$CreateVpcResult._(vpc: vpc);
  }

  factory CreateVpcResult.build(
      [void Function(CreateVpcResultBuilder) updates]) = _$CreateVpcResult;

  const CreateVpcResult._();

  /// Constructs a [CreateVpcResult] from a [payload] and [response].
  factory CreateVpcResult.fromResponse(
    CreateVpcResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateVpcResult>> serializers = [
    CreateVpcResultEc2QuerySerializer()
  ];

  /// Information about the VPC.
  Vpc? get vpc;
  @override
  List<Object?> get props => [vpc];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVpcResult')
      ..add(
        'vpc',
        vpc,
      );
    return helper.toString();
  }
}

class CreateVpcResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateVpcResult> {
  const CreateVpcResultEc2QuerySerializer() : super('CreateVpcResult');

  @override
  Iterable<Type> get types => const [
        CreateVpcResult,
        _$CreateVpcResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpcResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpcResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'vpc':
          result.vpc.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Vpc),
          ) as Vpc));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateVpcResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateVpcResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVpcResult(:vpc) = object;
    if (vpc != null) {
      result$
        ..add(const _i2.XmlElementName('Vpc'))
        ..add(serializers.serialize(
          vpc,
          specifiedType: const FullType(Vpc),
        ));
    }
    return result$;
  }
}
