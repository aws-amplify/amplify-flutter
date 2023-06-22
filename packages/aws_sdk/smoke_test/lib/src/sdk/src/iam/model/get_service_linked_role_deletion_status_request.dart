// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_service_linked_role_deletion_status_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_service_linked_role_deletion_status_request.g.dart';

abstract class GetServiceLinkedRoleDeletionStatusRequest
    with
        _i1.HttpInput<GetServiceLinkedRoleDeletionStatusRequest>,
        _i2.AWSEquatable<GetServiceLinkedRoleDeletionStatusRequest>
    implements
        Built<GetServiceLinkedRoleDeletionStatusRequest,
            GetServiceLinkedRoleDeletionStatusRequestBuilder> {
  factory GetServiceLinkedRoleDeletionStatusRequest(
      {required String deletionTaskId}) {
    return _$GetServiceLinkedRoleDeletionStatusRequest._(
        deletionTaskId: deletionTaskId);
  }

  factory GetServiceLinkedRoleDeletionStatusRequest.build(
      [void Function(GetServiceLinkedRoleDeletionStatusRequestBuilder)
          updates]) = _$GetServiceLinkedRoleDeletionStatusRequest;

  const GetServiceLinkedRoleDeletionStatusRequest._();

  factory GetServiceLinkedRoleDeletionStatusRequest.fromRequest(
    GetServiceLinkedRoleDeletionStatusRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<GetServiceLinkedRoleDeletionStatusRequest>>
      serializers = [
    GetServiceLinkedRoleDeletionStatusRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetServiceLinkedRoleDeletionStatusRequestBuilder b) {}

  /// The deletion task identifier. This identifier is returned by the DeleteServiceLinkedRole operation in the format `task/aws-service-role///`.
  String get deletionTaskId;
  @override
  GetServiceLinkedRoleDeletionStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [deletionTaskId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetServiceLinkedRoleDeletionStatusRequest')
          ..add(
            'deletionTaskId',
            deletionTaskId,
          );
    return helper.toString();
  }
}

class GetServiceLinkedRoleDeletionStatusRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<GetServiceLinkedRoleDeletionStatusRequest> {
  const GetServiceLinkedRoleDeletionStatusRequestAwsQuerySerializer()
      : super('GetServiceLinkedRoleDeletionStatusRequest');

  @override
  Iterable<Type> get types => const [
        GetServiceLinkedRoleDeletionStatusRequest,
        _$GetServiceLinkedRoleDeletionStatusRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetServiceLinkedRoleDeletionStatusRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetServiceLinkedRoleDeletionStatusRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DeletionTaskId':
          result.deletionTaskId = (serializers.deserialize(
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
    GetServiceLinkedRoleDeletionStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetServiceLinkedRoleDeletionStatusRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetServiceLinkedRoleDeletionStatusRequest(:deletionTaskId) = object;
    result$
      ..add(const _i1.XmlElementName('DeletionTaskId'))
      ..add(serializers.serialize(
        deletionTaskId,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
