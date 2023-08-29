// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_ipam_pool_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool.dart';

part 'modify_ipam_pool_result.g.dart';

abstract class ModifyIpamPoolResult
    with _i1.AWSEquatable<ModifyIpamPoolResult>
    implements Built<ModifyIpamPoolResult, ModifyIpamPoolResultBuilder> {
  factory ModifyIpamPoolResult({IpamPool? ipamPool}) {
    return _$ModifyIpamPoolResult._(ipamPool: ipamPool);
  }

  factory ModifyIpamPoolResult.build(
          [void Function(ModifyIpamPoolResultBuilder) updates]) =
      _$ModifyIpamPoolResult;

  const ModifyIpamPoolResult._();

  /// Constructs a [ModifyIpamPoolResult] from a [payload] and [response].
  factory ModifyIpamPoolResult.fromResponse(
    ModifyIpamPoolResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyIpamPoolResult>> serializers = [
    ModifyIpamPoolResultEc2QuerySerializer()
  ];

  /// The results of the modification.
  IpamPool? get ipamPool;
  @override
  List<Object?> get props => [ipamPool];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyIpamPoolResult')
      ..add(
        'ipamPool',
        ipamPool,
      );
    return helper.toString();
  }
}

class ModifyIpamPoolResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyIpamPoolResult> {
  const ModifyIpamPoolResultEc2QuerySerializer()
      : super('ModifyIpamPoolResult');

  @override
  Iterable<Type> get types => const [
        ModifyIpamPoolResult,
        _$ModifyIpamPoolResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyIpamPoolResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyIpamPoolResultBuilder();
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
    ModifyIpamPoolResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyIpamPoolResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyIpamPoolResult(:ipamPool) = object;
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
