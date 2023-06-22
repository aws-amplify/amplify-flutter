// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_instance_comprehensive_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_detailed_status.dart'
    as _i2;

part 'stack_instance_comprehensive_status.g.dart';

/// The detailed status of the stack instance.
abstract class StackInstanceComprehensiveStatus
    with
        _i1.AWSEquatable<StackInstanceComprehensiveStatus>
    implements
        Built<StackInstanceComprehensiveStatus,
            StackInstanceComprehensiveStatusBuilder> {
  /// The detailed status of the stack instance.
  factory StackInstanceComprehensiveStatus(
      {_i2.StackInstanceDetailedStatus? detailedStatus}) {
    return _$StackInstanceComprehensiveStatus._(detailedStatus: detailedStatus);
  }

  /// The detailed status of the stack instance.
  factory StackInstanceComprehensiveStatus.build(
          [void Function(StackInstanceComprehensiveStatusBuilder) updates]) =
      _$StackInstanceComprehensiveStatus;

  const StackInstanceComprehensiveStatus._();

  static const List<_i3.SmithySerializer<StackInstanceComprehensiveStatus>>
      serializers = [StackInstanceComprehensiveStatusAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackInstanceComprehensiveStatusBuilder b) {}

  /// *   `CANCELLED`: The operation in the specified account and Region has been canceled. This is either because a user has stopped the stack set operation, or because the failure tolerance of the stack set operation has been exceeded.
  ///
  /// *   `FAILED`: The operation in the specified account and Region failed. If the stack set operation fails in enough accounts within a Region, the failure tolerance for the stack set operation as a whole might be exceeded.
  ///
  /// *   `INOPERABLE`: A `DeleteStackInstances` operation has failed and left the stack in an unstable state. Stacks in this state are excluded from further `UpdateStackSet` operations. You might need to perform a `DeleteStackInstances` operation, with `RetainStacks` set to `true`, to delete the stack instance, and then delete the stack manually.
  ///
  /// *   `PENDING`: The operation in the specified account and Region has yet to start.
  ///
  /// *   `RUNNING`: The operation in the specified account and Region is currently in progress.
  ///
  /// *   `SKIPPED\_SUSPENDED\_ACCOUNT`: The operation in the specified account and Region has been skipped because the account was suspended at the time of the operation.
  ///
  /// *   `SUCCEEDED`: The operation in the specified account and Region completed successfully.
  _i2.StackInstanceDetailedStatus? get detailedStatus;
  @override
  List<Object?> get props => [detailedStatus];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StackInstanceComprehensiveStatus')
          ..add(
            'detailedStatus',
            detailedStatus,
          );
    return helper.toString();
  }
}

class StackInstanceComprehensiveStatusAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<StackInstanceComprehensiveStatus> {
  const StackInstanceComprehensiveStatusAwsQuerySerializer()
      : super('StackInstanceComprehensiveStatus');

  @override
  Iterable<Type> get types => const [
        StackInstanceComprehensiveStatus,
        _$StackInstanceComprehensiveStatus,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackInstanceComprehensiveStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackInstanceComprehensiveStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DetailedStatus':
          result.detailedStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StackInstanceDetailedStatus),
          ) as _i2.StackInstanceDetailedStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StackInstanceComprehensiveStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'StackInstanceComprehensiveStatusResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final StackInstanceComprehensiveStatus(:detailedStatus) = object;
    if (detailedStatus != null) {
      result$
        ..add(const _i3.XmlElementName('DetailedStatus'))
        ..add(serializers.serialize(
          detailedStatus,
          specifiedType:
              const FullType.nullable(_i2.StackInstanceDetailedStatus),
        ));
    }
    return result$;
  }
}
