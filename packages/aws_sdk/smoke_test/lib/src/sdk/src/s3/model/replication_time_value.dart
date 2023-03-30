// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.replication_time_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'replication_time_value.g.dart';

/// A container specifying the time value for S3 Replication Time Control (S3 RTC) and replication metrics `EventThreshold`.
abstract class ReplicationTimeValue
    with _i1.AWSEquatable<ReplicationTimeValue>
    implements Built<ReplicationTimeValue, ReplicationTimeValueBuilder> {
  /// A container specifying the time value for S3 Replication Time Control (S3 RTC) and replication metrics `EventThreshold`.
  factory ReplicationTimeValue({int? minutes}) {
    return _$ReplicationTimeValue._(minutes: minutes);
  }

  /// A container specifying the time value for S3 Replication Time Control (S3 RTC) and replication metrics `EventThreshold`.
  factory ReplicationTimeValue.build(
          [void Function(ReplicationTimeValueBuilder) updates]) =
      _$ReplicationTimeValue;

  const ReplicationTimeValue._();

  static const List<_i2.SmithySerializer> serializers = [
    ReplicationTimeValueRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicationTimeValueBuilder b) {}

  /// Contains an integer specifying time in minutes.
  ///
  /// Valid value: 15
  int? get minutes;
  @override
  List<Object?> get props => [minutes];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicationTimeValue');
    helper.add(
      'minutes',
      minutes,
    );
    return helper.toString();
  }
}

class ReplicationTimeValueRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ReplicationTimeValue> {
  const ReplicationTimeValueRestXmlSerializer() : super('ReplicationTimeValue');

  @override
  Iterable<Type> get types => const [
        ReplicationTimeValue,
        _$ReplicationTimeValue,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ReplicationTimeValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicationTimeValueBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Minutes':
          if (value != null) {
            result.minutes = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
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
    final payload = (object as ReplicationTimeValue);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ReplicationTimeValue',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.minutes != null) {
      result
        ..add(const _i2.XmlElementName('Minutes'))
        ..add(serializers.serialize(
          payload.minutes!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result;
  }
}
