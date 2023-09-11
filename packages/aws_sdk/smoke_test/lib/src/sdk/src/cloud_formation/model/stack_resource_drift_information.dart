// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.stack_resource_drift_information; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift_status.dart';

part 'stack_resource_drift_information.g.dart';

/// Contains information about whether the resource's actual configuration differs, or has _drifted_, from its expected configuration.
abstract class StackResourceDriftInformation
    with
        _i1.AWSEquatable<StackResourceDriftInformation>
    implements
        Built<StackResourceDriftInformation,
            StackResourceDriftInformationBuilder> {
  /// Contains information about whether the resource's actual configuration differs, or has _drifted_, from its expected configuration.
  factory StackResourceDriftInformation({
    required StackResourceDriftStatus stackResourceDriftStatus,
    DateTime? lastCheckTimestamp,
  }) {
    return _$StackResourceDriftInformation._(
      stackResourceDriftStatus: stackResourceDriftStatus,
      lastCheckTimestamp: lastCheckTimestamp,
    );
  }

  /// Contains information about whether the resource's actual configuration differs, or has _drifted_, from its expected configuration.
  factory StackResourceDriftInformation.build(
          [void Function(StackResourceDriftInformationBuilder) updates]) =
      _$StackResourceDriftInformation;

  const StackResourceDriftInformation._();

  static const List<_i2.SmithySerializer<StackResourceDriftInformation>>
      serializers = [StackResourceDriftInformationAwsQuerySerializer()];

  /// Status of the resource's actual configuration compared to its expected configuration
  ///
  /// *   `DELETED`: The resource differs from its expected configuration in that it has been deleted.
  ///
  /// *   `MODIFIED`: The resource differs from its expected configuration.
  ///
  /// *   `NOT_CHECKED`: CloudFormation has not checked if the resource differs from its expected configuration.
  ///
  ///     Any resources that do not currently support drift detection have a status of `NOT_CHECKED`. For more information, see [Resources that Support Drift Detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).
  ///
  /// *   `IN_SYNC`: The resource's actual configuration matches its expected configuration.
  StackResourceDriftStatus get stackResourceDriftStatus;

  /// When CloudFormation last checked if the resource had drifted from its expected configuration.
  DateTime? get lastCheckTimestamp;
  @override
  List<Object?> get props => [
        stackResourceDriftStatus,
        lastCheckTimestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackResourceDriftInformation')
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

class StackResourceDriftInformationAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<StackResourceDriftInformation> {
  const StackResourceDriftInformationAwsQuerySerializer()
      : super('StackResourceDriftInformation');

  @override
  Iterable<Type> get types => const [
        StackResourceDriftInformation,
        _$StackResourceDriftInformation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackResourceDriftInformation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackResourceDriftInformationBuilder();
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
        case 'StackResourceDriftStatus':
          result.stackResourceDriftStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(StackResourceDriftStatus),
          ) as StackResourceDriftStatus);
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
    StackResourceDriftInformation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'StackResourceDriftInformationResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final StackResourceDriftInformation(
      :stackResourceDriftStatus,
      :lastCheckTimestamp
    ) = object;
    result$
      ..add(const _i2.XmlElementName('StackResourceDriftStatus'))
      ..add(serializers.serialize(
        stackResourceDriftStatus,
        specifiedType: const FullType(StackResourceDriftStatus),
      ));
    if (lastCheckTimestamp != null) {
      result$
        ..add(const _i2.XmlElementName('LastCheckTimestamp'))
        ..add(serializers.serialize(
          lastCheckTimestamp,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
