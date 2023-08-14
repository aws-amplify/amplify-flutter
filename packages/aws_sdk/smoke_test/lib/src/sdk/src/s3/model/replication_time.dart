// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.replication_time; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/replication_time_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/replication_time_value.dart';

part 'replication_time.g.dart';

/// A container specifying S3 Replication Time Control (S3 RTC) related information, including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. Must be specified together with a `Metrics` block.
abstract class ReplicationTime
    with _i1.AWSEquatable<ReplicationTime>
    implements Built<ReplicationTime, ReplicationTimeBuilder> {
  /// A container specifying S3 Replication Time Control (S3 RTC) related information, including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. Must be specified together with a `Metrics` block.
  factory ReplicationTime({
    required ReplicationTimeStatus status,
    required ReplicationTimeValue time,
  }) {
    return _$ReplicationTime._(
      status: status,
      time: time,
    );
  }

  /// A container specifying S3 Replication Time Control (S3 RTC) related information, including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. Must be specified together with a `Metrics` block.
  factory ReplicationTime.build(
      [void Function(ReplicationTimeBuilder) updates]) = _$ReplicationTime;

  const ReplicationTime._();

  static const List<_i2.SmithySerializer<ReplicationTime>> serializers = [
    ReplicationTimeRestXmlSerializer()
  ];

  /// Specifies whether the replication time is enabled.
  ReplicationTimeStatus get status;

  /// A container specifying the time by which replication should be complete for all objects and operations on objects.
  ReplicationTimeValue get time;
  @override
  List<Object?> get props => [
        status,
        time,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicationTime')
      ..add(
        'status',
        status,
      )
      ..add(
        'time',
        time,
      );
    return helper.toString();
  }
}

class ReplicationTimeRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ReplicationTime> {
  const ReplicationTimeRestXmlSerializer() : super('ReplicationTime');

  @override
  Iterable<Type> get types => const [
        ReplicationTime,
        _$ReplicationTime,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ReplicationTime deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicationTimeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(ReplicationTimeStatus),
          ) as ReplicationTimeStatus);
        case 'Time':
          result.time.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ReplicationTimeValue),
          ) as ReplicationTimeValue));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReplicationTime object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ReplicationTime',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ReplicationTime(:status, :time) = object;
    result$
      ..add(const _i2.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType.nullable(ReplicationTimeStatus),
      ));
    result$
      ..add(const _i2.XmlElementName('Time'))
      ..add(serializers.serialize(
        time,
        specifiedType: const FullType(ReplicationTimeValue),
      ));
    return result$;
  }
}
