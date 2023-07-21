// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.model.rejected_log_events_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
    int? tooNewLogEventStartIndex,
    int? tooOldLogEventEndIndex,
    int? expiredLogEventEndIndex,
  }) {
    return _$RejectedLogEventsInfo._(
      tooNewLogEventStartIndex: tooNewLogEventStartIndex,
      tooOldLogEventEndIndex: tooOldLogEventEndIndex,
      expiredLogEventEndIndex: expiredLogEventEndIndex,
    );
  }

  /// Represents the rejected events.
  factory RejectedLogEventsInfo.build(
          [void Function(RejectedLogEventsInfoBuilder) updates]) =
      _$RejectedLogEventsInfo;

  const RejectedLogEventsInfo._();

  static const List<_i2.SmithySerializer<RejectedLogEventsInfo>> serializers = [
    RejectedLogEventsInfoAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RejectedLogEventsInfoBuilder b) {}

  /// The log events that are too new.
  int? get tooNewLogEventStartIndex;

  /// The log events that are dated too far in the past.
  int? get tooOldLogEventEndIndex;

  /// The expired log events.
  int? get expiredLogEventEndIndex;
  @override
  List<Object?> get props => [
        tooNewLogEventStartIndex,
        tooOldLogEventEndIndex,
        expiredLogEventEndIndex,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RejectedLogEventsInfo')
      ..add(
        'tooNewLogEventStartIndex',
        tooNewLogEventStartIndex,
      )
      ..add(
        'tooOldLogEventEndIndex',
        tooOldLogEventEndIndex,
      )
      ..add(
        'expiredLogEventEndIndex',
        expiredLogEventEndIndex,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'tooNewLogEventStartIndex':
          result.tooNewLogEventStartIndex = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'tooOldLogEventEndIndex':
          result.tooOldLogEventEndIndex = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'expiredLogEventEndIndex':
          result.expiredLogEventEndIndex = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RejectedLogEventsInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RejectedLogEventsInfo(
      :tooNewLogEventStartIndex,
      :tooOldLogEventEndIndex,
      :expiredLogEventEndIndex
    ) = object;
    if (tooNewLogEventStartIndex != null) {
      result$
        ..add('tooNewLogEventStartIndex')
        ..add(serializers.serialize(
          tooNewLogEventStartIndex,
          specifiedType: const FullType(int),
        ));
    }
    if (tooOldLogEventEndIndex != null) {
      result$
        ..add('tooOldLogEventEndIndex')
        ..add(serializers.serialize(
          tooOldLogEventEndIndex,
          specifiedType: const FullType(int),
        ));
    }
    if (expiredLogEventEndIndex != null) {
      result$
        ..add('expiredLogEventEndIndex')
        ..add(serializers.serialize(
          expiredLogEventEndIndex,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
