// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.delete_role_permissions_boundary_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_role_permissions_boundary_request.g.dart';

abstract class DeleteRolePermissionsBoundaryRequest
    with
        _i1.HttpInput<DeleteRolePermissionsBoundaryRequest>,
        _i2.AWSEquatable<DeleteRolePermissionsBoundaryRequest>
    implements
        Built<DeleteRolePermissionsBoundaryRequest,
            DeleteRolePermissionsBoundaryRequestBuilder> {
  factory DeleteRolePermissionsBoundaryRequest({required String roleName}) {
    return _$DeleteRolePermissionsBoundaryRequest._(roleName: roleName);
  }

  factory DeleteRolePermissionsBoundaryRequest.build(
      [void Function(DeleteRolePermissionsBoundaryRequestBuilder)
          updates]) = _$DeleteRolePermissionsBoundaryRequest;

  const DeleteRolePermissionsBoundaryRequest._();

  factory DeleteRolePermissionsBoundaryRequest.fromRequest(
    DeleteRolePermissionsBoundaryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteRolePermissionsBoundaryRequest>>
      serializers = [DeleteRolePermissionsBoundaryRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteRolePermissionsBoundaryRequestBuilder b) {}

  /// The name (friendly name, not ARN) of the IAM role from which you want to remove the permissions boundary.
  String get roleName;
  @override
  DeleteRolePermissionsBoundaryRequest getPayload() => this;
  @override
  List<Object?> get props => [roleName];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteRolePermissionsBoundaryRequest')
          ..add(
            'roleName',
            roleName,
          );
    return helper.toString();
  }
}

class DeleteRolePermissionsBoundaryRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteRolePermissionsBoundaryRequest> {
  const DeleteRolePermissionsBoundaryRequestAwsQuerySerializer()
      : super('DeleteRolePermissionsBoundaryRequest');

  @override
  Iterable<Type> get types => const [
        DeleteRolePermissionsBoundaryRequest,
        _$DeleteRolePermissionsBoundaryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteRolePermissionsBoundaryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteRolePermissionsBoundaryRequestBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteRolePermissionsBoundaryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteRolePermissionsBoundaryRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeleteRolePermissionsBoundaryRequest(:roleName) = object;
    result$
      ..add(const _i1.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        roleName,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
