// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.access_log_settings; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'access_log_settings.g.dart';

/// Access log settings, including the access log format and access log destination ARN.
abstract class AccessLogSettings
    with _i1.AWSEquatable<AccessLogSettings>
    implements Built<AccessLogSettings, AccessLogSettingsBuilder> {
  /// Access log settings, including the access log format and access log destination ARN.
  factory AccessLogSettings({
    String? destinationArn,
    String? format,
  }) {
    return _$AccessLogSettings._(
      destinationArn: destinationArn,
      format: format,
    );
  }

  /// Access log settings, including the access log format and access log destination ARN.
  factory AccessLogSettings.build(
      [void Function(AccessLogSettingsBuilder) updates]) = _$AccessLogSettings;

  const AccessLogSettings._();

  static const List<_i2.SmithySerializer> serializers = [
    AccessLogSettingsRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AccessLogSettingsBuilder b) {}

  /// The Amazon Resource Name (ARN) of the CloudWatch Logs log group or Kinesis Data Firehose delivery stream to receive access logs. If you specify a Kinesis Data Firehose delivery stream, the stream name must begin with `amazon-apigateway-`.
  String? get destinationArn;

  /// A single line format of the access logs of data, as specified by selected $context variables. The format must include at least `$context.requestId`.
  String? get format;
  @override
  List<Object?> get props => [
        destinationArn,
        format,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccessLogSettings');
    helper.add(
      'destinationArn',
      destinationArn,
    );
    helper.add(
      'format',
      format,
    );
    return helper.toString();
  }
}

class AccessLogSettingsRestJson1Serializer
    extends _i2.StructuredSmithySerializer<AccessLogSettings> {
  const AccessLogSettingsRestJson1Serializer() : super('AccessLogSettings');

  @override
  Iterable<Type> get types => const [
        AccessLogSettings,
        _$AccessLogSettings,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  AccessLogSettings deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessLogSettingsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'destinationArn':
          if (value != null) {
            result.destinationArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'format':
          if (value != null) {
            result.format = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as AccessLogSettings);
    final result = <Object?>[];
    if (payload.destinationArn != null) {
      result
        ..add('destinationArn')
        ..add(serializers.serialize(
          payload.destinationArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.format != null) {
      result
        ..add('format')
        ..add(serializers.serialize(
          payload.format!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
