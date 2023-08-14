// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_subnet_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet.dart';

part 'create_subnet_result.g.dart';

abstract class CreateSubnetResult
    with _i1.AWSEquatable<CreateSubnetResult>
    implements Built<CreateSubnetResult, CreateSubnetResultBuilder> {
  factory CreateSubnetResult({Subnet? subnet}) {
    return _$CreateSubnetResult._(subnet: subnet);
  }

  factory CreateSubnetResult.build(
          [void Function(CreateSubnetResultBuilder) updates]) =
      _$CreateSubnetResult;

  const CreateSubnetResult._();

  /// Constructs a [CreateSubnetResult] from a [payload] and [response].
  factory CreateSubnetResult.fromResponse(
    CreateSubnetResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateSubnetResult>> serializers = [
    CreateSubnetResultEc2QuerySerializer()
  ];

  /// Information about the subnet.
  Subnet? get subnet;
  @override
  List<Object?> get props => [subnet];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateSubnetResult')
      ..add(
        'subnet',
        subnet,
      );
    return helper.toString();
  }
}

class CreateSubnetResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateSubnetResult> {
  const CreateSubnetResultEc2QuerySerializer() : super('CreateSubnetResult');

  @override
  Iterable<Type> get types => const [
        CreateSubnetResult,
        _$CreateSubnetResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateSubnetResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSubnetResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'subnet':
          result.subnet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Subnet),
          ) as Subnet));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateSubnetResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateSubnetResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateSubnetResult(:subnet) = object;
    if (subnet != null) {
      result$
        ..add(const _i2.XmlElementName('Subnet'))
        ..add(serializers.serialize(
          subnet,
          specifiedType: const FullType(Subnet),
        ));
    }
    return result$;
  }
}
