// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.metrics; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/metrics_status.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/replication_time_value.dart'
    as _i3;

part 'metrics.g.dart';

/// A container specifying replication metrics-related settings enabling replication metrics and events.
abstract class Metrics
    with _i1.AWSEquatable<Metrics>
    implements Built<Metrics, MetricsBuilder> {
  /// A container specifying replication metrics-related settings enabling replication metrics and events.
  factory Metrics({
    required _i2.MetricsStatus status,
    _i3.ReplicationTimeValue? eventThreshold,
  }) {
    return _$Metrics._(
      status: status,
      eventThreshold: eventThreshold,
    );
  }

  /// A container specifying replication metrics-related settings enabling replication metrics and events.
  factory Metrics.build([void Function(MetricsBuilder) updates]) = _$Metrics;

  const Metrics._();

  static const List<_i4.SmithySerializer<Metrics>> serializers = [
    MetricsRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MetricsBuilder b) {}

  /// Specifies whether the replication metrics are enabled.
  _i2.MetricsStatus get status;

  /// A container specifying the time threshold for emitting the `s3:Replication:OperationMissedThreshold` event.
  _i3.ReplicationTimeValue? get eventThreshold;
  @override
  List<Object?> get props => [
        status,
        eventThreshold,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Metrics')
      ..add(
        'status',
        status,
      )
      ..add(
        'eventThreshold',
        eventThreshold,
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EventThreshold':
          result.eventThreshold.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ReplicationTimeValue),
          ) as _i3.ReplicationTimeValue));
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.MetricsStatus),
          ) as _i2.MetricsStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Metrics object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'Metrics',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final Metrics(:eventThreshold, :status) = object;
    if (eventThreshold != null) {
      result$
        ..add(const _i4.XmlElementName('EventThreshold'))
        ..add(serializers.serialize(
          eventThreshold,
          specifiedType: const FullType(_i3.ReplicationTimeValue),
        ));
    }
    result$
      ..add(const _i4.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType.nullable(_i2.MetricsStatus),
      ));
    return result$;
  }
}
