// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i2.SmithySerializer<XmlTimestampsOutput>> serializers = [
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
    final helper = newBuiltValueToStringHelper('XmlTimestampsOutput')
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'normal':
          result.normal = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'dateTime':
          result.dateTime = _i2.TimestampSerializer.dateTime.deserialize(
            serializers,
            value,
          );
        case 'dateTimeOnTarget':
          result.dateTimeOnTarget =
              _i2.TimestampSerializer.dateTime.deserialize(
            serializers,
            value,
          );
        case 'epochSeconds':
          result.epochSeconds =
              _i2.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'epochSecondsOnTarget':
          result.epochSecondsOnTarget =
              _i2.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'httpDate':
          result.httpDate = _i2.TimestampSerializer.httpDate.deserialize(
            serializers,
            value,
          );
        case 'httpDateOnTarget':
          result.httpDateOnTarget =
              _i2.TimestampSerializer.httpDate.deserialize(
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
    XmlTimestampsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'XmlTimestampsOutputResponse',
        _i2.XmlNamespace('https://example.com/'),
      )
    ];
    final XmlTimestampsOutput(
      :normal,
      :dateTime,
      :dateTimeOnTarget,
      :epochSeconds,
      :epochSecondsOnTarget,
      :httpDate,
      :httpDateOnTarget
    ) = object;
    if (normal != null) {
      result$
        ..add(const _i2.XmlElementName('normal'))
        ..add(serializers.serialize(
          normal,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (dateTime != null) {
      result$
        ..add(const _i2.XmlElementName('dateTime'))
        ..add(_i2.TimestampSerializer.dateTime.serialize(
          serializers,
          dateTime,
        ));
    }
    if (dateTimeOnTarget != null) {
      result$
        ..add(const _i2.XmlElementName('dateTimeOnTarget'))
        ..add(_i2.TimestampSerializer.dateTime.serialize(
          serializers,
          dateTimeOnTarget,
        ));
    }
    if (epochSeconds != null) {
      result$
        ..add(const _i2.XmlElementName('epochSeconds'))
        ..add(_i2.TimestampSerializer.epochSeconds.serialize(
          serializers,
          epochSeconds,
        ));
    }
    if (epochSecondsOnTarget != null) {
      result$
        ..add(const _i2.XmlElementName('epochSecondsOnTarget'))
        ..add(_i2.TimestampSerializer.epochSeconds.serialize(
          serializers,
          epochSecondsOnTarget,
        ));
    }
    if (httpDate != null) {
      result$
        ..add(const _i2.XmlElementName('httpDate'))
        ..add(_i2.TimestampSerializer.httpDate.serialize(
          serializers,
          httpDate,
        ));
    }
    if (httpDateOnTarget != null) {
      result$
        ..add(const _i2.XmlElementName('httpDateOnTarget'))
        ..add(_i2.TimestampSerializer.httpDate.serialize(
          serializers,
          httpDateOnTarget,
        ));
    }
    return result$;
  }
}
