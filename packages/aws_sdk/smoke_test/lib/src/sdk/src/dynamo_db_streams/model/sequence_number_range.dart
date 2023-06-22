// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db_streams.model.sequence_number_range; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'sequence_number_range.g.dart';

/// The beginning and ending sequence numbers for the stream records contained within a shard.
abstract class SequenceNumberRange
    with _i1.AWSEquatable<SequenceNumberRange>
    implements Built<SequenceNumberRange, SequenceNumberRangeBuilder> {
  /// The beginning and ending sequence numbers for the stream records contained within a shard.
  factory SequenceNumberRange({
    String? startingSequenceNumber,
    String? endingSequenceNumber,
  }) {
    return _$SequenceNumberRange._(
      startingSequenceNumber: startingSequenceNumber,
      endingSequenceNumber: endingSequenceNumber,
    );
  }

  /// The beginning and ending sequence numbers for the stream records contained within a shard.
  factory SequenceNumberRange.build(
          [void Function(SequenceNumberRangeBuilder) updates]) =
      _$SequenceNumberRange;

  const SequenceNumberRange._();

  static const List<_i2.SmithySerializer<SequenceNumberRange>> serializers = [
    SequenceNumberRangeAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SequenceNumberRangeBuilder b) {}

  /// The first sequence number for the stream records contained within a shard. String contains numeric characters only.
  String? get startingSequenceNumber;

  /// The last sequence number for the stream records contained within a shard. String contains numeric characters only.
  String? get endingSequenceNumber;
  @override
  List<Object?> get props => [
        startingSequenceNumber,
        endingSequenceNumber,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SequenceNumberRange')
      ..add(
        'startingSequenceNumber',
        startingSequenceNumber,
      )
      ..add(
        'endingSequenceNumber',
        endingSequenceNumber,
      );
    return helper.toString();
  }
}

class SequenceNumberRangeAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<SequenceNumberRange> {
  const SequenceNumberRangeAwsJson10Serializer() : super('SequenceNumberRange');

  @override
  Iterable<Type> get types => const [
        SequenceNumberRange,
        _$SequenceNumberRange,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  SequenceNumberRange deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SequenceNumberRangeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StartingSequenceNumber':
          result.startingSequenceNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EndingSequenceNumber':
          result.endingSequenceNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SequenceNumberRange object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final SequenceNumberRange(:startingSequenceNumber, :endingSequenceNumber) =
        object;
    if (startingSequenceNumber != null) {
      result$
        ..add('StartingSequenceNumber')
        ..add(serializers.serialize(
          startingSequenceNumber,
          specifiedType: const FullType(String),
        ));
    }
    if (endingSequenceNumber != null) {
      result$
        ..add('EndingSequenceNumber')
        ..add(serializers.serialize(
          endingSequenceNumber,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
