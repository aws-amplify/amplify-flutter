// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v1.rest_xml_protocol.model.http_request_with_labels_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'http_request_with_labels_input.g.dart';

abstract class HttpRequestWithLabelsInput
    with
        _i1.HttpInput<HttpRequestWithLabelsInputPayload>,
        _i2.AWSEquatable<HttpRequestWithLabelsInput>
    implements
        Built<HttpRequestWithLabelsInput, HttpRequestWithLabelsInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<HttpRequestWithLabelsInputPayload> {
  factory HttpRequestWithLabelsInput({
    required String string,
    int? short,
    int? integer,
    _i3.Int64? long,
    double? float,
    double? double_,
    bool? boolean,
    required DateTime timestamp,
  }) {
    short ??= 0;
    integer ??= 0;
    long ??= _i3.Int64.ZERO;
    float ??= 0;
    double_ ??= 0;
    boolean ??= false;
    return _$HttpRequestWithLabelsInput._(
      string: string,
      short: short,
      integer: integer,
      long: long,
      float: float,
      double_: double_,
      boolean: boolean,
      timestamp: timestamp,
    );
  }

  factory HttpRequestWithLabelsInput.build(
          [void Function(HttpRequestWithLabelsInputBuilder) updates]) =
      _$HttpRequestWithLabelsInput;

  const HttpRequestWithLabelsInput._();

  factory HttpRequestWithLabelsInput.fromRequest(
    HttpRequestWithLabelsInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      HttpRequestWithLabelsInput.build((b) {
        if (labels['string'] != null) {
          b.string = labels['string']!;
        }
        if (labels['short'] != null) {
          b.short = int.parse(labels['short']!);
        }
        if (labels['integer'] != null) {
          b.integer = int.parse(labels['integer']!);
        }
        if (labels['long'] != null) {
          b.long = _i3.Int64.parseInt(labels['long']!);
        }
        if (labels['float'] != null) {
          b.float = double.parse(labels['float']!);
        }
        if (labels['double_'] != null) {
          b.double_ = double.parse(labels['double_']!);
        }
        if (labels['boolean'] != null) {
          b.boolean = labels['boolean']! == 'true';
        }
        if (labels['timestamp'] != null) {
          b.timestamp = _i1.Timestamp.parse(
            labels['timestamp']!,
            format: _i1.TimestampFormat.dateTime,
          ).asDateTime;
        }
      });

  static const List<_i1.SmithySerializer<HttpRequestWithLabelsInputPayload>>
      serializers = [HttpRequestWithLabelsInputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithLabelsInputBuilder b) {
    b.short = 0;
    b.integer = 0;
    b.long = _i3.Int64.ZERO;
    b.float = 0;
    b.double_ = 0;
    b.boolean = false;
  }

  String get string;
  int get short;
  int get integer;
  _i3.Int64 get long;
  double get float;
  double get double_;

  /// Serialized in the path as true or false.
  bool get boolean;

  /// Note that this member has no format, so it's serialized as an RFC 3399 date-time.
  DateTime get timestamp;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'string':
        return string;
      case 'short':
        return short.toString();
      case 'integer':
        return integer.toString();
      case 'long':
        return long.toString();
      case 'float':
        return float.toString();
      case 'double':
        return double_.toString();
      case 'boolean':
        return boolean.toString();
      case 'timestamp':
        return _i1.Timestamp(timestamp)
            .format(_i1.TimestampFormat.dateTime)
            .toString();
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  HttpRequestWithLabelsInputPayload getPayload() =>
      HttpRequestWithLabelsInputPayload();
  @override
  List<Object?> get props => [
        string,
        short,
        integer,
        long,
        float,
        double_,
        boolean,
        timestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HttpRequestWithLabelsInput')
      ..add(
        'string',
        string,
      )
      ..add(
        'short',
        short,
      )
      ..add(
        'integer',
        integer,
      )
      ..add(
        'long',
        long,
      )
      ..add(
        'float',
        float,
      )
      ..add(
        'double_',
        double_,
      )
      ..add(
        'boolean',
        boolean,
      )
      ..add(
        'timestamp',
        timestamp,
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class HttpRequestWithLabelsInputPayload
    with
        _i2.AWSEquatable<HttpRequestWithLabelsInputPayload>
    implements
        Built<HttpRequestWithLabelsInputPayload,
            HttpRequestWithLabelsInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory HttpRequestWithLabelsInputPayload(
          [void Function(HttpRequestWithLabelsInputPayloadBuilder) updates]) =
      _$HttpRequestWithLabelsInputPayload;

  const HttpRequestWithLabelsInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithLabelsInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpRequestWithLabelsInputPayload');
    return helper.toString();
  }
}

class HttpRequestWithLabelsInputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<HttpRequestWithLabelsInputPayload> {
  const HttpRequestWithLabelsInputRestXmlSerializer()
      : super('HttpRequestWithLabelsInput');

  @override
  Iterable<Type> get types => const [
        HttpRequestWithLabelsInput,
        _$HttpRequestWithLabelsInput,
        HttpRequestWithLabelsInputPayload,
        _$HttpRequestWithLabelsInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  HttpRequestWithLabelsInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return HttpRequestWithLabelsInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    HttpRequestWithLabelsInputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName('HttpRequestWithLabelsInput')
    ];

    return result$;
  }
}
