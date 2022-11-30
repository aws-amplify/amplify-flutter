// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_logging_cloudwatchlogs_dart.cloud_watch_logs.model.rejected_log_events_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'rejected_log_events_info.g.dart';

/// Represents the rejected events.
abstract class RejectedLogEventsInfo
    with _i1.AWSEquatable<RejectedLogEventsInfo>
    implements Built<RejectedLogEventsInfo, RejectedLogEventsInfoBuilder> {
  /// Represents the rejected events.
  factory RejectedLogEventsInfo({
    int? expiredLogEventEndIndex,
    int? tooNewLogEventStartIndex,
    int? tooOldLogEventEndIndex,
  }) {
    return _$RejectedLogEventsInfo._(
      expiredLogEventEndIndex: expiredLogEventEndIndex,
      tooNewLogEventStartIndex: tooNewLogEventStartIndex,
      tooOldLogEventEndIndex: tooOldLogEventEndIndex,
    );
  }

  /// Represents the rejected events.
  factory RejectedLogEventsInfo.build(
          [void Function(RejectedLogEventsInfoBuilder) updates]) =
      _$RejectedLogEventsInfo;

  const RejectedLogEventsInfo._();

  static const List<_i2.SmithySerializer> serializers = [
    RejectedLogEventsInfoAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RejectedLogEventsInfoBuilder b) {}

  /// The expired log events.
  int? get expiredLogEventEndIndex;

  /// The log events that are too new.
  int? get tooNewLogEventStartIndex;

  /// The log events that are too old.
  int? get tooOldLogEventEndIndex;
  @override
  List<Object?> get props => [
        expiredLogEventEndIndex,
        tooNewLogEventStartIndex,
        tooOldLogEventEndIndex,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RejectedLogEventsInfo');
    helper.add(
      'expiredLogEventEndIndex',
      expiredLogEventEndIndex,
    );
    helper.add(
      'tooNewLogEventStartIndex',
      tooNewLogEventStartIndex,
    );
    helper.add(
      'tooOldLogEventEndIndex',
      tooOldLogEventEndIndex,
    );
    return helper.toString();
  }
}

class RejectedLogEventsInfoAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<RejectedLogEventsInfo> {
  const RejectedLogEventsInfoAwsJson11Serializer()
      : super('RejectedLogEventsInfo');

  @override
  Iterable<Type> get types => const [
        RejectedLogEventsInfo,
        _$RejectedLogEventsInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  RejectedLogEventsInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RejectedLogEventsInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'expiredLogEventEndIndex':
          if (value != null) {
            result.expiredLogEventEndIndex = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'tooNewLogEventStartIndex':
          if (value != null) {
            result.tooNewLogEventStartIndex = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'tooOldLogEventEndIndex':
          if (value != null) {
            result.tooOldLogEventEndIndex = (serializers.deserialize(
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
    final payload = (object as RejectedLogEventsInfo);
    final result = <Object?>[];
    if (payload.expiredLogEventEndIndex != null) {
      result
        ..add('expiredLogEventEndIndex')
        ..add(serializers.serialize(
          payload.expiredLogEventEndIndex!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.tooNewLogEventStartIndex != null) {
      result
        ..add('tooNewLogEventStartIndex')
        ..add(serializers.serialize(
          payload.tooNewLogEventStartIndex!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.tooOldLogEventEndIndex != null) {
      result
        ..add('tooOldLogEventEndIndex')
        ..add(serializers.serialize(
          payload.tooOldLogEventEndIndex!,
          specifiedType: const FullType(int),
        ));
    }
    return result;
  }
}
