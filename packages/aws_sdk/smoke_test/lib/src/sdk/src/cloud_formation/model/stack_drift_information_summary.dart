// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_drift_information_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_status.dart'
    as _i2;

part 'stack_drift_information_summary.g.dart';

/// Contains information about whether the stack's actual configuration differs, or has _drifted_, from its expected configuration, as defined in the stack template and any values specified as template parameters. A stack is considered to have drifted if one or more of its resources have drifted.
abstract class StackDriftInformationSummary
    with
        _i1.AWSEquatable<StackDriftInformationSummary>
    implements
        Built<StackDriftInformationSummary,
            StackDriftInformationSummaryBuilder> {
  /// Contains information about whether the stack's actual configuration differs, or has _drifted_, from its expected configuration, as defined in the stack template and any values specified as template parameters. A stack is considered to have drifted if one or more of its resources have drifted.
  factory StackDriftInformationSummary({
    required _i2.StackDriftStatus stackDriftStatus,
    DateTime? lastCheckTimestamp,
  }) {
    return _$StackDriftInformationSummary._(
      stackDriftStatus: stackDriftStatus,
      lastCheckTimestamp: lastCheckTimestamp,
    );
  }

  /// Contains information about whether the stack's actual configuration differs, or has _drifted_, from its expected configuration, as defined in the stack template and any values specified as template parameters. A stack is considered to have drifted if one or more of its resources have drifted.
  factory StackDriftInformationSummary.build(
          [void Function(StackDriftInformationSummaryBuilder) updates]) =
      _$StackDriftInformationSummary;

  const StackDriftInformationSummary._();

  static const List<_i3.SmithySerializer<StackDriftInformationSummary>>
      serializers = [StackDriftInformationSummaryAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackDriftInformationSummaryBuilder b) {}

  /// Status of the stack's actual configuration compared to its expected template configuration.
  ///
  /// *   `DRIFTED`: The stack differs from its expected template configuration. A stack is considered to have drifted if one or more of its resources have drifted.
  ///
  /// *   `NOT_CHECKED`: CloudFormation hasn't checked if the stack differs from its expected template configuration.
  ///
  /// *   `IN_SYNC`: The stack's actual configuration matches its expected template configuration.
  ///
  /// *   `UNKNOWN`: This value is reserved for future use.
  _i2.StackDriftStatus get stackDriftStatus;

  /// Most recent time when a drift detection operation was initiated on the stack, or any of its individual resources that support drift detection.
  DateTime? get lastCheckTimestamp;
  @override
  List<Object?> get props => [
        stackDriftStatus,
        lastCheckTimestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackDriftInformationSummary')
      ..add(
        'stackDriftStatus',
        stackDriftStatus,
      )
      ..add(
        'lastCheckTimestamp',
        lastCheckTimestamp,
      );
    return helper.toString();
  }
}

class StackDriftInformationSummaryAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<StackDriftInformationSummary> {
  const StackDriftInformationSummaryAwsQuerySerializer()
      : super('StackDriftInformationSummary');

  @override
  Iterable<Type> get types => const [
        StackDriftInformationSummary,
        _$StackDriftInformationSummary,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackDriftInformationSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackDriftInformationSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackDriftStatus':
          result.stackDriftStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StackDriftStatus),
          ) as _i2.StackDriftStatus);
        case 'LastCheckTimestamp':
          result.lastCheckTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StackDriftInformationSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'StackDriftInformationSummaryResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final StackDriftInformationSummary(:stackDriftStatus, :lastCheckTimestamp) =
        object;
    result$
      ..add(const _i3.XmlElementName('StackDriftStatus'))
      ..add(serializers.serialize(
        stackDriftStatus,
        specifiedType: const FullType.nullable(_i2.StackDriftStatus),
      ));
    if (lastCheckTimestamp != null) {
      result$
        ..add(const _i3.XmlElementName('LastCheckTimestamp'))
        ..add(serializers.serialize(
          lastCheckTimestamp,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
