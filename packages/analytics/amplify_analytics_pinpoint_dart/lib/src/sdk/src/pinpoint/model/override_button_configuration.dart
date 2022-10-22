// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.override_button_configuration;

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
  factory OverrideButtonConfiguration(
      {required _i2.ButtonAction buttonAction, String? link}) {
    return _$OverrideButtonConfiguration._(
        buttonAction: buttonAction, link: link);
  }

  /// Override button configuration.
  factory OverrideButtonConfiguration.build(
          [void Function(OverrideButtonConfigurationBuilder) updates]) =
      _$OverrideButtonConfiguration;

  const OverrideButtonConfiguration._();

  static const List<_i3.SmithySerializer> serializers = [
    _OverrideButtonConfigurationRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OverrideButtonConfigurationBuilder b) {}

  /// Action triggered by the button.
  _i2.ButtonAction get buttonAction;

  /// Button destination.
  String? get link;
  @override
  List<Object?> get props => [buttonAction, link];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OverrideButtonConfiguration');
    helper.add('buttonAction', buttonAction);
    helper.add('link', link);
    return helper.toString();
  }
}

class _OverrideButtonConfigurationRestJson1Serializer
    extends _i3.StructuredSmithySerializer<OverrideButtonConfiguration> {
  const _OverrideButtonConfigurationRestJson1Serializer()
      : super('OverrideButtonConfiguration');

  @override
  Iterable<Type> get types =>
      const [OverrideButtonConfiguration, _$OverrideButtonConfiguration];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  OverrideButtonConfiguration deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = OverrideButtonConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as OverrideButtonConfiguration);
    final result = <Object?>[
      'ButtonAction',
      serializers.serialize(payload.buttonAction,
          specifiedType: const FullType(_i2.ButtonAction))
    ];
    if (payload.link != null) {
      result
        ..add('Link')
        ..add(serializers.serialize(payload.link!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
