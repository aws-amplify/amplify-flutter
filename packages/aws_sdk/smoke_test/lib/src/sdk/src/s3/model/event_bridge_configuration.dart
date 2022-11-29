// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.event_bridge_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'event_bridge_configuration.g.dart';

/// A container for specifying the configuration for Amazon EventBridge.
abstract class EventBridgeConfiguration
    with _i1.AWSEquatable<EventBridgeConfiguration>
    implements
        Built<EventBridgeConfiguration, EventBridgeConfigurationBuilder>,
        _i2.EmptyPayload {
  /// A container for specifying the configuration for Amazon EventBridge.
  factory EventBridgeConfiguration() {
    return _$EventBridgeConfiguration._();
  }

  /// A container for specifying the configuration for Amazon EventBridge.
  factory EventBridgeConfiguration.build(
          [void Function(EventBridgeConfigurationBuilder) updates]) =
      _$EventBridgeConfiguration;

  const EventBridgeConfiguration._();

  static const List<_i2.SmithySerializer> serializers = [
    EventBridgeConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EventBridgeConfigurationBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EventBridgeConfiguration');
    return helper.toString();
  }
}

class EventBridgeConfigurationRestXmlSerializer
    extends _i2.StructuredSmithySerializer<EventBridgeConfiguration> {
  const EventBridgeConfigurationRestXmlSerializer()
      : super('EventBridgeConfiguration');

  @override
  Iterable<Type> get types => const [
        EventBridgeConfiguration,
        _$EventBridgeConfiguration,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  EventBridgeConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return EventBridgeConfigurationBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i2.XmlElementName(
        'EventBridgeConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
