// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

/// {@template worker_bee.date_time_serializer}
/// Serializer for [DateTime] which tolerates a `double` count of microseconds.
///
/// built_value's default serializer casts the wire value straight to `int`. On
/// a `postMessage` round-trip the value comes back as a `double` under
/// dart2wasm (JS numbers `dartify()` to `double`, and WASM keeps `int` and
/// `double` distinct), which fails that cast. This coerces the value first so
/// `DateTime` payloads survive worker messages under both web compilers.
/// {@endtemplate}
@internal
class DateTimeSerializer implements PrimitiveSerializer<DateTime> {
  /// {@macro worker_bee.date_time_serializer}
  const DateTimeSerializer();

  @override
  Iterable<Type> get types => [DateTime];

  @override
  String get wireName => 'DateTime';

  @override
  Object serialize(
    Serializers serializers,
    DateTime dateTime, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (!dateTime.isUtc) {
      throw ArgumentError.value(
        dateTime,
        'dateTime',
        'Must be in utc for serialization.',
      );
    }
    return dateTime.microsecondsSinceEpoch;
  }

  @override
  DateTime deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final microsecondsSinceEpoch = (serialized as num).toInt();
    return DateTime.fromMicrosecondsSinceEpoch(
      microsecondsSinceEpoch,
      isUtc: true,
    );
  }
}
