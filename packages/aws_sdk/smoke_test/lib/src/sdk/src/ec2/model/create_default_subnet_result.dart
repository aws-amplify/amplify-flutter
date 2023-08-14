// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_default_subnet_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet.dart';

part 'create_default_subnet_result.g.dart';

abstract class CreateDefaultSubnetResult
    with _i1.AWSEquatable<CreateDefaultSubnetResult>
    implements
        Built<CreateDefaultSubnetResult, CreateDefaultSubnetResultBuilder> {
  factory CreateDefaultSubnetResult({Subnet? subnet}) {
    return _$CreateDefaultSubnetResult._(subnet: subnet);
  }

  factory CreateDefaultSubnetResult.build(
          [void Function(CreateDefaultSubnetResultBuilder) updates]) =
      _$CreateDefaultSubnetResult;

  const CreateDefaultSubnetResult._();

  /// Constructs a [CreateDefaultSubnetResult] from a [payload] and [response].
  factory CreateDefaultSubnetResult.fromResponse(
    CreateDefaultSubnetResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateDefaultSubnetResult>>
      serializers = [CreateDefaultSubnetResultEc2QuerySerializer()];

  /// Information about the subnet.
  Subnet? get subnet;
  @override
  List<Object?> get props => [subnet];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateDefaultSubnetResult')
      ..add(
        'subnet',
        subnet,
      );
    return helper.toString();
  }
}

class CreateDefaultSubnetResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateDefaultSubnetResult> {
  const CreateDefaultSubnetResultEc2QuerySerializer()
      : super('CreateDefaultSubnetResult');

  @override
  Iterable<Type> get types => const [
        CreateDefaultSubnetResult,
        _$CreateDefaultSubnetResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateDefaultSubnetResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDefaultSubnetResultBuilder();
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
    CreateDefaultSubnetResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateDefaultSubnetResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateDefaultSubnetResult(:subnet) = object;
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
