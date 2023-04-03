// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.stack_set_operation_status_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'stack_set_operation_status_details.g.dart';

/// Detailed information about the StackSet operation.
abstract class StackSetOperationStatusDetails
    with
        _i1.AWSEquatable<StackSetOperationStatusDetails>
    implements
        Built<StackSetOperationStatusDetails,
            StackSetOperationStatusDetailsBuilder> {
  /// Detailed information about the StackSet operation.
  factory StackSetOperationStatusDetails({int? failedStackInstancesCount}) {
    failedStackInstancesCount ??= 0;
    return _$StackSetOperationStatusDetails._(
        failedStackInstancesCount: failedStackInstancesCount);
  }

  /// Detailed information about the StackSet operation.
  factory StackSetOperationStatusDetails.build(
          [void Function(StackSetOperationStatusDetailsBuilder) updates]) =
      _$StackSetOperationStatusDetails;

  const StackSetOperationStatusDetails._();

  static const List<_i2.SmithySerializer> serializers = [
    StackSetOperationStatusDetailsAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackSetOperationStatusDetailsBuilder b) {
    b.failedStackInstancesCount = 0;
  }

  /// The number of stack instances for which the StackSet operation failed.
  int get failedStackInstancesCount;
  @override
  List<Object?> get props => [failedStackInstancesCount];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StackSetOperationStatusDetails');
    helper.add(
      'failedStackInstancesCount',
      failedStackInstancesCount,
    );
    return helper.toString();
  }
}

class StackSetOperationStatusDetailsAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<StackSetOperationStatusDetails> {
  const StackSetOperationStatusDetailsAwsQuerySerializer()
      : super('StackSetOperationStatusDetails');

  @override
  Iterable<Type> get types => const [
        StackSetOperationStatusDetails,
        _$StackSetOperationStatusDetails,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackSetOperationStatusDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackSetOperationStatusDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'FailedStackInstancesCount':
          result.failedStackInstancesCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as StackSetOperationStatusDetails);
    final result = <Object?>[
      const _i2.XmlElementName(
        'StackSetOperationStatusDetailsResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('FailedStackInstancesCount'))
      ..add(serializers.serialize(
        payload.failedStackInstancesCount,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
