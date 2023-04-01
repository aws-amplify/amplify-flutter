// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_query_v2.query_protocol.model.xml_timestamps_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'xml_timestamps_output.g.dart';

abstract class XmlTimestampsOutput
    with _i1.AWSEquatable<XmlTimestampsOutput>
    implements Built<XmlTimestampsOutput, XmlTimestampsOutputBuilder> {
  factory XmlTimestampsOutput({
    DateTime? normal,
    DateTime? dateTime,
    DateTime? dateTimeOnTarget,
    DateTime? epochSeconds,
    DateTime? epochSecondsOnTarget,
    DateTime? httpDate,
    DateTime? httpDateOnTarget,
  }) {
    return _$XmlTimestampsOutput._(
      normal: normal,
      dateTime: dateTime,
      dateTimeOnTarget: dateTimeOnTarget,
      epochSeconds: epochSeconds,
      epochSecondsOnTarget: epochSecondsOnTarget,
      httpDate: httpDate,
      httpDateOnTarget: httpDateOnTarget,
    );
  }

  factory XmlTimestampsOutput.build(
          [void Function(XmlTimestampsOutputBuilder) updates]) =
      _$XmlTimestampsOutput;

  const XmlTimestampsOutput._();

  /// Constructs a [XmlTimestampsOutput] from a [payload] and [response].
  factory XmlTimestampsOutput.fromResponse(
    XmlTimestampsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    XmlTimestampsOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlTimestampsOutputBuilder b) {}
  DateTime? get normal;
  DateTime? get dateTime;
  DateTime? get dateTimeOnTarget;
  DateTime? get epochSeconds;
  DateTime? get epochSecondsOnTarget;
  DateTime? get httpDate;
  DateTime? get httpDateOnTarget;
  @override
  List<Object?> get props => [
        normal,
        dateTime,
        dateTimeOnTarget,
        epochSeconds,
        epochSecondsOnTarget,
        httpDate,
        httpDateOnTarget,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlTimestampsOutput');
    helper.add(
      'normal',
      normal,
    );
    helper.add(
      'dateTime',
      dateTime,
    );
    helper.add(
      'dateTimeOnTarget',
      dateTimeOnTarget,
    );
    helper.add(
      'epochSeconds',
      epochSeconds,
    );
    helper.add(
      'epochSecondsOnTarget',
      epochSecondsOnTarget,
    );
    helper.add(
      'httpDate',
      httpDate,
    );
    helper.add(
      'httpDateOnTarget',
      httpDateOnTarget,
    );
    return helper.toString();
  }
}

class XmlTimestampsOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<XmlTimestampsOutput> {
  const XmlTimestampsOutputAwsQuerySerializer() : super('XmlTimestampsOutput');

  @override
  Iterable<Type> get types => const [
        XmlTimestampsOutput,
        _$XmlTimestampsOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  XmlTimestampsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlTimestampsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'normal':
          if (value != null) {
            result.normal = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'dateTime':
          if (value != null) {
            result.dateTime = _i2.TimestampSerializer.dateTime.deserialize(
              serializers,
              value,
            );
          }
          break;
        case 'dateTimeOnTarget':
          if (value != null) {
            result.dateTimeOnTarget =
                _i2.TimestampSerializer.dateTime.deserialize(
              serializers,
              value,
            );
          }
          break;
        case 'epochSeconds':
          if (value != null) {
            result.epochSeconds =
                _i2.TimestampSerializer.epochSeconds.deserialize(
              serializers,
              value,
            );
          }
          break;
        case 'epochSecondsOnTarget':
          if (value != null) {
            result.epochSecondsOnTarget =
                _i2.TimestampSerializer.epochSeconds.deserialize(
              serializers,
              value,
            );
          }
          break;
        case 'httpDate':
          if (value != null) {
            result.httpDate = _i2.TimestampSerializer.httpDate.deserialize(
              serializers,
              value,
            );
          }
          break;
        case 'httpDateOnTarget':
          if (value != null) {
            result.httpDateOnTarget =
                _i2.TimestampSerializer.httpDate.deserialize(
              serializers,
              value,
            );
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
    final payload = (object as XmlTimestampsOutput);
    final result = <Object?>[
      const _i2.XmlElementName(
        'XmlTimestampsOutputResponse',
        _i2.XmlNamespace('https://example.com/'),
      )
    ];
    if (payload.normal != null) {
      result
        ..add(const _i2.XmlElementName('normal'))
        ..add(serializers.serialize(
          payload.normal!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.dateTime != null) {
      result
        ..add(const _i2.XmlElementName('dateTime'))
        ..add(_i2.TimestampSerializer.dateTime.serialize(
          serializers,
          payload.dateTime!,
        ));
    }
    if (payload.dateTimeOnTarget != null) {
      result
        ..add(const _i2.XmlElementName('dateTimeOnTarget'))
        ..add(_i2.TimestampSerializer.dateTime.serialize(
          serializers,
          payload.dateTimeOnTarget!,
        ));
    }
    if (payload.epochSeconds != null) {
      result
        ..add(const _i2.XmlElementName('epochSeconds'))
        ..add(_i2.TimestampSerializer.epochSeconds.serialize(
          serializers,
          payload.epochSeconds!,
        ));
    }
    if (payload.epochSecondsOnTarget != null) {
      result
        ..add(const _i2.XmlElementName('epochSecondsOnTarget'))
        ..add(_i2.TimestampSerializer.epochSeconds.serialize(
          serializers,
          payload.epochSecondsOnTarget!,
        ));
    }
    if (payload.httpDate != null) {
      result
        ..add(const _i2.XmlElementName('httpDate'))
        ..add(_i2.TimestampSerializer.httpDate.serialize(
          serializers,
          payload.httpDate!,
        ));
    }
    if (payload.httpDateOnTarget != null) {
      result
        ..add(const _i2.XmlElementName('httpDateOnTarget'))
        ..add(_i2.TimestampSerializer.httpDate.serialize(
          serializers,
          payload.httpDateOnTarget!,
        ));
    }
    return result;
  }
}
