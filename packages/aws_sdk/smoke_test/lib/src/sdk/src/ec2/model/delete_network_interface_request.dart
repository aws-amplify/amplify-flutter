// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_network_interface_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_network_interface_request.g.dart';

/// Contains the parameters for DeleteNetworkInterface.
abstract class DeleteNetworkInterfaceRequest
    with
        _i1.HttpInput<DeleteNetworkInterfaceRequest>,
        _i2.AWSEquatable<DeleteNetworkInterfaceRequest>
    implements
        Built<DeleteNetworkInterfaceRequest,
            DeleteNetworkInterfaceRequestBuilder> {
  /// Contains the parameters for DeleteNetworkInterface.
  factory DeleteNetworkInterfaceRequest({
    bool? dryRun,
    String? networkInterfaceId,
  }) {
    dryRun ??= false;
    return _$DeleteNetworkInterfaceRequest._(
      dryRun: dryRun,
      networkInterfaceId: networkInterfaceId,
    );
  }

  /// Contains the parameters for DeleteNetworkInterface.
  factory DeleteNetworkInterfaceRequest.build(
          [void Function(DeleteNetworkInterfaceRequestBuilder) updates]) =
      _$DeleteNetworkInterfaceRequest;

  const DeleteNetworkInterfaceRequest._();

  factory DeleteNetworkInterfaceRequest.fromRequest(
    DeleteNetworkInterfaceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteNetworkInterfaceRequest>>
      serializers = [DeleteNetworkInterfaceRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteNetworkInterfaceRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the network interface.
  String? get networkInterfaceId;
  @override
  DeleteNetworkInterfaceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        networkInterfaceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteNetworkInterfaceRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'networkInterfaceId',
        networkInterfaceId,
      );
    return helper.toString();
  }
}

class DeleteNetworkInterfaceRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteNetworkInterfaceRequest> {
  const DeleteNetworkInterfaceRequestEc2QuerySerializer()
      : super('DeleteNetworkInterfaceRequest');

  @override
  Iterable<Type> get types => const [
        DeleteNetworkInterfaceRequest,
        _$DeleteNetworkInterfaceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteNetworkInterfaceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNetworkInterfaceRequestBuilder();
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
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
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
    DeleteNetworkInterfaceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteNetworkInterfaceRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteNetworkInterfaceRequest(:dryRun, :networkInterfaceId) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (networkInterfaceId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
