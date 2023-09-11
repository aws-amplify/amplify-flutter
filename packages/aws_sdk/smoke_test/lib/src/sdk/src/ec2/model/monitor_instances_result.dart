// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.monitor_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_monitoring.dart';

part 'monitor_instances_result.g.dart';

abstract class MonitorInstancesResult
    with _i1.AWSEquatable<MonitorInstancesResult>
    implements Built<MonitorInstancesResult, MonitorInstancesResultBuilder> {
  factory MonitorInstancesResult(
      {List<InstanceMonitoring>? instanceMonitorings}) {
    return _$MonitorInstancesResult._(
        instanceMonitorings: instanceMonitorings == null
            ? null
            : _i2.BuiltList(instanceMonitorings));
  }

  factory MonitorInstancesResult.build(
          [void Function(MonitorInstancesResultBuilder) updates]) =
      _$MonitorInstancesResult;

  const MonitorInstancesResult._();

  /// Constructs a [MonitorInstancesResult] from a [payload] and [response].
  factory MonitorInstancesResult.fromResponse(
    MonitorInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<MonitorInstancesResult>> serializers =
      [MonitorInstancesResultEc2QuerySerializer()];

  /// The monitoring information.
  _i2.BuiltList<InstanceMonitoring>? get instanceMonitorings;
  @override
  List<Object?> get props => [instanceMonitorings];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MonitorInstancesResult')
      ..add(
        'instanceMonitorings',
        instanceMonitorings,
      );
    return helper.toString();
  }
}

class MonitorInstancesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<MonitorInstancesResult> {
  const MonitorInstancesResultEc2QuerySerializer()
      : super('MonitorInstancesResult');

  @override
  Iterable<Type> get types => const [
        MonitorInstancesResult,
        _$MonitorInstancesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  MonitorInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MonitorInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instancesSet':
          result.instanceMonitorings.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceMonitoring)],
            ),
          ) as _i2.BuiltList<InstanceMonitoring>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MonitorInstancesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'MonitorInstancesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final MonitorInstancesResult(:instanceMonitorings) = object;
    if (instanceMonitorings != null) {
      result$
        ..add(const _i3.XmlElementName('InstancesSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceMonitorings,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InstanceMonitoring)],
          ),
        ));
    }
    return result$;
  }
}
