// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.in_app_message_header_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/alignment.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'in_app_message_header_config.g.dart';

/// Text config for Message Header.
abstract class InAppMessageHeaderConfig
    with _i1.AWSEquatable<InAppMessageHeaderConfig>
    implements
        Built<InAppMessageHeaderConfig, InAppMessageHeaderConfigBuilder> {
  /// Text config for Message Header.
  factory InAppMessageHeaderConfig({
    required _i2.Alignment alignment,
    required String header,
    required String textColor,
  }) {
    return _$InAppMessageHeaderConfig._(
      alignment: alignment,
      header: header,
      textColor: textColor,
    );
  }

  /// Text config for Message Header.
  factory InAppMessageHeaderConfig.build(
          [void Function(InAppMessageHeaderConfigBuilder) updates]) =
      _$InAppMessageHeaderConfig;

  const InAppMessageHeaderConfig._();

  static const List<_i3.SmithySerializer> serializers = [
    InAppMessageHeaderConfigRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InAppMessageHeaderConfigBuilder b) {}

  /// The alignment of the text. Valid values: LEFT, CENTER, RIGHT.
  _i2.Alignment get alignment;

  /// Message Header.
  String get header;

  /// The text color.
  String get textColor;
  @override
  List<Object?> get props => [
        alignment,
        header,
        textColor,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InAppMessageHeaderConfig');
    helper.add(
      'alignment',
      alignment,
    );
    helper.add(
      'header',
      header,
    );
    helper.add(
      'textColor',
      textColor,
    );
    return helper.toString();
  }
}

class InAppMessageHeaderConfigRestJson1Serializer
    extends _i3.StructuredSmithySerializer<InAppMessageHeaderConfig> {
  const InAppMessageHeaderConfigRestJson1Serializer()
      : super('InAppMessageHeaderConfig');

  @override
  Iterable<Type> get types => const [
        InAppMessageHeaderConfig,
        _$InAppMessageHeaderConfig,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  InAppMessageHeaderConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InAppMessageHeaderConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Alignment':
          result.alignment = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.Alignment),
          ) as _i2.Alignment);
          break;
        case 'Header':
          result.header = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TextColor':
          result.textColor = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as InAppMessageHeaderConfig);
    final result = <Object?>[
      'Alignment',
      serializers.serialize(
        payload.alignment,
        specifiedType: const FullType(_i2.Alignment),
      ),
      'Header',
      serializers.serialize(
        payload.header,
        specifiedType: const FullType(String),
      ),
      'TextColor',
      serializers.serialize(
        payload.textColor,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
