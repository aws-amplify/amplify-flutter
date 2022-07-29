// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'timestamp_format_trait.g.dart';

/// The format to use for serializing/deserializing a timestamp as defined
/// by the [TimestampFormatTrait].
@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.kebab)
enum TimestampFormat {
  /// {@template smithy.timestamp_format_datetime}
  /// Date time as defined by the date-time production in RFC3339 section 5.6
  /// with no UTC offset and optional fractional precision
  /// (for example, 1985-04-12T23:20:50.52Z).
  /// {@endtemplate}
  dateTime,

  /// {@template smithy.timestamp_format_httpdate}
  /// An HTTP date as defined by the IMF-fixdate production in RFC 7231#section-7.1.1.1
  /// (for example, Tue, 29 Apr 2014 18:30:38 GMT). Note that in addition to
  /// the IMF-fixdate format specified in the RFC, implementations MUST also
  /// support optional fractional seconds (for example, Sun, 02 Jan 2000 20:34:56.000 GMT).
  /// {@endtemplate}
  httpDate,

  /// {@template smithy.timestamp_format_epochseconds}
  /// Also known as Unix time, the number of seconds that have elapsed since
  /// 00:00:00 Coordinated Universal Time (UTC), Thursday, 1 January 1970,
  /// with optional fractional precision (for example, 1515531081.1234).
  /// {@endtemplate}
  epochSeconds,

  unknown,
}

/// Defines a custom serialization format for a timestamp.
class TimestampFormatTrait extends StringTrait {
  const TimestampFormatTrait(String value) : super(id, value);

  factory TimestampFormatTrait.fromJson(Object? json) =>
      TimestampFormatTrait(json as String);

  static const id = ShapeId.core('timestampFormat');

  /// Gets the [TimestampFormat] for [value].
  TimestampFormat get format =>
      _$TimestampFormatEnumMap.entries
          .firstWhereOrNull((entry) => entry.value == value)
          ?.key ??
      TimestampFormat.unknown;
}
