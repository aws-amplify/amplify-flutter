// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reject_vpc_endpoint_connections_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'reject_vpc_endpoint_connections_request.g.dart';

abstract class RejectVpcEndpointConnectionsRequest
    with
        _i1.HttpInput<RejectVpcEndpointConnectionsRequest>,
        _i2.AWSEquatable<RejectVpcEndpointConnectionsRequest>
    implements
        Built<RejectVpcEndpointConnectionsRequest,
            RejectVpcEndpointConnectionsRequestBuilder> {
  factory RejectVpcEndpointConnectionsRequest({
    bool? dryRun,
    String? serviceId,
    List<String>? vpcEndpointIds,
  }) {
    dryRun ??= false;
    return _$RejectVpcEndpointConnectionsRequest._(
      dryRun: dryRun,
      serviceId: serviceId,
      vpcEndpointIds:
          vpcEndpointIds == null ? null : _i3.BuiltList(vpcEndpointIds),
    );
  }

  factory RejectVpcEndpointConnectionsRequest.build(
          [void Function(RejectVpcEndpointConnectionsRequestBuilder) updates]) =
      _$RejectVpcEndpointConnectionsRequest;

  const RejectVpcEndpointConnectionsRequest._();

  factory RejectVpcEndpointConnectionsRequest.fromRequest(
    RejectVpcEndpointConnectionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<RejectVpcEndpointConnectionsRequest>>
      serializers = [RejectVpcEndpointConnectionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RejectVpcEndpointConnectionsRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the service.
  String? get serviceId;

  /// The IDs of the VPC endpoints.
  _i3.BuiltList<String>? get vpcEndpointIds;
  @override
  RejectVpcEndpointConnectionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        serviceId,
        vpcEndpointIds,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RejectVpcEndpointConnectionsRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'serviceId',
            serviceId,
          )
          ..add(
            'vpcEndpointIds',
            vpcEndpointIds,
          );
    return helper.toString();
  }
}

class RejectVpcEndpointConnectionsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<RejectVpcEndpointConnectionsRequest> {
  const RejectVpcEndpointConnectionsRequestEc2QuerySerializer()
      : super('RejectVpcEndpointConnectionsRequest');

  @override
  Iterable<Type> get types => const [
        RejectVpcEndpointConnectionsRequest,
        _$RejectVpcEndpointConnectionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RejectVpcEndpointConnectionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RejectVpcEndpointConnectionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ServiceId':
          result.serviceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VpcEndpointId':
          result.vpcEndpointIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RejectVpcEndpointConnectionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RejectVpcEndpointConnectionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RejectVpcEndpointConnectionsRequest(
      :dryRun,
      :serviceId,
      :vpcEndpointIds
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (serviceId != null) {
      result$
        ..add(const _i1.XmlElementName('ServiceId'))
        ..add(serializers.serialize(
          serviceId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcEndpointIds != null) {
      result$
        ..add(const _i1.XmlElementName('VpcEndpointId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          vpcEndpointIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
