// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.in_app_message;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_content.dart'
    as _i3;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/layout.dart'
    as _i4;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;

part 'in_app_message.g.dart';

/// Provides all fields required for building an in-app message.
abstract class InAppMessage
    with _i1.AWSEquatable<InAppMessage>
    implements Built<InAppMessage, InAppMessageBuilder> {
  /// Provides all fields required for building an in-app message.
  factory InAppMessage(
      {_i2.BuiltList<_i3.InAppMessageContent>? content,
      _i2.BuiltMap<String, String>? customConfig,
      _i4.Layout? layout}) {
    return _$InAppMessage._(
        content: content, customConfig: customConfig, layout: layout);
  }

  /// Provides all fields required for building an in-app message.
  factory InAppMessage.build([void Function(InAppMessageBuilder) updates]) =
      _$InAppMessage;

  const InAppMessage._();

  static const List<_i5.SmithySerializer> serializers = [
    _InAppMessageRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InAppMessageBuilder b) {}

  /// In-app message content.
  _i2.BuiltList<_i3.InAppMessageContent>? get content;

  /// Custom config to be sent to SDK.
  _i2.BuiltMap<String, String>? get customConfig;

  /// The layout of the message.
  _i4.Layout? get layout;
  @override
  List<Object?> get props => [content, customConfig, layout];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InAppMessage');
    helper.add('content', content);
    helper.add('customConfig', customConfig);
    helper.add('layout', layout);
    return helper.toString();
  }
}

class _InAppMessageRestJson1Serializer
    extends _i5.StructuredSmithySerializer<InAppMessage> {
  const _InAppMessageRestJson1Serializer() : super('InAppMessage');

  @override
  Iterable<Type> get types => const [InAppMessage, _$InAppMessage];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  InAppMessage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = InAppMessageBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Content':
          if (value != null) {
            result.content.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i2.BuiltList, [FullType(_i3.InAppMessageContent)]))
                as _i2.BuiltList<_i3.InAppMessageContent>));
          }
          break;
        case 'CustomConfig':
          if (value != null) {
            result.customConfig.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i2.BuiltMap, [FullType(String), FullType(String)]))
                as _i2.BuiltMap<String, String>));
          }
          break;
        case 'Layout':
          if (value != null) {
            result.layout = (serializers.deserialize(value,
                specifiedType: const FullType(_i4.Layout)) as _i4.Layout);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as InAppMessage);
    final result = <Object?>[];
    if (payload.content != null) {
      result
        ..add('Content')
        ..add(serializers.serialize(payload.content!,
            specifiedType: const FullType(
                _i2.BuiltList, [FullType(_i3.InAppMessageContent)])));
    }
    if (payload.customConfig != null) {
      result
        ..add('CustomConfig')
        ..add(serializers.serialize(payload.customConfig!,
            specifiedType: const FullType(
                _i2.BuiltMap, [FullType(String), FullType(String)])));
    }
    if (payload.layout != null) {
      result
        ..add('Layout')
        ..add(serializers.serialize(payload.layout!,
            specifiedType: const FullType(_i4.Layout)));
    }
    return result;
  }
}
