// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_ipam_pool_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool.dart';

part 'delete_ipam_pool_result.g.dart';

abstract class DeleteIpamPoolResult
    with _i1.AWSEquatable<DeleteIpamPoolResult>
    implements Built<DeleteIpamPoolResult, DeleteIpamPoolResultBuilder> {
  factory DeleteIpamPoolResult({IpamPool? ipamPool}) {
    return _$DeleteIpamPoolResult._(ipamPool: ipamPool);
  }

  factory DeleteIpamPoolResult.build(
          [void Function(DeleteIpamPoolResultBuilder) updates]) =
      _$DeleteIpamPoolResult;

  const DeleteIpamPoolResult._();

  /// Constructs a [DeleteIpamPoolResult] from a [payload] and [response].
  factory DeleteIpamPoolResult.fromResponse(
    DeleteIpamPoolResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteIpamPoolResult>> serializers = [
    DeleteIpamPoolResultEc2QuerySerializer()
  ];

  /// Information about the results of the deletion.
  IpamPool? get ipamPool;
  @override
  List<Object?> get props => [ipamPool];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteIpamPoolResult')
      ..add(
        'ipamPool',
        ipamPool,
      );
    return helper.toString();
  }
}

class DeleteIpamPoolResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteIpamPoolResult> {
  const DeleteIpamPoolResultEc2QuerySerializer()
      : super('DeleteIpamPoolResult');

  @override
  Iterable<Type> get types => const [
        DeleteIpamPoolResult,
        _$DeleteIpamPoolResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteIpamPoolResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteIpamPoolResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipamPool':
          result.ipamPool.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IpamPool),
          ) as IpamPool));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteIpamPoolResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteIpamPoolResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteIpamPoolResult(:ipamPool) = object;
    if (ipamPool != null) {
      result$
        ..add(const _i2.XmlElementName('IpamPool'))
        ..add(serializers.serialize(
          ipamPool,
          specifiedType: const FullType(IpamPool),
        ));
    }
    return result$;
  }
}
