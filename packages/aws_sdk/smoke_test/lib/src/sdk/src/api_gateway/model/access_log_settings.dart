// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? format,
    String? destinationArn,
  }) {
    return _$AccessLogSettings._(
      format: format,
      destinationArn: destinationArn,
    );
  }

  /// Access log settings, including the access log format and access log destination ARN.
  factory AccessLogSettings.build(
      [void Function(AccessLogSettingsBuilder) updates]) = _$AccessLogSettings;

  const AccessLogSettings._();

  static const List<_i2.SmithySerializer<AccessLogSettings>> serializers = [
    AccessLogSettingsRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AccessLogSettingsBuilder b) {}

  /// A single line format of the access logs of data, as specified by selected $context variables. The format must include at least `$context.requestId`.
  String? get format;

  /// The Amazon Resource Name (ARN) of the CloudWatch Logs log group or Kinesis Data Firehose delivery stream to receive access logs. If you specify a Kinesis Data Firehose delivery stream, the stream name must begin with `amazon-apigateway-`.
  String? get destinationArn;
  @override
  List<Object?> get props => [
        format,
        destinationArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccessLogSettings')
      ..add(
        'format',
        format,
      )
      ..add(
        'destinationArn',
        destinationArn,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'destinationArn':
          result.destinationArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'format':
          result.format = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AccessLogSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AccessLogSettings(:destinationArn, :format) = object;
    if (destinationArn != null) {
      result$
        ..add('destinationArn')
        ..add(serializers.serialize(
          destinationArn,
          specifiedType: const FullType(String),
        ));
    }
    if (format != null) {
      result$
        ..add('format')
        ..add(serializers.serialize(
          format,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
