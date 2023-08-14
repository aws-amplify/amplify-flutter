// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_ipam_resource_cidr_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_cidr.dart';

part 'modify_ipam_resource_cidr_result.g.dart';

abstract class ModifyIpamResourceCidrResult
    with
        _i1.AWSEquatable<ModifyIpamResourceCidrResult>
    implements
        Built<ModifyIpamResourceCidrResult,
            ModifyIpamResourceCidrResultBuilder> {
  factory ModifyIpamResourceCidrResult({IpamResourceCidr? ipamResourceCidr}) {
    return _$ModifyIpamResourceCidrResult._(ipamResourceCidr: ipamResourceCidr);
  }

  factory ModifyIpamResourceCidrResult.build(
          [void Function(ModifyIpamResourceCidrResultBuilder) updates]) =
      _$ModifyIpamResourceCidrResult;

  const ModifyIpamResourceCidrResult._();

  /// Constructs a [ModifyIpamResourceCidrResult] from a [payload] and [response].
  factory ModifyIpamResourceCidrResult.fromResponse(
    ModifyIpamResourceCidrResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyIpamResourceCidrResult>>
      serializers = [ModifyIpamResourceCidrResultEc2QuerySerializer()];

  /// The CIDR of the resource.
  IpamResourceCidr? get ipamResourceCidr;
  @override
  List<Object?> get props => [ipamResourceCidr];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyIpamResourceCidrResult')
      ..add(
        'ipamResourceCidr',
        ipamResourceCidr,
      );
    return helper.toString();
  }
}

class ModifyIpamResourceCidrResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyIpamResourceCidrResult> {
  const ModifyIpamResourceCidrResultEc2QuerySerializer()
      : super('ModifyIpamResourceCidrResult');

  @override
  Iterable<Type> get types => const [
        ModifyIpamResourceCidrResult,
        _$ModifyIpamResourceCidrResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyIpamResourceCidrResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyIpamResourceCidrResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipamResourceCidr':
          result.ipamResourceCidr.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IpamResourceCidr),
          ) as IpamResourceCidr));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyIpamResourceCidrResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyIpamResourceCidrResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyIpamResourceCidrResult(:ipamResourceCidr) = object;
    if (ipamResourceCidr != null) {
      result$
        ..add(const _i2.XmlElementName('IpamResourceCidr'))
        ..add(serializers.serialize(
          ipamResourceCidr,
          specifiedType: const FullType(IpamResourceCidr),
        ));
    }
    return result$;
  }
}
