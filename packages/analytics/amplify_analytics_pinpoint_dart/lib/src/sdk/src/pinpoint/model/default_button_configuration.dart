// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.default_button_configuration;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/button_action.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'default_button_configuration.g.dart';

/// Default button configuration.
abstract class DefaultButtonConfiguration
    with _i1.AWSEquatable<DefaultButtonConfiguration>
    implements
        Built<DefaultButtonConfiguration, DefaultButtonConfigurationBuilder> {
  /// Default button configuration.
  factory DefaultButtonConfiguration(
      {String? backgroundColor,
      int? borderRadius,
      required _i2.ButtonAction buttonAction,
      String? link,
      required String text,
      String? textColor}) {
    return _$DefaultButtonConfiguration._(
        backgroundColor: backgroundColor,
        borderRadius: borderRadius,
        buttonAction: buttonAction,
        link: link,
        text: text,
        textColor: textColor);
  }

  /// Default button configuration.
  factory DefaultButtonConfiguration.build(
          [void Function(DefaultButtonConfigurationBuilder) updates]) =
      _$DefaultButtonConfiguration;

  const DefaultButtonConfiguration._();

  static const List<_i3.SmithySerializer> serializers = [
    _DefaultButtonConfigurationRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DefaultButtonConfigurationBuilder b) {}

  /// The background color of the button.
  String? get backgroundColor;

  /// The border radius of the button.
  int? get borderRadius;

  /// Action triggered by the button.
  _i2.ButtonAction get buttonAction;

  /// Button destination.
  String? get link;

  /// Button text.
  String get text;

  /// The text color of the button.
  String? get textColor;
  @override
  List<Object?> get props =>
      [backgroundColor, borderRadius, buttonAction, link, text, textColor];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DefaultButtonConfiguration');
    helper.add('backgroundColor', backgroundColor);
    helper.add('borderRadius', borderRadius);
    helper.add('buttonAction', buttonAction);
    helper.add('link', link);
    helper.add('text', text);
    helper.add('textColor', textColor);
    return helper.toString();
  }
}

class _DefaultButtonConfigurationRestJson1Serializer
    extends _i3.StructuredSmithySerializer<DefaultButtonConfiguration> {
  const _DefaultButtonConfigurationRestJson1Serializer()
      : super('DefaultButtonConfiguration');

  @override
  Iterable<Type> get types =>
      const [DefaultButtonConfiguration, _$DefaultButtonConfiguration];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  DefaultButtonConfiguration deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = DefaultButtonConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'BackgroundColor':
          if (value != null) {
            result.backgroundColor = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'BorderRadius':
          if (value != null) {
            result.borderRadius = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'ButtonAction':
          result.buttonAction = (serializers.deserialize(value!,
                  specifiedType: const FullType(_i2.ButtonAction))
              as _i2.ButtonAction);
          break;
        case 'Link':
          if (value != null) {
            result.link = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Text':
          result.text = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'TextColor':
          if (value != null) {
            result.textColor = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as DefaultButtonConfiguration);
    final result = <Object?>[
      'ButtonAction',
      serializers.serialize(payload.buttonAction,
          specifiedType: const FullType(_i2.ButtonAction)),
      'Text',
      serializers.serialize(payload.text, specifiedType: const FullType(String))
    ];
    if (payload.backgroundColor != null) {
      result
        ..add('BackgroundColor')
        ..add(serializers.serialize(payload.backgroundColor!,
            specifiedType: const FullType(String)));
    }
    if (payload.borderRadius != null) {
      result
        ..add('BorderRadius')
        ..add(serializers.serialize(payload.borderRadius!,
            specifiedType: const FullType(int)));
    }
    if (payload.link != null) {
      result
        ..add('Link')
        ..add(serializers.serialize(payload.link!,
            specifiedType: const FullType(String)));
    }
    if (payload.textColor != null) {
      result
        ..add('TextColor')
        ..add(serializers.serialize(payload.textColor!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
