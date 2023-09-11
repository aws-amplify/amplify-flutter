// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.attach_classic_link_vpc_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'attach_classic_link_vpc_request.g.dart';

abstract class AttachClassicLinkVpcRequest
    with
        _i1.HttpInput<AttachClassicLinkVpcRequest>,
        _i2.AWSEquatable<AttachClassicLinkVpcRequest>
    implements
        Built<AttachClassicLinkVpcRequest, AttachClassicLinkVpcRequestBuilder> {
  factory AttachClassicLinkVpcRequest({
    bool? dryRun,
    List<String>? groups,
    String? instanceId,
    String? vpcId,
  }) {
    dryRun ??= false;
    return _$AttachClassicLinkVpcRequest._(
      dryRun: dryRun,
      groups: groups == null ? null : _i3.BuiltList(groups),
      instanceId: instanceId,
      vpcId: vpcId,
    );
  }

  factory AttachClassicLinkVpcRequest.build(
          [void Function(AttachClassicLinkVpcRequestBuilder) updates]) =
      _$AttachClassicLinkVpcRequest;

  const AttachClassicLinkVpcRequest._();

  factory AttachClassicLinkVpcRequest.fromRequest(
    AttachClassicLinkVpcRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AttachClassicLinkVpcRequest>>
      serializers = [AttachClassicLinkVpcRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttachClassicLinkVpcRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the security groups. You cannot specify security groups from a different VPC.
  _i3.BuiltList<String>? get groups;

  /// The ID of the EC2-Classic instance.
  String? get instanceId;

  /// The ID of the ClassicLink-enabled VPC.
  String? get vpcId;
  @override
  AttachClassicLinkVpcRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        groups,
        instanceId,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttachClassicLinkVpcRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'groups',
        groups,
      )
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'vpcId',
        vpcId,
      );
    return helper.toString();
  }
}

class AttachClassicLinkVpcRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AttachClassicLinkVpcRequest> {
  const AttachClassicLinkVpcRequestEc2QuerySerializer()
      : super('AttachClassicLinkVpcRequest');

  @override
  Iterable<Type> get types => const [
        AttachClassicLinkVpcRequest,
        _$AttachClassicLinkVpcRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AttachClassicLinkVpcRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttachClassicLinkVpcRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'SecurityGroupId':
          result.groups.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'groupId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
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
    AttachClassicLinkVpcRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AttachClassicLinkVpcRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AttachClassicLinkVpcRequest(:dryRun, :groups, :instanceId, :vpcId) =
        object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (groups != null) {
      result$
        ..add(const _i1.XmlElementName('SecurityGroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'groupId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          groups,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
