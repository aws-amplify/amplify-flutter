// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_analytics_pinpoint_dart.pinpoint.model.override_button_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/button_action.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'override_button_configuration.g.dart';

/// Override button configuration.
abstract class OverrideButtonConfiguration
    with _i1.AWSEquatable<OverrideButtonConfiguration>
    implements
        Built<OverrideButtonConfiguration, OverrideButtonConfigurationBuilder> {
  /// Override button configuration.
  factory OverrideButtonConfiguration({
    required _i2.ButtonAction buttonAction,
    String? link,
  }) {
    return _$OverrideButtonConfiguration._(
      buttonAction: buttonAction,
      link: link,
    );
  }

  /// Override button configuration.
  factory OverrideButtonConfiguration.build(
          [void Function(OverrideButtonConfigurationBuilder) updates]) =
      _$OverrideButtonConfiguration;

  const OverrideButtonConfiguration._();

  static const List<_i3.SmithySerializer<OverrideButtonConfiguration>>
      serializers = [OverrideButtonConfigurationRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OverrideButtonConfigurationBuilder b) {}

  /// Action triggered by the button.
  _i2.ButtonAction get buttonAction;

  /// Button destination.
  String? get link;
  @override
  List<Object?> get props => [
        buttonAction,
        link,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OverrideButtonConfiguration')
      ..add(
        'buttonAction',
        buttonAction,
      )
      ..add(
        'link',
        link,
      );
    return helper.toString();
  }
}

class OverrideButtonConfigurationRestJson1Serializer
    extends _i3.StructuredSmithySerializer<OverrideButtonConfiguration> {
  const OverrideButtonConfigurationRestJson1Serializer()
      : super('OverrideButtonConfiguration');

  @override
  Iterable<Type> get types => const [
        OverrideButtonConfiguration,
        _$OverrideButtonConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  OverrideButtonConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OverrideButtonConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    OverrideButtonConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final OverrideButtonConfiguration(:buttonAction, :link) = object;
    result$.addAll([
      'ButtonAction',
      serializers.serialize(
        buttonAction,
        specifiedType: const FullType(_i2.ButtonAction),
      ),
    ]);
    if (link != null) {
      result$
        ..add('Link')
        ..add(serializers.serialize(
          link,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
