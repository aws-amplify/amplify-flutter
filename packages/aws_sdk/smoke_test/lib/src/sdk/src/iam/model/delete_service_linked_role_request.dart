// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.delete_service_linked_role_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_service_linked_role_request.g.dart';

abstract class DeleteServiceLinkedRoleRequest
    with
        _i1.HttpInput<DeleteServiceLinkedRoleRequest>,
        _i2.AWSEquatable<DeleteServiceLinkedRoleRequest>
    implements
        Built<DeleteServiceLinkedRoleRequest,
            DeleteServiceLinkedRoleRequestBuilder> {
  factory DeleteServiceLinkedRoleRequest({required String roleName}) {
    return _$DeleteServiceLinkedRoleRequest._(roleName: roleName);
  }

  factory DeleteServiceLinkedRoleRequest.build(
          [void Function(DeleteServiceLinkedRoleRequestBuilder) updates]) =
      _$DeleteServiceLinkedRoleRequest;

  const DeleteServiceLinkedRoleRequest._();

  factory DeleteServiceLinkedRoleRequest.fromRequest(
    DeleteServiceLinkedRoleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteServiceLinkedRoleRequest>>
      serializers = [DeleteServiceLinkedRoleRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteServiceLinkedRoleRequestBuilder b) {}

  /// The name of the service-linked role to be deleted.
  String get roleName;
  @override
  DeleteServiceLinkedRoleRequest getPayload() => this;
  @override
  List<Object?> get props => [roleName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteServiceLinkedRoleRequest')
      ..add(
        'roleName',
        roleName,
      );
    return helper.toString();
  }
}

class DeleteServiceLinkedRoleRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteServiceLinkedRoleRequest> {
  const DeleteServiceLinkedRoleRequestAwsQuerySerializer()
      : super('DeleteServiceLinkedRoleRequest');

  @override
  Iterable<Type> get types => const [
        DeleteServiceLinkedRoleRequest,
        _$DeleteServiceLinkedRoleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteServiceLinkedRoleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteServiceLinkedRoleRequestBuilder();
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
    DeleteServiceLinkedRoleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteServiceLinkedRoleRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeleteServiceLinkedRoleRequest(:roleName) = object;
    result$
      ..add(const _i1.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        roleName,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
