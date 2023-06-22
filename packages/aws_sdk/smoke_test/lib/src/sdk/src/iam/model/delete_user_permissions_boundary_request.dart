// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.delete_user_permissions_boundary_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_user_permissions_boundary_request.g.dart';

abstract class DeleteUserPermissionsBoundaryRequest
    with
        _i1.HttpInput<DeleteUserPermissionsBoundaryRequest>,
        _i2.AWSEquatable<DeleteUserPermissionsBoundaryRequest>
    implements
        Built<DeleteUserPermissionsBoundaryRequest,
            DeleteUserPermissionsBoundaryRequestBuilder> {
  factory DeleteUserPermissionsBoundaryRequest({required String userName}) {
    return _$DeleteUserPermissionsBoundaryRequest._(userName: userName);
  }

  factory DeleteUserPermissionsBoundaryRequest.build(
      [void Function(DeleteUserPermissionsBoundaryRequestBuilder)
          updates]) = _$DeleteUserPermissionsBoundaryRequest;

  const DeleteUserPermissionsBoundaryRequest._();

  factory DeleteUserPermissionsBoundaryRequest.fromRequest(
    DeleteUserPermissionsBoundaryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteUserPermissionsBoundaryRequest>>
      serializers = [DeleteUserPermissionsBoundaryRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteUserPermissionsBoundaryRequestBuilder b) {}

  /// The name (friendly name, not ARN) of the IAM user from which you want to remove the permissions boundary.
  String get userName;
  @override
  DeleteUserPermissionsBoundaryRequest getPayload() => this;
  @override
  List<Object?> get props => [userName];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteUserPermissionsBoundaryRequest')
          ..add(
            'userName',
            userName,
          );
    return helper.toString();
  }
}

class DeleteUserPermissionsBoundaryRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteUserPermissionsBoundaryRequest> {
  const DeleteUserPermissionsBoundaryRequestAwsQuerySerializer()
      : super('DeleteUserPermissionsBoundaryRequest');

  @override
  Iterable<Type> get types => const [
        DeleteUserPermissionsBoundaryRequest,
        _$DeleteUserPermissionsBoundaryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteUserPermissionsBoundaryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteUserPermissionsBoundaryRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UserName':
          result.userName = (serializers.deserialize(
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
    DeleteUserPermissionsBoundaryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteUserPermissionsBoundaryRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeleteUserPermissionsBoundaryRequest(:userName) = object;
    result$
      ..add(const _i1.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
