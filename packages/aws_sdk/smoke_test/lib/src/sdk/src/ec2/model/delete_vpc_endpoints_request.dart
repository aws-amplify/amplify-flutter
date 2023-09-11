// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_vpc_endpoints_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_vpc_endpoints_request.g.dart';

abstract class DeleteVpcEndpointsRequest
    with
        _i1.HttpInput<DeleteVpcEndpointsRequest>,
        _i2.AWSEquatable<DeleteVpcEndpointsRequest>
    implements
        Built<DeleteVpcEndpointsRequest, DeleteVpcEndpointsRequestBuilder> {
  factory DeleteVpcEndpointsRequest({
    bool? dryRun,
    List<String>? vpcEndpointIds,
  }) {
    dryRun ??= false;
    return _$DeleteVpcEndpointsRequest._(
      dryRun: dryRun,
      vpcEndpointIds:
          vpcEndpointIds == null ? null : _i3.BuiltList(vpcEndpointIds),
    );
  }

  factory DeleteVpcEndpointsRequest.build(
          [void Function(DeleteVpcEndpointsRequestBuilder) updates]) =
      _$DeleteVpcEndpointsRequest;

  const DeleteVpcEndpointsRequest._();

  factory DeleteVpcEndpointsRequest.fromRequest(
    DeleteVpcEndpointsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteVpcEndpointsRequest>>
      serializers = [DeleteVpcEndpointsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteVpcEndpointsRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the VPC endpoints.
  _i3.BuiltList<String>? get vpcEndpointIds;
  @override
  DeleteVpcEndpointsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        vpcEndpointIds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteVpcEndpointsRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'vpcEndpointIds',
        vpcEndpointIds,
      );
    return helper.toString();
  }
}

class DeleteVpcEndpointsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteVpcEndpointsRequest> {
  const DeleteVpcEndpointsRequestEc2QuerySerializer()
      : super('DeleteVpcEndpointsRequest');

  @override
  Iterable<Type> get types => const [
        DeleteVpcEndpointsRequest,
        _$DeleteVpcEndpointsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteVpcEndpointsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteVpcEndpointsRequestBuilder();
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
    DeleteVpcEndpointsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteVpcEndpointsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteVpcEndpointsRequest(:dryRun, :vpcEndpointIds) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
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
