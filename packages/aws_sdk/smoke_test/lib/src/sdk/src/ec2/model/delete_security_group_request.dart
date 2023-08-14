// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_security_group_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_security_group_request.g.dart';

abstract class DeleteSecurityGroupRequest
    with
        _i1.HttpInput<DeleteSecurityGroupRequest>,
        _i2.AWSEquatable<DeleteSecurityGroupRequest>
    implements
        Built<DeleteSecurityGroupRequest, DeleteSecurityGroupRequestBuilder> {
  factory DeleteSecurityGroupRequest({
    String? groupId,
    String? groupName,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteSecurityGroupRequest._(
      groupId: groupId,
      groupName: groupName,
      dryRun: dryRun,
    );
  }

  factory DeleteSecurityGroupRequest.build(
          [void Function(DeleteSecurityGroupRequestBuilder) updates]) =
      _$DeleteSecurityGroupRequest;

  const DeleteSecurityGroupRequest._();

  factory DeleteSecurityGroupRequest.fromRequest(
    DeleteSecurityGroupRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteSecurityGroupRequest>>
      serializers = [DeleteSecurityGroupRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteSecurityGroupRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the security group.
  String? get groupId;

  /// \[Default VPC\] The name of the security group. You can specify either the security group name or the security group ID. For security groups in a nondefault VPC, you must specify the security group ID.
  String? get groupName;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteSecurityGroupRequest getPayload() => this;
  @override
  List<Object?> get props => [
        groupId,
        groupName,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteSecurityGroupRequest')
      ..add(
        'groupId',
        groupId,
      )
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DeleteSecurityGroupRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteSecurityGroupRequest> {
  const DeleteSecurityGroupRequestEc2QuerySerializer()
      : super('DeleteSecurityGroupRequest');

  @override
  Iterable<Type> get types => const [
        DeleteSecurityGroupRequest,
        _$DeleteSecurityGroupRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteSecurityGroupRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteSecurityGroupRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'GroupId':
          result.groupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'GroupName':
          result.groupName = (serializers.deserialize(
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
    DeleteSecurityGroupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteSecurityGroupRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteSecurityGroupRequest(:groupId, :groupName, :dryRun) = object;
    if (groupId != null) {
      result$
        ..add(const _i1.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          groupId,
          specifiedType: const FullType(String),
        ));
    }
    if (groupName != null) {
      result$
        ..add(const _i1.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          groupName,
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
