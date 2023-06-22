// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_service_linked_role_deletion_status_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/deletion_task_failure_reason_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/deletion_task_status_type.dart'
    as _i2;

part 'get_service_linked_role_deletion_status_response.g.dart';

abstract class GetServiceLinkedRoleDeletionStatusResponse
    with
        _i1.AWSEquatable<GetServiceLinkedRoleDeletionStatusResponse>
    implements
        Built<GetServiceLinkedRoleDeletionStatusResponse,
            GetServiceLinkedRoleDeletionStatusResponseBuilder> {
  factory GetServiceLinkedRoleDeletionStatusResponse({
    required _i2.DeletionTaskStatusType status,
    _i3.DeletionTaskFailureReasonType? reason,
  }) {
    return _$GetServiceLinkedRoleDeletionStatusResponse._(
      status: status,
      reason: reason,
    );
  }

  factory GetServiceLinkedRoleDeletionStatusResponse.build(
      [void Function(GetServiceLinkedRoleDeletionStatusResponseBuilder)
          updates]) = _$GetServiceLinkedRoleDeletionStatusResponse;

  const GetServiceLinkedRoleDeletionStatusResponse._();

  /// Constructs a [GetServiceLinkedRoleDeletionStatusResponse] from a [payload] and [response].
  factory GetServiceLinkedRoleDeletionStatusResponse.fromResponse(
    GetServiceLinkedRoleDeletionStatusResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i4.SmithySerializer<GetServiceLinkedRoleDeletionStatusResponse>>
      serializers = [
    GetServiceLinkedRoleDeletionStatusResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetServiceLinkedRoleDeletionStatusResponseBuilder b) {}

  /// The status of the deletion.
  _i2.DeletionTaskStatusType get status;

  /// An object that contains details about the reason the deletion failed.
  _i3.DeletionTaskFailureReasonType? get reason;
  @override
  List<Object?> get props => [
        status,
        reason,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetServiceLinkedRoleDeletionStatusResponse')
      ..add(
        'status',
        status,
      )
      ..add(
        'reason',
        reason,
      );
    return helper.toString();
  }
}

class GetServiceLinkedRoleDeletionStatusResponseAwsQuerySerializer extends _i4
    .StructuredSmithySerializer<GetServiceLinkedRoleDeletionStatusResponse> {
  const GetServiceLinkedRoleDeletionStatusResponseAwsQuerySerializer()
      : super('GetServiceLinkedRoleDeletionStatusResponse');

  @override
  Iterable<Type> get types => const [
        GetServiceLinkedRoleDeletionStatusResponse,
        _$GetServiceLinkedRoleDeletionStatusResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetServiceLinkedRoleDeletionStatusResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetServiceLinkedRoleDeletionStatusResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.DeletionTaskStatusType),
          ) as _i2.DeletionTaskStatusType);
        case 'Reason':
          result.reason.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.DeletionTaskFailureReasonType),
          ) as _i3.DeletionTaskFailureReasonType));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetServiceLinkedRoleDeletionStatusResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'GetServiceLinkedRoleDeletionStatusResponseResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetServiceLinkedRoleDeletionStatusResponse(:status, :reason) = object;
    result$
      ..add(const _i4.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType.nullable(_i2.DeletionTaskStatusType),
      ));
    if (reason != null) {
      result$
        ..add(const _i4.XmlElementName('Reason'))
        ..add(serializers.serialize(
          reason,
          specifiedType: const FullType(_i3.DeletionTaskFailureReasonType),
        ));
    }
    return result$;
  }
}
