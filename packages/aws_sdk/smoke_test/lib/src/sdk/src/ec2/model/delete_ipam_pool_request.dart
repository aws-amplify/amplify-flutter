// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_ipam_pool_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_ipam_pool_request.g.dart';

abstract class DeleteIpamPoolRequest
    with
        _i1.HttpInput<DeleteIpamPoolRequest>,
        _i2.AWSEquatable<DeleteIpamPoolRequest>
    implements Built<DeleteIpamPoolRequest, DeleteIpamPoolRequestBuilder> {
  factory DeleteIpamPoolRequest({
    bool? dryRun,
    String? ipamPoolId,
  }) {
    dryRun ??= false;
    return _$DeleteIpamPoolRequest._(
      dryRun: dryRun,
      ipamPoolId: ipamPoolId,
    );
  }

  factory DeleteIpamPoolRequest.build(
          [void Function(DeleteIpamPoolRequestBuilder) updates]) =
      _$DeleteIpamPoolRequest;

  const DeleteIpamPoolRequest._();

  factory DeleteIpamPoolRequest.fromRequest(
    DeleteIpamPoolRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteIpamPoolRequest>> serializers = [
    DeleteIpamPoolRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteIpamPoolRequestBuilder b) {
    b.dryRun = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the pool to delete.
  String? get ipamPoolId;
  @override
  DeleteIpamPoolRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamPoolId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteIpamPoolRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'ipamPoolId',
        ipamPoolId,
      );
    return helper.toString();
  }
}

class DeleteIpamPoolRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteIpamPoolRequest> {
  const DeleteIpamPoolRequestEc2QuerySerializer()
      : super('DeleteIpamPoolRequest');

  @override
  Iterable<Type> get types => const [
        DeleteIpamPoolRequest,
        _$DeleteIpamPoolRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteIpamPoolRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteIpamPoolRequestBuilder();
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
        case 'IpamPoolId':
          result.ipamPoolId = (serializers.deserialize(
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
    DeleteIpamPoolRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteIpamPoolRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteIpamPoolRequest(:dryRun, :ipamPoolId) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (ipamPoolId != null) {
      result$
        ..add(const _i1.XmlElementName('IpamPoolId'))
        ..add(serializers.serialize(
          ipamPoolId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
