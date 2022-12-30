// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';

/// A class which handles serialization/deserialization of [Timestamp] objects
/// using the predefined formats specified by [TimestampFormat].
class TimestampSerializer implements PrimitiveSerializer<DateTime> {
  const TimestampSerializer._(this.format);

  /// The format to use for serialization/deserialization.
  final TimestampFormat format;

  /// {@macro smithy.timestamp_format_datetime}
  static const dateTime = TimestampSerializer._(TimestampFormat.dateTime);

  /// {@macro smithy.timestamp_format_httpdate}
  static const httpDate = TimestampSerializer._(TimestampFormat.httpDate);

  /// {@macro smithy.timestamp_format_epochseconds}
  static const epochSeconds =
      TimestampSerializer._(TimestampFormat.epochSeconds);

  /// {@macro smithy.timestamp_format_unknown}
  static const unknown = TimestampSerializer._(TimestampFormat.unknown);

  @override
  DateTime deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return Timestamp.parse(serialized, format: format).asDateTime;
  }

  @override
  Object serialize(Serializers serializers, DateTime object,
      {FullType specifiedType = FullType.unspecified}) {
    return Timestamp(object).format(format);
  }

  @override
  Iterable<Type> get types => [Timestamp, DateTime];

  @override
  String get wireName => 'Timestamp';
}
