// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.metrics; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/metrics_status.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/replication_time_value.dart'
    as _i2;

part 'metrics.g.dart';

/// A container specifying replication metrics-related settings enabling replication metrics and events.
abstract class Metrics
    with _i1.AWSEquatable<Metrics>
    implements Built<Metrics, MetricsBuilder> {
  /// A container specifying replication metrics-related settings enabling replication metrics and events.
  factory Metrics({
    _i2.ReplicationTimeValue? eventThreshold,
    required _i3.MetricsStatus status,
  }) {
    return _$Metrics._(
      eventThreshold: eventThreshold,
      status: status,
    );
  }

  /// A container specifying replication metrics-related settings enabling replication metrics and events.
  factory Metrics.build([void Function(MetricsBuilder) updates]) = _$Metrics;

  const Metrics._();

  static const List<_i4.SmithySerializer> serializers = [
    MetricsRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MetricsBuilder b) {}

  /// A container specifying the time threshold for emitting the `s3:Replication:OperationMissedThreshold` event.
  _i2.ReplicationTimeValue? get eventThreshold;

  /// Specifies whether the replication metrics are enabled.
  _i3.MetricsStatus get status;
  @override
  List<Object?> get props => [
        eventThreshold,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Metrics');
    helper.add(
      'eventThreshold',
      eventThreshold,
    );
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class MetricsRestXmlSerializer extends _i4.StructuredSmithySerializer<Metrics> {
  const MetricsRestXmlSerializer() : super('Metrics');

  @override
  Iterable<Type> get types => const [
        Metrics,
        _$Metrics,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Metrics deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'EventThreshold':
          if (value != null) {
            result.eventThreshold.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ReplicationTimeValue),
            ) as _i2.ReplicationTimeValue));
          }
          break;
        case 'Status':
          result.status = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.MetricsStatus),
          ) as _i3.MetricsStatus);
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
    final payload = (object as Metrics);
    final result = <Object?>[
      const _i4.XmlElementName(
        'Metrics',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.eventThreshold != null) {
      result
        ..add(const _i4.XmlElementName('EventThreshold'))
        ..add(serializers.serialize(
          payload.eventThreshold!,
          specifiedType: const FullType(_i2.ReplicationTimeValue),
        ));
    }
    result
      ..add(const _i4.XmlElementName('Status'))
      ..add(serializers.serialize(
        payload.status,
        specifiedType: const FullType.nullable(_i3.MetricsStatus),
      ));
    return result;
  }
}
