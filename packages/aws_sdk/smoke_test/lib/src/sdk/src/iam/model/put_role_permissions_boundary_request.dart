// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.put_role_permissions_boundary_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'put_role_permissions_boundary_request.g.dart';

abstract class PutRolePermissionsBoundaryRequest
    with
        _i1.HttpInput<PutRolePermissionsBoundaryRequest>,
        _i2.AWSEquatable<PutRolePermissionsBoundaryRequest>
    implements
        Built<PutRolePermissionsBoundaryRequest,
            PutRolePermissionsBoundaryRequestBuilder> {
  factory PutRolePermissionsBoundaryRequest({
    required String roleName,
    required String permissionsBoundary,
  }) {
    return _$PutRolePermissionsBoundaryRequest._(
      roleName: roleName,
      permissionsBoundary: permissionsBoundary,
    );
  }

  factory PutRolePermissionsBoundaryRequest.build(
          [void Function(PutRolePermissionsBoundaryRequestBuilder) updates]) =
      _$PutRolePermissionsBoundaryRequest;

  const PutRolePermissionsBoundaryRequest._();

  factory PutRolePermissionsBoundaryRequest.fromRequest(
    PutRolePermissionsBoundaryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<PutRolePermissionsBoundaryRequest>>
      serializers = [PutRolePermissionsBoundaryRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutRolePermissionsBoundaryRequestBuilder b) {}

  /// The name (friendly name, not ARN) of the IAM role for which you want to set the permissions boundary.
  String get roleName;

  /// The ARN of the managed policy that is used to set the permissions boundary for the role.
  ///
  /// A permissions boundary policy defines the maximum permissions that identity-based policies can grant to an entity, but does not grant permissions. Permissions boundaries do not define the maximum permissions that a resource-based policy can grant to an entity. To learn more, see [Permissions boundaries for IAM entities](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) in the _IAM User Guide_.
  ///
  /// For more information about policy types, see [Policy types](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policy-types) in the _IAM User Guide_.
  String get permissionsBoundary;
  @override
  PutRolePermissionsBoundaryRequest getPayload() => this;
  @override
  List<Object?> get props => [
        roleName,
        permissionsBoundary,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutRolePermissionsBoundaryRequest')
          ..add(
            'roleName',
            roleName,
          )
          ..add(
            'permissionsBoundary',
            permissionsBoundary,
          );
    return helper.toString();
  }
}

class PutRolePermissionsBoundaryRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<PutRolePermissionsBoundaryRequest> {
  const PutRolePermissionsBoundaryRequestAwsQuerySerializer()
      : super('PutRolePermissionsBoundaryRequest');

  @override
  Iterable<Type> get types => const [
        PutRolePermissionsBoundaryRequest,
        _$PutRolePermissionsBoundaryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  PutRolePermissionsBoundaryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutRolePermissionsBoundaryRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RoleName':
          result.roleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PermissionsBoundary':
          result.permissionsBoundary = (serializers.deserialize(
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
    PutRolePermissionsBoundaryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'PutRolePermissionsBoundaryRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final PutRolePermissionsBoundaryRequest(:roleName, :permissionsBoundary) =
        object;
    result$
      ..add(const _i1.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        roleName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('PermissionsBoundary'))
      ..add(serializers.serialize(
        permissionsBoundary,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
