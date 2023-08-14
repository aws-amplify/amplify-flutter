// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.run_scheduled_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'run_scheduled_instances_result.g.dart';

/// Contains the output of RunScheduledInstances.
abstract class RunScheduledInstancesResult
    with _i1.AWSEquatable<RunScheduledInstancesResult>
    implements
        Built<RunScheduledInstancesResult, RunScheduledInstancesResultBuilder> {
  /// Contains the output of RunScheduledInstances.
  factory RunScheduledInstancesResult({List<String>? instanceIdSet}) {
    return _$RunScheduledInstancesResult._(
        instanceIdSet:
            instanceIdSet == null ? null : _i2.BuiltList(instanceIdSet));
  }

  /// Contains the output of RunScheduledInstances.
  factory RunScheduledInstancesResult.build(
          [void Function(RunScheduledInstancesResultBuilder) updates]) =
      _$RunScheduledInstancesResult;

  const RunScheduledInstancesResult._();

  /// Constructs a [RunScheduledInstancesResult] from a [payload] and [response].
  factory RunScheduledInstancesResult.fromResponse(
    RunScheduledInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<RunScheduledInstancesResult>>
      serializers = [RunScheduledInstancesResultEc2QuerySerializer()];

  /// The IDs of the newly launched instances.
  _i2.BuiltList<String>? get instanceIdSet;
  @override
  List<Object?> get props => [instanceIdSet];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RunScheduledInstancesResult')
      ..add(
        'instanceIdSet',
        instanceIdSet,
      );
    return helper.toString();
  }
}

class RunScheduledInstancesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<RunScheduledInstancesResult> {
  const RunScheduledInstancesResultEc2QuerySerializer()
      : super('RunScheduledInstancesResult');

  @override
  Iterable<Type> get types => const [
        RunScheduledInstancesResult,
        _$RunScheduledInstancesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RunScheduledInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RunScheduledInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceIdSet':
          result.instanceIdSet.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RunScheduledInstancesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'RunScheduledInstancesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RunScheduledInstancesResult(:instanceIdSet) = object;
    if (instanceIdSet != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceIdSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceIdSet,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
