// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.accept_vpc_endpoint_connections_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'accept_vpc_endpoint_connections_request.g.dart';

abstract class AcceptVpcEndpointConnectionsRequest
    with
        _i1.HttpInput<AcceptVpcEndpointConnectionsRequest>,
        _i2.AWSEquatable<AcceptVpcEndpointConnectionsRequest>
    implements
        Built<AcceptVpcEndpointConnectionsRequest,
            AcceptVpcEndpointConnectionsRequestBuilder> {
  factory AcceptVpcEndpointConnectionsRequest({
    bool? dryRun,
    String? serviceId,
    List<String>? vpcEndpointIds,
  }) {
    dryRun ??= false;
    return _$AcceptVpcEndpointConnectionsRequest._(
      dryRun: dryRun,
      serviceId: serviceId,
      vpcEndpointIds:
          vpcEndpointIds == null ? null : _i3.BuiltList(vpcEndpointIds),
    );
  }

  factory AcceptVpcEndpointConnectionsRequest.build(
          [void Function(AcceptVpcEndpointConnectionsRequestBuilder) updates]) =
      _$AcceptVpcEndpointConnectionsRequest;

  const AcceptVpcEndpointConnectionsRequest._();

  factory AcceptVpcEndpointConnectionsRequest.fromRequest(
    AcceptVpcEndpointConnectionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AcceptVpcEndpointConnectionsRequest>>
      serializers = [AcceptVpcEndpointConnectionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AcceptVpcEndpointConnectionsRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the VPC endpoint service.
  String? get serviceId;

  /// The IDs of the interface VPC endpoints.
  _i3.BuiltList<String>? get vpcEndpointIds;
  @override
  AcceptVpcEndpointConnectionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        serviceId,
        vpcEndpointIds,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AcceptVpcEndpointConnectionsRequest')
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

class AcceptVpcEndpointConnectionsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<AcceptVpcEndpointConnectionsRequest> {
  const AcceptVpcEndpointConnectionsRequestEc2QuerySerializer()
      : super('AcceptVpcEndpointConnectionsRequest');

  @override
  Iterable<Type> get types => const [
        AcceptVpcEndpointConnectionsRequest,
        _$AcceptVpcEndpointConnectionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AcceptVpcEndpointConnectionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AcceptVpcEndpointConnectionsRequestBuilder();
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
    AcceptVpcEndpointConnectionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AcceptVpcEndpointConnectionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AcceptVpcEndpointConnectionsRequest(
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
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
