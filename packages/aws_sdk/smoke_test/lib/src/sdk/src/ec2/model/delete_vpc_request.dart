// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_vpc_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_vpc_request.g.dart';

abstract class DeleteVpcRequest
    with _i1.HttpInput<DeleteVpcRequest>, _i2.AWSEquatable<DeleteVpcRequest>
    implements Built<DeleteVpcRequest, DeleteVpcRequestBuilder> {
  factory DeleteVpcRequest({
    String? vpcId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteVpcRequest._(
      vpcId: vpcId,
      dryRun: dryRun,
    );
  }

  factory DeleteVpcRequest.build(
      [void Function(DeleteVpcRequestBuilder) updates]) = _$DeleteVpcRequest;

  const DeleteVpcRequest._();

  factory DeleteVpcRequest.fromRequest(
    DeleteVpcRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteVpcRequest>> serializers = [
    DeleteVpcRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteVpcRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the VPC.
  String? get vpcId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteVpcRequest getPayload() => this;
  @override
  List<Object?> get props => [
        vpcId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteVpcRequest')
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DeleteVpcRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteVpcRequest> {
  const DeleteVpcRequestEc2QuerySerializer() : super('DeleteVpcRequest');

  @override
  Iterable<Type> get types => const [
        DeleteVpcRequest,
        _$DeleteVpcRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteVpcRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteVpcRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
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
    DeleteVpcRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteVpcRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteVpcRequest(:vpcId, :dryRun) = object;
    if (vpcId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
