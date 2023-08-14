// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_public_ipv4_pool_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'create_public_ipv4_pool_result.g.dart';

abstract class CreatePublicIpv4PoolResult
    with _i1.AWSEquatable<CreatePublicIpv4PoolResult>
    implements
        Built<CreatePublicIpv4PoolResult, CreatePublicIpv4PoolResultBuilder> {
  factory CreatePublicIpv4PoolResult({String? poolId}) {
    return _$CreatePublicIpv4PoolResult._(poolId: poolId);
  }

  factory CreatePublicIpv4PoolResult.build(
          [void Function(CreatePublicIpv4PoolResultBuilder) updates]) =
      _$CreatePublicIpv4PoolResult;

  const CreatePublicIpv4PoolResult._();

  /// Constructs a [CreatePublicIpv4PoolResult] from a [payload] and [response].
  factory CreatePublicIpv4PoolResult.fromResponse(
    CreatePublicIpv4PoolResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreatePublicIpv4PoolResult>>
      serializers = [CreatePublicIpv4PoolResultEc2QuerySerializer()];

  /// The ID of the public IPv4 pool.
  String? get poolId;
  @override
  List<Object?> get props => [poolId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreatePublicIpv4PoolResult')
      ..add(
        'poolId',
        poolId,
      );
    return helper.toString();
  }
}

class CreatePublicIpv4PoolResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreatePublicIpv4PoolResult> {
  const CreatePublicIpv4PoolResultEc2QuerySerializer()
      : super('CreatePublicIpv4PoolResult');

  @override
  Iterable<Type> get types => const [
        CreatePublicIpv4PoolResult,
        _$CreatePublicIpv4PoolResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreatePublicIpv4PoolResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePublicIpv4PoolResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'poolId':
          result.poolId = (serializers.deserialize(
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
    CreatePublicIpv4PoolResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreatePublicIpv4PoolResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreatePublicIpv4PoolResult(:poolId) = object;
    if (poolId != null) {
      result$
        ..add(const _i2.XmlElementName('PoolId'))
        ..add(serializers.serialize(
          poolId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
