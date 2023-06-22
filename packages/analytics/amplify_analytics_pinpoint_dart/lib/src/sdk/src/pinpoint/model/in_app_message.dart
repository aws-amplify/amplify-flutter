// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_analytics_pinpoint_dart.pinpoint.model.in_app_message; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_content.dart'
    as _i2;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/layout.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;

part 'in_app_message.g.dart';

/// Provides all fields required for building an in-app message.
abstract class InAppMessage
    with _i1.AWSEquatable<InAppMessage>
    implements Built<InAppMessage, InAppMessageBuilder> {
  /// Provides all fields required for building an in-app message.
  factory InAppMessage({
    List<_i2.InAppMessageContent>? content,
    Map<String, String>? customConfig,
    _i3.Layout? layout,
  }) {
    return _$InAppMessage._(
      content: content == null ? null : _i4.BuiltList(content),
      customConfig: customConfig == null ? null : _i4.BuiltMap(customConfig),
      layout: layout,
    );
  }

  /// Provides all fields required for building an in-app message.
  factory InAppMessage.build([void Function(InAppMessageBuilder) updates]) =
      _$InAppMessage;

  const InAppMessage._();

  static const List<_i5.SmithySerializer<InAppMessage>> serializers = [
    InAppMessageRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InAppMessageBuilder b) {}

  /// In-app message content.
  _i4.BuiltList<_i2.InAppMessageContent>? get content;

  /// Custom config to be sent to SDK.
  _i4.BuiltMap<String, String>? get customConfig;

  /// The layout of the message.
  _i3.Layout? get layout;
  @override
  List<Object?> get props => [
        content,
        customConfig,
        layout,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InAppMessage')
      ..add(
        'content',
        content,
      )
      ..add(
        'customConfig',
        customConfig,
      )
      ..add(
        'layout',
        layout,
      );
    return helper.toString();
  }
}

class InAppMessageRestJson1Serializer
    extends _i5.StructuredSmithySerializer<InAppMessage> {
  const InAppMessageRestJson1Serializer() : super('InAppMessage');

  @override
  Iterable<Type> get types => const [
        InAppMessage,
        _$InAppMessage,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  InAppMessage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InAppMessageBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Content':
          result.content.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i2.InAppMessageContent)],
            ),
          ) as _i4.BuiltList<_i2.InAppMessageContent>));
        case 'CustomConfig':
          result.customConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltMap<String, String>));
        case 'Layout':
          result.layout = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Layout),
          ) as _i3.Layout);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InAppMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InAppMessage(:content, :customConfig, :layout) = object;
    if (content != null) {
      result$
        ..add('Content')
        ..add(serializers.serialize(
          content,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i2.InAppMessageContent)],
          ),
        ));
    }
    if (customConfig != null) {
      result$
        ..add('CustomConfig')
        ..add(serializers.serialize(
          customConfig,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (layout != null) {
      result$
        ..add('Layout')
        ..add(serializers.serialize(
          layout,
          specifiedType: const FullType(_i3.Layout),
        ));
    }
    return result$;
  }
}
