// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_resource_drift_information_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift_status.dart'
    as _i2;

part 'stack_resource_drift_information_summary.g.dart';

/// Summarizes information about whether the resource's actual configuration differs, or has _drifted_, from its expected configuration.
abstract class StackResourceDriftInformationSummary
    with
        _i1.AWSEquatable<StackResourceDriftInformationSummary>
    implements
        Built<StackResourceDriftInformationSummary,
            StackResourceDriftInformationSummaryBuilder> {
  /// Summarizes information about whether the resource's actual configuration differs, or has _drifted_, from its expected configuration.
  factory StackResourceDriftInformationSummary({
    required _i2.StackResourceDriftStatus stackResourceDriftStatus,
    DateTime? lastCheckTimestamp,
  }) {
    return _$StackResourceDriftInformationSummary._(
      stackResourceDriftStatus: stackResourceDriftStatus,
      lastCheckTimestamp: lastCheckTimestamp,
    );
  }

  /// Summarizes information about whether the resource's actual configuration differs, or has _drifted_, from its expected configuration.
  factory StackResourceDriftInformationSummary.build(
      [void Function(StackResourceDriftInformationSummaryBuilder)
          updates]) = _$StackResourceDriftInformationSummary;

  const StackResourceDriftInformationSummary._();

  static const List<_i3.SmithySerializer<StackResourceDriftInformationSummary>>
      serializers = [StackResourceDriftInformationSummaryAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackResourceDriftInformationSummaryBuilder b) {}

  /// Status of the resource's actual configuration compared to its expected configuration.
  ///
  /// *   `DELETED`: The resource differs from its expected configuration in that it has been deleted.
  ///
  /// *   `MODIFIED`: The resource differs from its expected configuration.
  ///
  /// *   `NOT_CHECKED`: CloudFormation hasn't checked if the resource differs from its expected configuration.
  ///
  ///     Any resources that don't currently support drift detection have a status of `NOT_CHECKED`. For more information, see [Resources that Support Drift Detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html). If you performed an ContinueUpdateRollback operation on a stack, any resources included in `ResourcesToSkip` will also have a status of `NOT_CHECKED`. For more information about skipping resources during rollback operations, see [Continue Rolling Back an Update](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html) in the CloudFormation User Guide.
  ///
  /// *   `IN_SYNC`: The resource's actual configuration matches its expected configuration.
  _i2.StackResourceDriftStatus get stackResourceDriftStatus;

  /// When CloudFormation last checked if the resource had drifted from its expected configuration.
  DateTime? get lastCheckTimestamp;
  @override
  List<Object?> get props => [
        stackResourceDriftStatus,
        lastCheckTimestamp,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StackResourceDriftInformationSummary')
          ..add(
            'stackResourceDriftStatus',
            stackResourceDriftStatus,
          )
          ..add(
            'lastCheckTimestamp',
            lastCheckTimestamp,
          );
    return helper.toString();
  }
}

class StackResourceDriftInformationSummaryAwsQuerySerializer extends _i3
    .StructuredSmithySerializer<StackResourceDriftInformationSummary> {
  const StackResourceDriftInformationSummaryAwsQuerySerializer()
      : super('StackResourceDriftInformationSummary');

  @override
  Iterable<Type> get types => const [
        StackResourceDriftInformationSummary,
        _$StackResourceDriftInformationSummary,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackResourceDriftInformationSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackResourceDriftInformationSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackResourceDriftStatus':
          result.stackResourceDriftStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StackResourceDriftStatus),
          ) as _i2.StackResourceDriftStatus);
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
    StackResourceDriftInformationSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'StackResourceDriftInformationSummaryResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final StackResourceDriftInformationSummary(
      :stackResourceDriftStatus,
      :lastCheckTimestamp
    ) = object;
    result$
      ..add(const _i3.XmlElementName('StackResourceDriftStatus'))
      ..add(serializers.serialize(
        stackResourceDriftStatus,
        specifiedType: const FullType.nullable(_i2.StackResourceDriftStatus),
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
