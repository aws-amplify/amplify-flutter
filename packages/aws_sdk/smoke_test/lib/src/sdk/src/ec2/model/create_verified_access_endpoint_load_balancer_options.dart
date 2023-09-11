// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_verified_access_endpoint_load_balancer_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_protocol.dart';

part 'create_verified_access_endpoint_load_balancer_options.g.dart';

/// Describes the load balancer options when creating an Amazon Web Services Verified Access endpoint using the `load-balancer` type.
abstract class CreateVerifiedAccessEndpointLoadBalancerOptions
    with
        _i1.AWSEquatable<CreateVerifiedAccessEndpointLoadBalancerOptions>
    implements
        Built<CreateVerifiedAccessEndpointLoadBalancerOptions,
            CreateVerifiedAccessEndpointLoadBalancerOptionsBuilder> {
  /// Describes the load balancer options when creating an Amazon Web Services Verified Access endpoint using the `load-balancer` type.
  factory CreateVerifiedAccessEndpointLoadBalancerOptions({
    VerifiedAccessEndpointProtocol? protocol,
    int? port,
    String? loadBalancerArn,
    List<String>? subnetIds,
  }) {
    port ??= 0;
    return _$CreateVerifiedAccessEndpointLoadBalancerOptions._(
      protocol: protocol,
      port: port,
      loadBalancerArn: loadBalancerArn,
      subnetIds: subnetIds == null ? null : _i2.BuiltList(subnetIds),
    );
  }

  /// Describes the load balancer options when creating an Amazon Web Services Verified Access endpoint using the `load-balancer` type.
  factory CreateVerifiedAccessEndpointLoadBalancerOptions.build(
      [void Function(CreateVerifiedAccessEndpointLoadBalancerOptionsBuilder)
          updates]) = _$CreateVerifiedAccessEndpointLoadBalancerOptions;

  const CreateVerifiedAccessEndpointLoadBalancerOptions._();

  static const List<
          _i3.SmithySerializer<CreateVerifiedAccessEndpointLoadBalancerOptions>>
      serializers = [
    CreateVerifiedAccessEndpointLoadBalancerOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVerifiedAccessEndpointLoadBalancerOptionsBuilder b) {
    b.port = 0;
  }

  /// The IP protocol.
  VerifiedAccessEndpointProtocol? get protocol;

  /// The IP port number.
  int get port;

  /// The ARN of the load balancer.
  String? get loadBalancerArn;

  /// The IDs of the subnets.
  _i2.BuiltList<String>? get subnetIds;
  @override
  List<Object?> get props => [
        protocol,
        port,
        loadBalancerArn,
        subnetIds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateVerifiedAccessEndpointLoadBalancerOptions')
      ..add(
        'protocol',
        protocol,
      )
      ..add(
        'port',
        port,
      )
      ..add(
        'loadBalancerArn',
        loadBalancerArn,
      )
      ..add(
        'subnetIds',
        subnetIds,
      );
    return helper.toString();
  }
}

class CreateVerifiedAccessEndpointLoadBalancerOptionsEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        CreateVerifiedAccessEndpointLoadBalancerOptions> {
  const CreateVerifiedAccessEndpointLoadBalancerOptionsEc2QuerySerializer()
      : super('CreateVerifiedAccessEndpointLoadBalancerOptions');

  @override
  Iterable<Type> get types => const [
        CreateVerifiedAccessEndpointLoadBalancerOptions,
        _$CreateVerifiedAccessEndpointLoadBalancerOptions,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVerifiedAccessEndpointLoadBalancerOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVerifiedAccessEndpointLoadBalancerOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'LoadBalancerArn':
          result.loadBalancerArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateVerifiedAccessEndpointLoadBalancerOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CreateVerifiedAccessEndpointLoadBalancerOptionsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVerifiedAccessEndpointLoadBalancerOptions(
      :protocol,
      :port,
      :loadBalancerArn,
      :subnetIds
    ) = object;
    if (protocol != null) {
      result$
        ..add(const _i3.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          protocol,
          specifiedType: const FullType(VerifiedAccessEndpointProtocol),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Port'))
      ..add(serializers.serialize(
        port,
        specifiedType: const FullType(int),
      ));
    if (loadBalancerArn != null) {
      result$
        ..add(const _i3.XmlElementName('LoadBalancerArn'))
        ..add(serializers.serialize(
          loadBalancerArn,
          specifiedType: const FullType(String),
        ));
    }
    if (subnetIds != null) {
      result$
        ..add(const _i3.XmlElementName('SubnetId'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          subnetIds,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
