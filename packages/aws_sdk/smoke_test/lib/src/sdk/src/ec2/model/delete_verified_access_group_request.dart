// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_verified_access_group_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_verified_access_group_request.g.dart';

abstract class DeleteVerifiedAccessGroupRequest
    with
        _i1.HttpInput<DeleteVerifiedAccessGroupRequest>,
        _i2.AWSEquatable<DeleteVerifiedAccessGroupRequest>
    implements
        Built<DeleteVerifiedAccessGroupRequest,
            DeleteVerifiedAccessGroupRequestBuilder> {
  factory DeleteVerifiedAccessGroupRequest({
    String? verifiedAccessGroupId,
    String? clientToken,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteVerifiedAccessGroupRequest._(
      verifiedAccessGroupId: verifiedAccessGroupId,
      clientToken: clientToken,
      dryRun: dryRun,
    );
  }

  factory DeleteVerifiedAccessGroupRequest.build(
          [void Function(DeleteVerifiedAccessGroupRequestBuilder) updates]) =
      _$DeleteVerifiedAccessGroupRequest;

  const DeleteVerifiedAccessGroupRequest._();

  factory DeleteVerifiedAccessGroupRequest.fromRequest(
    DeleteVerifiedAccessGroupRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteVerifiedAccessGroupRequest>>
      serializers = [DeleteVerifiedAccessGroupRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteVerifiedAccessGroupRequestBuilder b) {
    b
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..dryRun = false;
  }

  /// The ID of the Verified Access group.
  String? get verifiedAccessGroupId;

  /// A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteVerifiedAccessGroupRequest getPayload() => this;
  @override
  List<Object?> get props => [
        verifiedAccessGroupId,
        clientToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteVerifiedAccessGroupRequest')
          ..add(
            'verifiedAccessGroupId',
            verifiedAccessGroupId,
          )
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DeleteVerifiedAccessGroupRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteVerifiedAccessGroupRequest> {
  const DeleteVerifiedAccessGroupRequestEc2QuerySerializer()
      : super('DeleteVerifiedAccessGroupRequest');

  @override
  Iterable<Type> get types => const [
        DeleteVerifiedAccessGroupRequest,
        _$DeleteVerifiedAccessGroupRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteVerifiedAccessGroupRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteVerifiedAccessGroupRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VerifiedAccessGroupId':
          result.verifiedAccessGroupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    DeleteVerifiedAccessGroupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteVerifiedAccessGroupRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteVerifiedAccessGroupRequest(
      :verifiedAccessGroupId,
      :clientToken,
      :dryRun
    ) = object;
    if (verifiedAccessGroupId != null) {
      result$
        ..add(const _i1.XmlElementName('VerifiedAccessGroupId'))
        ..add(serializers.serialize(
          verifiedAccessGroupId,
          specifiedType: const FullType(String),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
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
