// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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

  static const List<_i1.SmithySerializer> serializers = [
    DeleteServiceLinkedRoleRequestAwsQuerySerializer()
  ];

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
    final helper =
        newBuiltValueToStringHelper('DeleteServiceLinkedRoleRequest');
    helper.add(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'RoleName':
          result.roleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as DeleteServiceLinkedRoleRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteServiceLinkedRoleRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        payload.roleName,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
