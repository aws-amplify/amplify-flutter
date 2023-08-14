// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_network_interface_permission_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_network_interface_permission_request.g.dart';

/// Contains the parameters for DeleteNetworkInterfacePermission.
abstract class DeleteNetworkInterfacePermissionRequest
    with
        _i1.HttpInput<DeleteNetworkInterfacePermissionRequest>,
        _i2.AWSEquatable<DeleteNetworkInterfacePermissionRequest>
    implements
        Built<DeleteNetworkInterfacePermissionRequest,
            DeleteNetworkInterfacePermissionRequestBuilder> {
  /// Contains the parameters for DeleteNetworkInterfacePermission.
  factory DeleteNetworkInterfacePermissionRequest({
    String? networkInterfacePermissionId,
    bool? force,
    bool? dryRun,
  }) {
    force ??= false;
    dryRun ??= false;
    return _$DeleteNetworkInterfacePermissionRequest._(
      networkInterfacePermissionId: networkInterfacePermissionId,
      force: force,
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for DeleteNetworkInterfacePermission.
  factory DeleteNetworkInterfacePermissionRequest.build(
      [void Function(DeleteNetworkInterfacePermissionRequestBuilder)
          updates]) = _$DeleteNetworkInterfacePermissionRequest;

  const DeleteNetworkInterfacePermissionRequest._();

  factory DeleteNetworkInterfacePermissionRequest.fromRequest(
    DeleteNetworkInterfacePermissionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DeleteNetworkInterfacePermissionRequest>>
      serializers = [
    DeleteNetworkInterfacePermissionRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteNetworkInterfacePermissionRequestBuilder b) {
    b
      ..force = false
      ..dryRun = false;
  }

  /// The ID of the network interface permission.
  String? get networkInterfacePermissionId;

  /// Specify `true` to remove the permission even if the network interface is attached to an instance.
  bool get force;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteNetworkInterfacePermissionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        networkInterfacePermissionId,
        force,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteNetworkInterfacePermissionRequest')
          ..add(
            'networkInterfacePermissionId',
            networkInterfacePermissionId,
          )
          ..add(
            'force',
            force,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DeleteNetworkInterfacePermissionRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteNetworkInterfacePermissionRequest> {
  const DeleteNetworkInterfacePermissionRequestEc2QuerySerializer()
      : super('DeleteNetworkInterfacePermissionRequest');

  @override
  Iterable<Type> get types => const [
        DeleteNetworkInterfacePermissionRequest,
        _$DeleteNetworkInterfacePermissionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteNetworkInterfacePermissionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNetworkInterfacePermissionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'NetworkInterfacePermissionId':
          result.networkInterfacePermissionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Force':
          result.force = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteNetworkInterfacePermissionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteNetworkInterfacePermissionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteNetworkInterfacePermissionRequest(
      :networkInterfacePermissionId,
      :force,
      :dryRun
    ) = object;
    if (networkInterfacePermissionId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInterfacePermissionId'))
        ..add(serializers.serialize(
          networkInterfacePermissionId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Force'))
      ..add(serializers.serialize(
        force,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
