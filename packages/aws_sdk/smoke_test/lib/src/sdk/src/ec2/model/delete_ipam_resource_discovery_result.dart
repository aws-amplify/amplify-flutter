// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_ipam_resource_discovery_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_discovery.dart';

part 'delete_ipam_resource_discovery_result.g.dart';

abstract class DeleteIpamResourceDiscoveryResult
    with
        _i1.AWSEquatable<DeleteIpamResourceDiscoveryResult>
    implements
        Built<DeleteIpamResourceDiscoveryResult,
            DeleteIpamResourceDiscoveryResultBuilder> {
  factory DeleteIpamResourceDiscoveryResult(
      {IpamResourceDiscovery? ipamResourceDiscovery}) {
    return _$DeleteIpamResourceDiscoveryResult._(
        ipamResourceDiscovery: ipamResourceDiscovery);
  }

  factory DeleteIpamResourceDiscoveryResult.build(
          [void Function(DeleteIpamResourceDiscoveryResultBuilder) updates]) =
      _$DeleteIpamResourceDiscoveryResult;

  const DeleteIpamResourceDiscoveryResult._();

  /// Constructs a [DeleteIpamResourceDiscoveryResult] from a [payload] and [response].
  factory DeleteIpamResourceDiscoveryResult.fromResponse(
    DeleteIpamResourceDiscoveryResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteIpamResourceDiscoveryResult>>
      serializers = [DeleteIpamResourceDiscoveryResultEc2QuerySerializer()];

  /// The IPAM resource discovery.
  IpamResourceDiscovery? get ipamResourceDiscovery;
  @override
  List<Object?> get props => [ipamResourceDiscovery];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteIpamResourceDiscoveryResult')
          ..add(
            'ipamResourceDiscovery',
            ipamResourceDiscovery,
          );
    return helper.toString();
  }
}

class DeleteIpamResourceDiscoveryResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteIpamResourceDiscoveryResult> {
  const DeleteIpamResourceDiscoveryResultEc2QuerySerializer()
      : super('DeleteIpamResourceDiscoveryResult');

  @override
  Iterable<Type> get types => const [
        DeleteIpamResourceDiscoveryResult,
        _$DeleteIpamResourceDiscoveryResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteIpamResourceDiscoveryResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteIpamResourceDiscoveryResultBuilder();
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
    DeleteIpamResourceDiscoveryResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteIpamResourceDiscoveryResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteIpamResourceDiscoveryResult(:ipamResourceDiscovery) = object;
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
