// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpc_peering_connection; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection_state_reason.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection_vpc_info.dart';

part 'vpc_peering_connection.g.dart';

/// Describes a VPC peering connection.
abstract class VpcPeeringConnection
    with _i1.AWSEquatable<VpcPeeringConnection>
    implements Built<VpcPeeringConnection, VpcPeeringConnectionBuilder> {
  /// Describes a VPC peering connection.
  factory VpcPeeringConnection({
    VpcPeeringConnectionVpcInfo? accepterVpcInfo,
    DateTime? expirationTime,
    VpcPeeringConnectionVpcInfo? requesterVpcInfo,
    VpcPeeringConnectionStateReason? status,
    List<Tag>? tags,
    String? vpcPeeringConnectionId,
  }) {
    return _$VpcPeeringConnection._(
      accepterVpcInfo: accepterVpcInfo,
      expirationTime: expirationTime,
      requesterVpcInfo: requesterVpcInfo,
      status: status,
      tags: tags == null ? null : _i2.BuiltList(tags),
      vpcPeeringConnectionId: vpcPeeringConnectionId,
    );
  }

  /// Describes a VPC peering connection.
  factory VpcPeeringConnection.build(
          [void Function(VpcPeeringConnectionBuilder) updates]) =
      _$VpcPeeringConnection;

  const VpcPeeringConnection._();

  static const List<_i3.SmithySerializer<VpcPeeringConnection>> serializers = [
    VpcPeeringConnectionEc2QuerySerializer()
  ];

  /// Information about the accepter VPC. CIDR block information is only returned when describing an active VPC peering connection.
  VpcPeeringConnectionVpcInfo? get accepterVpcInfo;

  /// The time that an unaccepted VPC peering connection will expire.
  DateTime? get expirationTime;

  /// Information about the requester VPC. CIDR block information is only returned when describing an active VPC peering connection.
  VpcPeeringConnectionVpcInfo? get requesterVpcInfo;

  /// The status of the VPC peering connection.
  VpcPeeringConnectionStateReason? get status;

  /// Any tags assigned to the resource.
  _i2.BuiltList<Tag>? get tags;

  /// The ID of the VPC peering connection.
  String? get vpcPeeringConnectionId;
  @override
  List<Object?> get props => [
        accepterVpcInfo,
        expirationTime,
        requesterVpcInfo,
        status,
        tags,
        vpcPeeringConnectionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpcPeeringConnection')
      ..add(
        'accepterVpcInfo',
        accepterVpcInfo,
      )
      ..add(
        'expirationTime',
        expirationTime,
      )
      ..add(
        'requesterVpcInfo',
        requesterVpcInfo,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'vpcPeeringConnectionId',
        vpcPeeringConnectionId,
      );
    return helper.toString();
  }
}

class VpcPeeringConnectionEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VpcPeeringConnection> {
  const VpcPeeringConnectionEc2QuerySerializer()
      : super('VpcPeeringConnection');

  @override
  Iterable<Type> get types => const [
        VpcPeeringConnection,
        _$VpcPeeringConnection,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpcPeeringConnection deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcPeeringConnectionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'accepterVpcInfo':
          result.accepterVpcInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VpcPeeringConnectionVpcInfo),
          ) as VpcPeeringConnectionVpcInfo));
        case 'expirationTime':
          result.expirationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'requesterVpcInfo':
          result.requesterVpcInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VpcPeeringConnectionVpcInfo),
          ) as VpcPeeringConnectionVpcInfo));
        case 'status':
          result.status.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VpcPeeringConnectionStateReason),
          ) as VpcPeeringConnectionStateReason));
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
        case 'vpcPeeringConnectionId':
          result.vpcPeeringConnectionId = (serializers.deserialize(
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
    VpcPeeringConnection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'VpcPeeringConnectionResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VpcPeeringConnection(
      :accepterVpcInfo,
      :expirationTime,
      :requesterVpcInfo,
      :status,
      :tags,
      :vpcPeeringConnectionId
    ) = object;
    if (accepterVpcInfo != null) {
      result$
        ..add(const _i3.XmlElementName('AccepterVpcInfo'))
        ..add(serializers.serialize(
          accepterVpcInfo,
          specifiedType: const FullType(VpcPeeringConnectionVpcInfo),
        ));
    }
    if (expirationTime != null) {
      result$
        ..add(const _i3.XmlElementName('ExpirationTime'))
        ..add(serializers.serialize(
          expirationTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (requesterVpcInfo != null) {
      result$
        ..add(const _i3.XmlElementName('RequesterVpcInfo'))
        ..add(serializers.serialize(
          requesterVpcInfo,
          specifiedType: const FullType(VpcPeeringConnectionVpcInfo),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(VpcPeeringConnectionStateReason),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    if (vpcPeeringConnectionId != null) {
      result$
        ..add(const _i3.XmlElementName('VpcPeeringConnectionId'))
        ..add(serializers.serialize(
          vpcPeeringConnectionId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
