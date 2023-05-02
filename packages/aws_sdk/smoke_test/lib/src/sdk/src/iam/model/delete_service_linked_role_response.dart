// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.delete_service_linked_role_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_service_linked_role_response.g.dart';

abstract class DeleteServiceLinkedRoleResponse
    with
        _i1.AWSEquatable<DeleteServiceLinkedRoleResponse>
    implements
        Built<DeleteServiceLinkedRoleResponse,
            DeleteServiceLinkedRoleResponseBuilder> {
  factory DeleteServiceLinkedRoleResponse({required String deletionTaskId}) {
    return _$DeleteServiceLinkedRoleResponse._(deletionTaskId: deletionTaskId);
  }

  factory DeleteServiceLinkedRoleResponse.build(
          [void Function(DeleteServiceLinkedRoleResponseBuilder) updates]) =
      _$DeleteServiceLinkedRoleResponse;

  const DeleteServiceLinkedRoleResponse._();

  /// Constructs a [DeleteServiceLinkedRoleResponse] from a [payload] and [response].
  factory DeleteServiceLinkedRoleResponse.fromResponse(
    DeleteServiceLinkedRoleResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    DeleteServiceLinkedRoleResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteServiceLinkedRoleResponseBuilder b) {}

  /// The deletion task identifier that you can use to check the status of the deletion. This identifier is returned in the format `task/aws-service-role///`.
  String get deletionTaskId;
  @override
  List<Object?> get props => [deletionTaskId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteServiceLinkedRoleResponse');
    helper.add(
      'deletionTaskId',
      deletionTaskId,
    );
    return helper.toString();
  }
}

class DeleteServiceLinkedRoleResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteServiceLinkedRoleResponse> {
  const DeleteServiceLinkedRoleResponseAwsQuerySerializer()
      : super('DeleteServiceLinkedRoleResponse');

  @override
  Iterable<Type> get types => const [
        DeleteServiceLinkedRoleResponse,
        _$DeleteServiceLinkedRoleResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteServiceLinkedRoleResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteServiceLinkedRoleResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DeletionTaskId':
          result.deletionTaskId = (serializers.deserialize(
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
    final payload = (object as DeleteServiceLinkedRoleResponse);
    final result = <Object?>[
      const _i2.XmlElementName(
        'DeleteServiceLinkedRoleResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('DeletionTaskId'))
      ..add(serializers.serialize(
        payload.deletionTaskId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
