// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_xml_v1.rest_xml_protocol.model.http_request_with_labels_and_timestamp_format_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'http_request_with_labels_and_timestamp_format_input.g.dart';

abstract class HttpRequestWithLabelsAndTimestampFormatInput
    with
        _i1.HttpInput<HttpRequestWithLabelsAndTimestampFormatInputPayload>,
        _i2.AWSEquatable<HttpRequestWithLabelsAndTimestampFormatInput>
    implements
        Built<HttpRequestWithLabelsAndTimestampFormatInput,
            HttpRequestWithLabelsAndTimestampFormatInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<HttpRequestWithLabelsAndTimestampFormatInputPayload> {
  factory HttpRequestWithLabelsAndTimestampFormatInput(
      {required DateTime defaultFormat,
      required DateTime memberDateTime,
      required DateTime memberEpochSeconds,
      required DateTime memberHttpDate,
      required DateTime targetDateTime,
      required DateTime targetEpochSeconds,
      required DateTime targetHttpDate}) {
    return _$HttpRequestWithLabelsAndTimestampFormatInput._(
        defaultFormat: defaultFormat,
        memberDateTime: memberDateTime,
        memberEpochSeconds: memberEpochSeconds,
        memberHttpDate: memberHttpDate,
        targetDateTime: targetDateTime,
        targetEpochSeconds: targetEpochSeconds,
        targetHttpDate: targetHttpDate);
  }

  factory HttpRequestWithLabelsAndTimestampFormatInput.build(
      [void Function(HttpRequestWithLabelsAndTimestampFormatInputBuilder)
          updates]) = _$HttpRequestWithLabelsAndTimestampFormatInput;

  const HttpRequestWithLabelsAndTimestampFormatInput._();

  factory HttpRequestWithLabelsAndTimestampFormatInput.fromRequest(
          HttpRequestWithLabelsAndTimestampFormatInputPayload payload,
          _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      HttpRequestWithLabelsAndTimestampFormatInput.build((b) {
        if (labels['memberEpochSeconds'] != null) {
          b.memberEpochSeconds = _i1.Timestamp.parse(
                  int.parse(labels['memberEpochSeconds']!),
                  format: _i1.TimestampFormat.epochSeconds)
              .asDateTime;
        }
        if (labels['memberHttpDate'] != null) {
          b.memberHttpDate = _i1.Timestamp.parse(labels['memberHttpDate']!,
                  format: _i1.TimestampFormat.httpDate)
              .asDateTime;
        }
        if (labels['memberDateTime'] != null) {
          b.memberDateTime = _i1.Timestamp.parse(labels['memberDateTime']!,
                  format: _i1.TimestampFormat.dateTime)
              .asDateTime;
        }
        if (labels['defaultFormat'] != null) {
          b.defaultFormat = _i1.Timestamp.parse(labels['defaultFormat']!,
                  format: _i1.TimestampFormat.dateTime)
              .asDateTime;
        }
        if (labels['targetEpochSeconds'] != null) {
          b.targetEpochSeconds = _i1.Timestamp.parse(
                  int.parse(labels['targetEpochSeconds']!),
                  format: _i1.TimestampFormat.epochSeconds)
              .asDateTime;
        }
        if (labels['targetHttpDate'] != null) {
          b.targetHttpDate = _i1.Timestamp.parse(labels['targetHttpDate']!,
                  format: _i1.TimestampFormat.httpDate)
              .asDateTime;
        }
        if (labels['targetDateTime'] != null) {
          b.targetDateTime = _i1.Timestamp.parse(labels['targetDateTime']!,
                  format: _i1.TimestampFormat.dateTime)
              .asDateTime;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    HttpRequestWithLabelsAndTimestampFormatInputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithLabelsAndTimestampFormatInputBuilder b) {}
  DateTime get defaultFormat;
  DateTime get memberDateTime;
  DateTime get memberEpochSeconds;
  DateTime get memberHttpDate;
  DateTime get targetDateTime;
  DateTime get targetEpochSeconds;
  DateTime get targetHttpDate;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'memberEpochSeconds':
        return _i1.Timestamp(memberEpochSeconds)
            .format(_i1.TimestampFormat.epochSeconds)
            .toString();
      case 'memberHttpDate':
        return _i1.Timestamp(memberHttpDate)
            .format(_i1.TimestampFormat.httpDate)
            .toString();
      case 'memberDateTime':
        return _i1.Timestamp(memberDateTime)
            .format(_i1.TimestampFormat.dateTime)
            .toString();
      case 'defaultFormat':
        return _i1.Timestamp(defaultFormat)
            .format(_i1.TimestampFormat.dateTime)
            .toString();
      case 'targetEpochSeconds':
        return _i1.Timestamp(targetEpochSeconds)
            .format(_i1.TimestampFormat.epochSeconds)
            .toString();
      case 'targetHttpDate':
        return _i1.Timestamp(targetHttpDate)
            .format(_i1.TimestampFormat.httpDate)
            .toString();
      case 'targetDateTime':
        return _i1.Timestamp(targetDateTime)
            .format(_i1.TimestampFormat.dateTime)
            .toString();
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  HttpRequestWithLabelsAndTimestampFormatInputPayload getPayload() =>
      HttpRequestWithLabelsAndTimestampFormatInputPayload();
  @override
  List<Object?> get props => [
        defaultFormat,
        memberDateTime,
        memberEpochSeconds,
        memberHttpDate,
        targetDateTime,
        targetEpochSeconds,
        targetHttpDate
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'HttpRequestWithLabelsAndTimestampFormatInput');
    helper.add('defaultFormat', defaultFormat);
    helper.add('memberDateTime', memberDateTime);
    helper.add('memberEpochSeconds', memberEpochSeconds);
    helper.add('memberHttpDate', memberHttpDate);
    helper.add('targetDateTime', targetDateTime);
    helper.add('targetEpochSeconds', targetEpochSeconds);
    helper.add('targetHttpDate', targetHttpDate);
    return helper.toString();
  }
}

@_i3.internal
abstract class HttpRequestWithLabelsAndTimestampFormatInputPayload
    with
        _i2.AWSEquatable<HttpRequestWithLabelsAndTimestampFormatInputPayload>
    implements
        Built<HttpRequestWithLabelsAndTimestampFormatInputPayload,
            HttpRequestWithLabelsAndTimestampFormatInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory HttpRequestWithLabelsAndTimestampFormatInputPayload(
      [void Function(HttpRequestWithLabelsAndTimestampFormatInputPayloadBuilder)
          updates]) = _$HttpRequestWithLabelsAndTimestampFormatInputPayload;

  const HttpRequestWithLabelsAndTimestampFormatInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      HttpRequestWithLabelsAndTimestampFormatInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'HttpRequestWithLabelsAndTimestampFormatInputPayload');
    return helper.toString();
  }
}

class HttpRequestWithLabelsAndTimestampFormatInputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<
        HttpRequestWithLabelsAndTimestampFormatInputPayload> {
  const HttpRequestWithLabelsAndTimestampFormatInputRestXmlSerializer()
      : super('HttpRequestWithLabelsAndTimestampFormatInput');

  @override
  Iterable<Type> get types => const [
        HttpRequestWithLabelsAndTimestampFormatInput,
        _$HttpRequestWithLabelsAndTimestampFormatInput,
        HttpRequestWithLabelsAndTimestampFormatInputPayload,
        _$HttpRequestWithLabelsAndTimestampFormatInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  HttpRequestWithLabelsAndTimestampFormatInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return HttpRequestWithLabelsAndTimestampFormatInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      const _i1.XmlElementName('HttpRequestWithLabelsAndTimestampFormatInput')
    ];
    return result;
  }
}
