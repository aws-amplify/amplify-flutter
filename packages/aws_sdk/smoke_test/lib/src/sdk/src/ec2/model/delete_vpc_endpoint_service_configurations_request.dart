// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_vpc_endpoint_service_configurations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_vpc_endpoint_service_configurations_request.g.dart';

abstract class DeleteVpcEndpointServiceConfigurationsRequest
    with
        _i1.HttpInput<DeleteVpcEndpointServiceConfigurationsRequest>,
        _i2.AWSEquatable<DeleteVpcEndpointServiceConfigurationsRequest>
    implements
        Built<DeleteVpcEndpointServiceConfigurationsRequest,
            DeleteVpcEndpointServiceConfigurationsRequestBuilder> {
  factory DeleteVpcEndpointServiceConfigurationsRequest({
    bool? dryRun,
    List<String>? serviceIds,
  }) {
    dryRun ??= false;
    return _$DeleteVpcEndpointServiceConfigurationsRequest._(
      dryRun: dryRun,
      serviceIds: serviceIds == null ? null : _i3.BuiltList(serviceIds),
    );
  }

  factory DeleteVpcEndpointServiceConfigurationsRequest.build(
      [void Function(DeleteVpcEndpointServiceConfigurationsRequestBuilder)
          updates]) = _$DeleteVpcEndpointServiceConfigurationsRequest;

  const DeleteVpcEndpointServiceConfigurationsRequest._();

  factory DeleteVpcEndpointServiceConfigurationsRequest.fromRequest(
    DeleteVpcEndpointServiceConfigurationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DeleteVpcEndpointServiceConfigurationsRequest>>
      serializers = [
    DeleteVpcEndpointServiceConfigurationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteVpcEndpointServiceConfigurationsRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the services.
  _i3.BuiltList<String>? get serviceIds;
  @override
  DeleteVpcEndpointServiceConfigurationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        serviceIds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteVpcEndpointServiceConfigurationsRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'serviceIds',
        serviceIds,
      );
    return helper.toString();
  }
}

class DeleteVpcEndpointServiceConfigurationsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        DeleteVpcEndpointServiceConfigurationsRequest> {
  const DeleteVpcEndpointServiceConfigurationsRequestEc2QuerySerializer()
      : super('DeleteVpcEndpointServiceConfigurationsRequest');

  @override
  Iterable<Type> get types => const [
        DeleteVpcEndpointServiceConfigurationsRequest,
        _$DeleteVpcEndpointServiceConfigurationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteVpcEndpointServiceConfigurationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteVpcEndpointServiceConfigurationsRequestBuilder();
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
          result.serviceIds.replace((const _i1.XmlBuiltListSerializer(
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
    DeleteVpcEndpointServiceConfigurationsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteVpcEndpointServiceConfigurationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteVpcEndpointServiceConfigurationsRequest(:dryRun, :serviceIds) =
        object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (serviceIds != null) {
      result$
        ..add(const _i1.XmlElementName('ServiceId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          serviceIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
