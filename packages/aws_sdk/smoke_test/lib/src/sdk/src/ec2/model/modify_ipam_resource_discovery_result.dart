// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_ipam_resource_discovery_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_discovery.dart';

part 'modify_ipam_resource_discovery_result.g.dart';

abstract class ModifyIpamResourceDiscoveryResult
    with
        _i1.AWSEquatable<ModifyIpamResourceDiscoveryResult>
    implements
        Built<ModifyIpamResourceDiscoveryResult,
            ModifyIpamResourceDiscoveryResultBuilder> {
  factory ModifyIpamResourceDiscoveryResult(
      {IpamResourceDiscovery? ipamResourceDiscovery}) {
    return _$ModifyIpamResourceDiscoveryResult._(
        ipamResourceDiscovery: ipamResourceDiscovery);
  }

  factory ModifyIpamResourceDiscoveryResult.build(
          [void Function(ModifyIpamResourceDiscoveryResultBuilder) updates]) =
      _$ModifyIpamResourceDiscoveryResult;

  const ModifyIpamResourceDiscoveryResult._();

  /// Constructs a [ModifyIpamResourceDiscoveryResult] from a [payload] and [response].
  factory ModifyIpamResourceDiscoveryResult.fromResponse(
    ModifyIpamResourceDiscoveryResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyIpamResourceDiscoveryResult>>
      serializers = [ModifyIpamResourceDiscoveryResultEc2QuerySerializer()];

  /// A resource discovery.
  IpamResourceDiscovery? get ipamResourceDiscovery;
  @override
  List<Object?> get props => [ipamResourceDiscovery];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyIpamResourceDiscoveryResult')
          ..add(
            'ipamResourceDiscovery',
            ipamResourceDiscovery,
          );
    return helper.toString();
  }
}

class ModifyIpamResourceDiscoveryResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyIpamResourceDiscoveryResult> {
  const ModifyIpamResourceDiscoveryResultEc2QuerySerializer()
      : super('ModifyIpamResourceDiscoveryResult');

  @override
  Iterable<Type> get types => const [
        ModifyIpamResourceDiscoveryResult,
        _$ModifyIpamResourceDiscoveryResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyIpamResourceDiscoveryResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyIpamResourceDiscoveryResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipamResourceDiscovery':
          result.ipamResourceDiscovery.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IpamResourceDiscovery),
          ) as IpamResourceDiscovery));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyIpamResourceDiscoveryResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyIpamResourceDiscoveryResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyIpamResourceDiscoveryResult(:ipamResourceDiscovery) = object;
    if (ipamResourceDiscovery != null) {
      result$
        ..add(const _i2.XmlElementName('IpamResourceDiscovery'))
        ..add(serializers.serialize(
          ipamResourceDiscovery,
          specifiedType: const FullType(IpamResourceDiscovery),
        ));
    }
    return result$;
  }
}
