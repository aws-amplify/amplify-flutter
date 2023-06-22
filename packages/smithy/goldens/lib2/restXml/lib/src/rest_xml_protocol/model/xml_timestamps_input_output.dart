// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v2.rest_xml_protocol.model.xml_timestamps_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'xml_timestamps_input_output.g.dart';

abstract class XmlTimestampsInputOutput
    with
        _i1.HttpInput<XmlTimestampsInputOutput>,
        _i2.AWSEquatable<XmlTimestampsInputOutput>
    implements
        Built<XmlTimestampsInputOutput, XmlTimestampsInputOutputBuilder> {
  factory XmlTimestampsInputOutput({
    DateTime? normal,
    DateTime? dateTime,
    DateTime? dateTimeOnTarget,
    DateTime? epochSeconds,
    DateTime? epochSecondsOnTarget,
    DateTime? httpDate,
    DateTime? httpDateOnTarget,
  }) {
    return _$XmlTimestampsInputOutput._(
      normal: normal,
      dateTime: dateTime,
      dateTimeOnTarget: dateTimeOnTarget,
      epochSeconds: epochSeconds,
      epochSecondsOnTarget: epochSecondsOnTarget,
      httpDate: httpDate,
      httpDateOnTarget: httpDateOnTarget,
    );
  }

  factory XmlTimestampsInputOutput.build(
          [void Function(XmlTimestampsInputOutputBuilder) updates]) =
      _$XmlTimestampsInputOutput;

  const XmlTimestampsInputOutput._();

  factory XmlTimestampsInputOutput.fromRequest(
    XmlTimestampsInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [XmlTimestampsInputOutput] from a [payload] and [response].
  factory XmlTimestampsInputOutput.fromResponse(
    XmlTimestampsInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer<XmlTimestampsInputOutput>>
      serializers = [XmlTimestampsInputOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlTimestampsInputOutputBuilder b) {}
  DateTime? get normal;
  DateTime? get dateTime;
  DateTime? get dateTimeOnTarget;
  DateTime? get epochSeconds;
  DateTime? get epochSecondsOnTarget;
  DateTime? get httpDate;
  DateTime? get httpDateOnTarget;
  @override
  XmlTimestampsInputOutput getPayload() => this;
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
    final helper = newBuiltValueToStringHelper('XmlTimestampsInputOutput')
      ..add(
        'normal',
        normal,
      )
      ..add(
        'dateTime',
        dateTime,
      )
      ..add(
        'dateTimeOnTarget',
        dateTimeOnTarget,
      )
      ..add(
        'epochSeconds',
        epochSeconds,
      )
      ..add(
        'epochSecondsOnTarget',
        epochSecondsOnTarget,
      )
      ..add(
        'httpDate',
        httpDate,
      )
      ..add(
        'httpDateOnTarget',
        httpDateOnTarget,
      );
    return helper.toString();
  }
}

class XmlTimestampsInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<XmlTimestampsInputOutput> {
  const XmlTimestampsInputOutputRestXmlSerializer()
      : super('XmlTimestampsInputOutput');

  @override
  Iterable<Type> get types => const [
        XmlTimestampsInputOutput,
        _$XmlTimestampsInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  XmlTimestampsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlTimestampsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dateTime':
          result.dateTime = _i1.TimestampSerializer.dateTime.deserialize(
            serializers,
            value,
          );
        case 'dateTimeOnTarget':
          result.dateTimeOnTarget =
              _i1.TimestampSerializer.dateTime.deserialize(
            serializers,
            value,
          );
        case 'epochSeconds':
          result.epochSeconds =
              _i1.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'epochSecondsOnTarget':
          result.epochSecondsOnTarget =
              _i1.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'httpDate':
          result.httpDate = _i1.TimestampSerializer.httpDate.deserialize(
            serializers,
            value,
          );
        case 'httpDateOnTarget':
          result.httpDateOnTarget =
              _i1.TimestampSerializer.httpDate.deserialize(
            serializers,
            value,
          );
        case 'normal':
          result.normal = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlTimestampsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName('XmlTimestampsInputOutput')
    ];
    final XmlTimestampsInputOutput(
      :dateTime,
      :dateTimeOnTarget,
      :epochSeconds,
      :epochSecondsOnTarget,
      :httpDate,
      :httpDateOnTarget,
      :normal
    ) = object;
    if (dateTime != null) {
      result$
        ..add(const _i1.XmlElementName('dateTime'))
        ..add(_i1.TimestampSerializer.dateTime.serialize(
          serializers,
          dateTime,
        ));
    }
    if (dateTimeOnTarget != null) {
      result$
        ..add(const _i1.XmlElementName('dateTimeOnTarget'))
        ..add(_i1.TimestampSerializer.dateTime.serialize(
          serializers,
          dateTimeOnTarget,
        ));
    }
    if (epochSeconds != null) {
      result$
        ..add(const _i1.XmlElementName('epochSeconds'))
        ..add(_i1.TimestampSerializer.epochSeconds.serialize(
          serializers,
          epochSeconds,
        ));
    }
    if (epochSecondsOnTarget != null) {
      result$
        ..add(const _i1.XmlElementName('epochSecondsOnTarget'))
        ..add(_i1.TimestampSerializer.epochSeconds.serialize(
          serializers,
          epochSecondsOnTarget,
        ));
    }
    if (httpDate != null) {
      result$
        ..add(const _i1.XmlElementName('httpDate'))
        ..add(_i1.TimestampSerializer.httpDate.serialize(
          serializers,
          httpDate,
        ));
    }
    if (httpDateOnTarget != null) {
      result$
        ..add(const _i1.XmlElementName('httpDateOnTarget'))
        ..add(_i1.TimestampSerializer.httpDate.serialize(
          serializers,
          httpDateOnTarget,
        ));
    }
    if (normal != null) {
      result$
        ..add(const _i1.XmlElementName('normal'))
        ..add(serializers.serialize(
          normal,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
