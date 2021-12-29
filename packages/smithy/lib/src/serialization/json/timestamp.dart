import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/smithy.dart';

/// A class which handles serialization/deserialization of [Timestamp] objects
/// using the predefined formats specified by [TimestampSerializationFormat].
class TimestampSerializer extends JsonConverter<Timestamp?, String?>
    implements
        Serializer<Timestamp?, String?>,
        Deserializer<Timestamp?, String?> {
  const TimestampSerializer._(this.format);

  /// The format to use for serialization/deserialization.
  final TimestampSerializationFormat format;

  /// {@macro smithy.timestamp_format_datetime}
  static const dateTime =
      TimestampSerializer._(TimestampSerializationFormat.dateTime);

  /// {@macro smithy.timestamp_format_httpdate}
  static const httpDate =
      TimestampSerializer._(TimestampSerializationFormat.httpDate);

  /// {@macro smithy.timestamp_format_epochseconds}
  static const epochSeconds =
      TimestampSerializer._(TimestampSerializationFormat.epochSeconds);

  @override
  Timestamp? deserialize(String? data) {
    if (data == null) {
      return null;
    }
    return Timestamp.parse(data, format: format);
  }

  @override
  String? serialize(Timestamp? input) {
    if (input == null) {
      return null;
    }
    return input.toJson(format);
  }

  @override
  Timestamp? fromJson(String? json) {
    return deserialize(json);
  }

  @override
  String? toJson(Timestamp? object) {
    return serialize(object);
  }
}

/// A class which handles serialization/deserialization of [Timestamp] objects
/// using the predefined formats specified by [TimestampSerializationFormat].
class TimestampListSerializer extends JsonConverter<List<Timestamp?>?, String?>
    implements
        Serializer<List<Timestamp?>?, String?>,
        Deserializer<List<Timestamp?>?, String?> {
  const TimestampListSerializer._(this.format);

  /// The format to use for serialization/deserialization.
  final TimestampSerializationFormat format;

  /// {@macro smithy.timestamp_format_datetime}
  static const dateTime =
      TimestampListSerializer._(TimestampSerializationFormat.dateTime);

  /// {@macro smithy.timestamp_format_httpdate}
  static const httpDate =
      TimestampListSerializer._(TimestampSerializationFormat.httpDate);

  /// {@macro smithy.timestamp_format_epochseconds}
  static const epochSeconds =
      TimestampListSerializer._(TimestampSerializationFormat.epochSeconds);

  @override
  List<Timestamp>? deserialize(String? data) {
    if (data == null) {
      return null;
    }
    final list = (jsonDecode(data) as List?)?.cast<String>();
    final decoded = list?.map((el) {
      return Timestamp.parse(data, format: format);
    }).toList();
    if (decoded == null) {
      return null;
    }
    return TimestampList(decoded);
  }

  @override
  String? serialize(List<Timestamp?>? input) {
    if (input == null) {
      return null;
    }
    return jsonEncode(input);
  }

  @override
  List<Timestamp>? fromJson(String? json) {
    return deserialize(json);
  }

  @override
  String? toJson(List<Timestamp?>? object) {
    return serialize(object);
  }
}
