// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_public_ipv4_pool_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_public_ipv4_pool_request.g.dart';

abstract class DeletePublicIpv4PoolRequest
    with
        _i1.HttpInput<DeletePublicIpv4PoolRequest>,
        _i2.AWSEquatable<DeletePublicIpv4PoolRequest>
    implements
        Built<DeletePublicIpv4PoolRequest, DeletePublicIpv4PoolRequestBuilder> {
  factory DeletePublicIpv4PoolRequest({
    bool? dryRun,
    String? poolId,
  }) {
    dryRun ??= false;
    return _$DeletePublicIpv4PoolRequest._(
      dryRun: dryRun,
      poolId: poolId,
    );
  }

  factory DeletePublicIpv4PoolRequest.build(
          [void Function(DeletePublicIpv4PoolRequestBuilder) updates]) =
      _$DeletePublicIpv4PoolRequest;

  const DeletePublicIpv4PoolRequest._();

  factory DeletePublicIpv4PoolRequest.fromRequest(
    DeletePublicIpv4PoolRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeletePublicIpv4PoolRequest>>
      serializers = [DeletePublicIpv4PoolRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeletePublicIpv4PoolRequestBuilder b) {
    b.dryRun = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the public IPv4 pool you want to delete.
  String? get poolId;
  @override
  DeletePublicIpv4PoolRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        poolId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeletePublicIpv4PoolRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'poolId',
        poolId,
      );
    return helper.toString();
  }
}

class DeletePublicIpv4PoolRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeletePublicIpv4PoolRequest> {
  const DeletePublicIpv4PoolRequestEc2QuerySerializer()
      : super('DeletePublicIpv4PoolRequest');

  @override
  Iterable<Type> get types => const [
        DeletePublicIpv4PoolRequest,
        _$DeletePublicIpv4PoolRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeletePublicIpv4PoolRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeletePublicIpv4PoolRequestBuilder();
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
        case 'PoolId':
          result.poolId = (serializers.deserialize(
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
    DeletePublicIpv4PoolRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeletePublicIpv4PoolRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeletePublicIpv4PoolRequest(:dryRun, :poolId) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (poolId != null) {
      result$
        ..add(const _i1.XmlElementName('PoolId'))
        ..add(serializers.serialize(
          poolId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
