// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_query_v2.query_protocol.model.datetime_offsets_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'datetime_offsets_output.g.dart';

abstract class DatetimeOffsetsOutput
    with _i1.AWSEquatable<DatetimeOffsetsOutput>
    implements Built<DatetimeOffsetsOutput, DatetimeOffsetsOutputBuilder> {
  factory DatetimeOffsetsOutput({DateTime? datetime}) {
    return _$DatetimeOffsetsOutput._(datetime: datetime);
  }

  factory DatetimeOffsetsOutput.build(
          [void Function(DatetimeOffsetsOutputBuilder) updates]) =
      _$DatetimeOffsetsOutput;

  const DatetimeOffsetsOutput._();

  /// Constructs a [DatetimeOffsetsOutput] from a [payload] and [response].
  factory DatetimeOffsetsOutput.fromResponse(
    DatetimeOffsetsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DatetimeOffsetsOutput>> serializers = [
    DatetimeOffsetsOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DatetimeOffsetsOutputBuilder b) {}
  DateTime? get datetime;
  @override
  List<Object?> get props => [datetime];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DatetimeOffsetsOutput')
      ..add(
        'datetime',
        datetime,
      );
    return helper.toString();
  }
}

class DatetimeOffsetsOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<DatetimeOffsetsOutput> {
  const DatetimeOffsetsOutputAwsQuerySerializer()
      : super('DatetimeOffsetsOutput');

  @override
  Iterable<Type> get types => const [
        DatetimeOffsetsOutput,
        _$DatetimeOffsetsOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DatetimeOffsetsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DatetimeOffsetsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'datetime':
          result.datetime = _i2.TimestampSerializer.dateTime.deserialize(
            serializers,
            value,
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DatetimeOffsetsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DatetimeOffsetsOutputResponse',
        _i2.XmlNamespace('https://example.com/'),
      )
    ];
    final DatetimeOffsetsOutput(:datetime) = object;
    if (datetime != null) {
      result$
        ..add(const _i2.XmlElementName('datetime'))
        ..add(_i2.TimestampSerializer.dateTime.serialize(
          serializers,
          datetime,
        ));
    }
    return result$;
  }
}
