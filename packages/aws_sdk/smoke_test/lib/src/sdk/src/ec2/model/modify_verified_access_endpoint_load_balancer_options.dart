// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_verified_access_endpoint_load_balancer_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_protocol.dart';

part 'modify_verified_access_endpoint_load_balancer_options.g.dart';

/// Describes a load balancer when creating an Amazon Web Services Verified Access endpoint using the `load-balancer` type.
abstract class ModifyVerifiedAccessEndpointLoadBalancerOptions
    with
        _i1.AWSEquatable<ModifyVerifiedAccessEndpointLoadBalancerOptions>
    implements
        Built<ModifyVerifiedAccessEndpointLoadBalancerOptions,
            ModifyVerifiedAccessEndpointLoadBalancerOptionsBuilder> {
  /// Describes a load balancer when creating an Amazon Web Services Verified Access endpoint using the `load-balancer` type.
  factory ModifyVerifiedAccessEndpointLoadBalancerOptions({
    List<String>? subnetIds,
    VerifiedAccessEndpointProtocol? protocol,
    int? port,
  }) {
    port ??= 0;
    return _$ModifyVerifiedAccessEndpointLoadBalancerOptions._(
      subnetIds: subnetIds == null ? null : _i2.BuiltList(subnetIds),
      protocol: protocol,
      port: port,
    );
  }

  /// Describes a load balancer when creating an Amazon Web Services Verified Access endpoint using the `load-balancer` type.
  factory ModifyVerifiedAccessEndpointLoadBalancerOptions.build(
      [void Function(ModifyVerifiedAccessEndpointLoadBalancerOptionsBuilder)
          updates]) = _$ModifyVerifiedAccessEndpointLoadBalancerOptions;

  const ModifyVerifiedAccessEndpointLoadBalancerOptions._();

  static const List<
          _i3.SmithySerializer<ModifyVerifiedAccessEndpointLoadBalancerOptions>>
      serializers = [
    ModifyVerifiedAccessEndpointLoadBalancerOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVerifiedAccessEndpointLoadBalancerOptionsBuilder b) {
    b.port = 0;
  }

  /// The IDs of the subnets.
  _i2.BuiltList<String>? get subnetIds;

  /// The IP protocol.
  VerifiedAccessEndpointProtocol? get protocol;

  /// The IP port number.
  int get port;
  @override
  List<Object?> get props => [
        subnetIds,
        protocol,
        port,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyVerifiedAccessEndpointLoadBalancerOptions')
      ..add(
        'subnetIds',
        subnetIds,
      )
      ..add(
        'protocol',
        protocol,
      )
      ..add(
        'port',
        port,
      );
    return helper.toString();
  }
}

class ModifyVerifiedAccessEndpointLoadBalancerOptionsEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        ModifyVerifiedAccessEndpointLoadBalancerOptions> {
  const ModifyVerifiedAccessEndpointLoadBalancerOptionsEc2QuerySerializer()
      : super('ModifyVerifiedAccessEndpointLoadBalancerOptions');

  @override
  Iterable<Type> get types => const [
        ModifyVerifiedAccessEndpointLoadBalancerOptions,
        _$ModifyVerifiedAccessEndpointLoadBalancerOptions,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVerifiedAccessEndpointLoadBalancerOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVerifiedAccessEndpointLoadBalancerOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SubnetId':
          result.subnetIds.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'Protocol':
          result.protocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(VerifiedAccessEndpointProtocol),
          ) as VerifiedAccessEndpointProtocol);
        case 'Port':
          result.port = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyVerifiedAccessEndpointLoadBalancerOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ModifyVerifiedAccessEndpointLoadBalancerOptionsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVerifiedAccessEndpointLoadBalancerOptions(
      :subnetIds,
      :protocol,
      :port
    ) = object;
    if (subnetIds != null) {
      result$
        ..add(const _i3.XmlElementName('SubnetId'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          subnetIds,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (protocol != null) {
      result$
        ..add(const _i3.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          protocol,
          specifiedType:
              const FullType.nullable(VerifiedAccessEndpointProtocol),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Port'))
      ..add(serializers.serialize(
        port,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
