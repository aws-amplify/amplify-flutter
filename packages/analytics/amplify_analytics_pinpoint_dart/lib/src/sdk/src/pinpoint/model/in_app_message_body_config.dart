// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.model.in_app_message_body_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/alignment.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'in_app_message_body_config.g.dart';

/// Text config for Message Body.
abstract class InAppMessageBodyConfig
    with _i1.AWSEquatable<InAppMessageBodyConfig>
    implements Built<InAppMessageBodyConfig, InAppMessageBodyConfigBuilder> {
  /// Text config for Message Body.
  factory InAppMessageBodyConfig({
    required _i2.Alignment alignment,
    required String body,
    required String textColor,
  }) {
    return _$InAppMessageBodyConfig._(
      alignment: alignment,
      body: body,
      textColor: textColor,
    );
  }

  /// Text config for Message Body.
  factory InAppMessageBodyConfig.build(
          [void Function(InAppMessageBodyConfigBuilder) updates]) =
      _$InAppMessageBodyConfig;

  const InAppMessageBodyConfig._();

  static const List<_i3.SmithySerializer<InAppMessageBodyConfig>> serializers =
      [InAppMessageBodyConfigRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InAppMessageBodyConfigBuilder b) {}

  /// The alignment of the text. Valid values: LEFT, CENTER, RIGHT.
  _i2.Alignment get alignment;

  /// Message Body.
  String get body;

  /// The text color.
  String get textColor;
  @override
  List<Object?> get props => [
        alignment,
        body,
        textColor,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InAppMessageBodyConfig')
      ..add(
        'alignment',
        alignment,
      )
      ..add(
        'body',
        body,
      )
      ..add(
        'textColor',
        textColor,
      );
    return helper.toString();
  }
}

class InAppMessageBodyConfigRestJson1Serializer
    extends _i3.StructuredSmithySerializer<InAppMessageBodyConfig> {
  const InAppMessageBodyConfigRestJson1Serializer()
      : super('InAppMessageBodyConfig');

  @override
  Iterable<Type> get types => const [
        InAppMessageBodyConfig,
        _$InAppMessageBodyConfig,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  InAppMessageBodyConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InAppMessageBodyConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Alignment':
          result.alignment = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Alignment),
          ) as _i2.Alignment);
        case 'Body':
          result.body = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TextColor':
          result.textColor = (serializers.deserialize(
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
    InAppMessageBodyConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InAppMessageBodyConfig(:alignment, :body, :textColor) = object;
    result$.addAll([
      'Alignment',
      serializers.serialize(
        alignment,
        specifiedType: const FullType(_i2.Alignment),
      ),
      'Body',
      serializers.serialize(
        body,
        specifiedType: const FullType(String),
      ),
      'TextColor',
      serializers.serialize(
        textColor,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
