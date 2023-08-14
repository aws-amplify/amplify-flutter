// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_ipam_resource_discovery_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_discovery.dart';

part 'create_ipam_resource_discovery_result.g.dart';

abstract class CreateIpamResourceDiscoveryResult
    with
        _i1.AWSEquatable<CreateIpamResourceDiscoveryResult>
    implements
        Built<CreateIpamResourceDiscoveryResult,
            CreateIpamResourceDiscoveryResultBuilder> {
  factory CreateIpamResourceDiscoveryResult(
      {IpamResourceDiscovery? ipamResourceDiscovery}) {
    return _$CreateIpamResourceDiscoveryResult._(
        ipamResourceDiscovery: ipamResourceDiscovery);
  }

  factory CreateIpamResourceDiscoveryResult.build(
          [void Function(CreateIpamResourceDiscoveryResultBuilder) updates]) =
      _$CreateIpamResourceDiscoveryResult;

  const CreateIpamResourceDiscoveryResult._();

  /// Constructs a [CreateIpamResourceDiscoveryResult] from a [payload] and [response].
  factory CreateIpamResourceDiscoveryResult.fromResponse(
    CreateIpamResourceDiscoveryResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateIpamResourceDiscoveryResult>>
      serializers = [CreateIpamResourceDiscoveryResultEc2QuerySerializer()];

  /// An IPAM resource discovery.
  IpamResourceDiscovery? get ipamResourceDiscovery;
  @override
  List<Object?> get props => [ipamResourceDiscovery];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateIpamResourceDiscoveryResult')
          ..add(
            'ipamResourceDiscovery',
            ipamResourceDiscovery,
          );
    return helper.toString();
  }
}

class CreateIpamResourceDiscoveryResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateIpamResourceDiscoveryResult> {
  const CreateIpamResourceDiscoveryResultEc2QuerySerializer()
      : super('CreateIpamResourceDiscoveryResult');

  @override
  Iterable<Type> get types => const [
        CreateIpamResourceDiscoveryResult,
        _$CreateIpamResourceDiscoveryResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateIpamResourceDiscoveryResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateIpamResourceDiscoveryResultBuilder();
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
    CreateIpamResourceDiscoveryResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateIpamResourceDiscoveryResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateIpamResourceDiscoveryResult(:ipamResourceDiscovery) = object;
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
