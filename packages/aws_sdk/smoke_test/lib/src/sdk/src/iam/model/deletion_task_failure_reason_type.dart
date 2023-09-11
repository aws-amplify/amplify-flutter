// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.deletion_task_failure_reason_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/role_usage_type.dart';

part 'deletion_task_failure_reason_type.g.dart';

/// The reason that the service-linked role deletion failed.
///
/// This data type is used as a response element in the GetServiceLinkedRoleDeletionStatus operation.
abstract class DeletionTaskFailureReasonType
    with
        _i1.AWSEquatable<DeletionTaskFailureReasonType>
    implements
        Built<DeletionTaskFailureReasonType,
            DeletionTaskFailureReasonTypeBuilder> {
  /// The reason that the service-linked role deletion failed.
  ///
  /// This data type is used as a response element in the GetServiceLinkedRoleDeletionStatus operation.
  factory DeletionTaskFailureReasonType({
    String? reason,
    List<RoleUsageType>? roleUsageList,
  }) {
    return _$DeletionTaskFailureReasonType._(
      reason: reason,
      roleUsageList:
          roleUsageList == null ? null : _i2.BuiltList(roleUsageList),
    );
  }

  /// The reason that the service-linked role deletion failed.
  ///
  /// This data type is used as a response element in the GetServiceLinkedRoleDeletionStatus operation.
  factory DeletionTaskFailureReasonType.build(
          [void Function(DeletionTaskFailureReasonTypeBuilder) updates]) =
      _$DeletionTaskFailureReasonType;

  const DeletionTaskFailureReasonType._();

  static const List<_i3.SmithySerializer<DeletionTaskFailureReasonType>>
      serializers = [DeletionTaskFailureReasonTypeAwsQuerySerializer()];

  /// A short description of the reason that the service-linked role deletion failed.
  String? get reason;

  /// A list of objects that contains details about the service-linked role deletion failure, if that information is returned by the service. If the service-linked role has active sessions or if any resources that were used by the role have not been deleted from the linked service, the role can't be deleted. This parameter includes a list of the resources that are associated with the role and the Region in which the resources are being used.
  _i2.BuiltList<RoleUsageType>? get roleUsageList;
  @override
  List<Object?> get props => [
        reason,
        roleUsageList,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeletionTaskFailureReasonType')
      ..add(
        'reason',
        reason,
      )
      ..add(
        'roleUsageList',
        roleUsageList,
      );
    return helper.toString();
  }
}

class DeletionTaskFailureReasonTypeAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<DeletionTaskFailureReasonType> {
  const DeletionTaskFailureReasonTypeAwsQuerySerializer()
      : super('DeletionTaskFailureReasonType');

  @override
  Iterable<Type> get types => const [
        DeletionTaskFailureReasonType,
        _$DeletionTaskFailureReasonType,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeletionTaskFailureReasonType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeletionTaskFailureReasonTypeBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Reason':
          result.reason = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RoleUsageList':
          result.roleUsageList.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(RoleUsageType)],
            ),
          ) as _i2.BuiltList<RoleUsageType>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeletionTaskFailureReasonType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DeletionTaskFailureReasonTypeResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeletionTaskFailureReasonType(:reason, :roleUsageList) = object;
    if (reason != null) {
      result$
        ..add(const _i3.XmlElementName('Reason'))
        ..add(serializers.serialize(
          reason,
          specifiedType: const FullType(String),
        ));
    }
    if (roleUsageList != null) {
      result$
        ..add(const _i3.XmlElementName('RoleUsageList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          roleUsageList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(RoleUsageType)],
          ),
        ));
    }
    return result$;
  }
}
