// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_analytics_pinpoint_dart.pinpoint.model.default_button_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
  factory DefaultButtonConfiguration({
    String? backgroundColor,
    int? borderRadius,
    required _i2.ButtonAction buttonAction,
    String? link,
    required String text,
    String? textColor,
  }) {
    return _$DefaultButtonConfiguration._(
      backgroundColor: backgroundColor,
      borderRadius: borderRadius,
      buttonAction: buttonAction,
      link: link,
      text: text,
      textColor: textColor,
    );
  }

  /// Default button configuration.
  factory DefaultButtonConfiguration.build(
          [void Function(DefaultButtonConfigurationBuilder) updates]) =
      _$DefaultButtonConfiguration;

  const DefaultButtonConfiguration._();

  static const List<_i3.SmithySerializer<DefaultButtonConfiguration>>
      serializers = [DefaultButtonConfigurationRestJson1Serializer()];

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
  List<Object?> get props => [
        backgroundColor,
        borderRadius,
        buttonAction,
        link,
        text,
        textColor,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DefaultButtonConfiguration')
      ..add(
        'backgroundColor',
        backgroundColor,
      )
      ..add(
        'borderRadius',
        borderRadius,
      )
      ..add(
        'buttonAction',
        buttonAction,
      )
      ..add(
        'link',
        link,
      )
      ..add(
        'text',
        text,
      )
      ..add(
        'textColor',
        textColor,
      );
    return helper.toString();
  }
}

class DefaultButtonConfigurationRestJson1Serializer
    extends _i3.StructuredSmithySerializer<DefaultButtonConfiguration> {
  const DefaultButtonConfigurationRestJson1Serializer()
      : super('DefaultButtonConfiguration');

  @override
  Iterable<Type> get types => const [
        DefaultButtonConfiguration,
        _$DefaultButtonConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DefaultButtonConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DefaultButtonConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'BackgroundColor':
          result.backgroundColor = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'BorderRadius':
          result.borderRadius = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ButtonAction':
          result.buttonAction = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ButtonAction),
          ) as _i2.ButtonAction);
        case 'Link':
          result.link = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Text':
          result.text = (serializers.deserialize(
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
    DefaultButtonConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DefaultButtonConfiguration(
      :backgroundColor,
      :borderRadius,
      :buttonAction,
      :link,
      :text,
      :textColor
    ) = object;
    result$.addAll([
      'ButtonAction',
      serializers.serialize(
        buttonAction,
        specifiedType: const FullType(_i2.ButtonAction),
      ),
      'Text',
      serializers.serialize(
        text,
        specifiedType: const FullType(String),
      ),
    ]);
    if (backgroundColor != null) {
      result$
        ..add('BackgroundColor')
        ..add(serializers.serialize(
          backgroundColor,
          specifiedType: const FullType(String),
        ));
    }
    if (borderRadius != null) {
      result$
        ..add('BorderRadius')
        ..add(serializers.serialize(
          borderRadius,
          specifiedType: const FullType(int),
        ));
    }
    if (link != null) {
      result$
        ..add('Link')
        ..add(serializers.serialize(
          link,
          specifiedType: const FullType(String),
        ));
    }
    if (textColor != null) {
      result$
        ..add('TextColor')
        ..add(serializers.serialize(
          textColor,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
