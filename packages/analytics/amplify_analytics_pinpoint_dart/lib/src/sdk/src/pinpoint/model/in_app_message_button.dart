// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_analytics_pinpoint_dart.pinpoint.model.in_app_message_button; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/default_button_configuration.dart'
    as _i3;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/override_button_configuration.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'in_app_message_button.g.dart';

/// Button Config for an in-app message.
abstract class InAppMessageButton
    with _i1.AWSEquatable<InAppMessageButton>
    implements Built<InAppMessageButton, InAppMessageButtonBuilder> {
  /// Button Config for an in-app message.
  factory InAppMessageButton({
    _i2.OverrideButtonConfiguration? android,
    _i3.DefaultButtonConfiguration? defaultConfig,
    _i2.OverrideButtonConfiguration? ios,
    _i2.OverrideButtonConfiguration? web,
  }) {
    return _$InAppMessageButton._(
      android: android,
      defaultConfig: defaultConfig,
      ios: ios,
      web: web,
    );
  }

  /// Button Config for an in-app message.
  factory InAppMessageButton.build(
          [void Function(InAppMessageButtonBuilder) updates]) =
      _$InAppMessageButton;

  const InAppMessageButton._();

  static const List<_i4.SmithySerializer<InAppMessageButton>> serializers = [
    InAppMessageButtonRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InAppMessageButtonBuilder b) {}

  /// Default button content.
  _i2.OverrideButtonConfiguration? get android;

  /// Default button content.
  _i3.DefaultButtonConfiguration? get defaultConfig;

  /// Default button content.
  _i2.OverrideButtonConfiguration? get ios;

  /// Default button content.
  _i2.OverrideButtonConfiguration? get web;
  @override
  List<Object?> get props => [
        android,
        defaultConfig,
        ios,
        web,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InAppMessageButton')
      ..add(
        'android',
        android,
      )
      ..add(
        'defaultConfig',
        defaultConfig,
      )
      ..add(
        'ios',
        ios,
      )
      ..add(
        'web',
        web,
      );
    return helper.toString();
  }
}

class InAppMessageButtonRestJson1Serializer
    extends _i4.StructuredSmithySerializer<InAppMessageButton> {
  const InAppMessageButtonRestJson1Serializer() : super('InAppMessageButton');

  @override
  Iterable<Type> get types => const [
        InAppMessageButton,
        _$InAppMessageButton,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  InAppMessageButton deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InAppMessageButtonBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Android':
          result.android.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.OverrideButtonConfiguration),
          ) as _i2.OverrideButtonConfiguration));
        case 'DefaultConfig':
          result.defaultConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.DefaultButtonConfiguration),
          ) as _i3.DefaultButtonConfiguration));
        case 'IOS':
          result.ios.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.OverrideButtonConfiguration),
          ) as _i2.OverrideButtonConfiguration));
        case 'Web':
          result.web.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.OverrideButtonConfiguration),
          ) as _i2.OverrideButtonConfiguration));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InAppMessageButton object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InAppMessageButton(:android, :defaultConfig, :ios, :web) = object;
    if (android != null) {
      result$
        ..add('Android')
        ..add(serializers.serialize(
          android,
          specifiedType: const FullType(_i2.OverrideButtonConfiguration),
        ));
    }
    if (defaultConfig != null) {
      result$
        ..add('DefaultConfig')
        ..add(serializers.serialize(
          defaultConfig,
          specifiedType: const FullType(_i3.DefaultButtonConfiguration),
        ));
    }
    if (ios != null) {
      result$
        ..add('IOS')
        ..add(serializers.serialize(
          ios,
          specifiedType: const FullType(_i2.OverrideButtonConfiguration),
        ));
    }
    if (web != null) {
      result$
        ..add('Web')
        ..add(serializers.serialize(
          web,
          specifiedType: const FullType(_i2.OverrideButtonConfiguration),
        ));
    }
    return result$;
  }
}
