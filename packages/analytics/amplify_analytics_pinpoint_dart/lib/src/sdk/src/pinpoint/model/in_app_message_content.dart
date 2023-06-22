// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_analytics_pinpoint_dart.pinpoint.model.in_app_message_content; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_body_config.dart'
    as _i2;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_button.dart'
    as _i4;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_header_config.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;

part 'in_app_message_content.g.dart';

/// The configuration for the message content.
abstract class InAppMessageContent
    with _i1.AWSEquatable<InAppMessageContent>
    implements Built<InAppMessageContent, InAppMessageContentBuilder> {
  /// The configuration for the message content.
  factory InAppMessageContent({
    String? backgroundColor,
    _i2.InAppMessageBodyConfig? bodyConfig,
    _i3.InAppMessageHeaderConfig? headerConfig,
    String? imageUrl,
    _i4.InAppMessageButton? primaryBtn,
    _i4.InAppMessageButton? secondaryBtn,
  }) {
    return _$InAppMessageContent._(
      backgroundColor: backgroundColor,
      bodyConfig: bodyConfig,
      headerConfig: headerConfig,
      imageUrl: imageUrl,
      primaryBtn: primaryBtn,
      secondaryBtn: secondaryBtn,
    );
  }

  /// The configuration for the message content.
  factory InAppMessageContent.build(
          [void Function(InAppMessageContentBuilder) updates]) =
      _$InAppMessageContent;

  const InAppMessageContent._();

  static const List<_i5.SmithySerializer<InAppMessageContent>> serializers = [
    InAppMessageContentRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InAppMessageContentBuilder b) {}

  /// The background color for the message.
  String? get backgroundColor;

  /// The configuration for the message body.
  _i2.InAppMessageBodyConfig? get bodyConfig;

  /// The configuration for the message header.
  _i3.InAppMessageHeaderConfig? get headerConfig;

  /// The image url for the background of message.
  String? get imageUrl;

  /// The first button inside the message.
  _i4.InAppMessageButton? get primaryBtn;

  /// The second button inside message.
  _i4.InAppMessageButton? get secondaryBtn;
  @override
  List<Object?> get props => [
        backgroundColor,
        bodyConfig,
        headerConfig,
        imageUrl,
        primaryBtn,
        secondaryBtn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InAppMessageContent')
      ..add(
        'backgroundColor',
        backgroundColor,
      )
      ..add(
        'bodyConfig',
        bodyConfig,
      )
      ..add(
        'headerConfig',
        headerConfig,
      )
      ..add(
        'imageUrl',
        imageUrl,
      )
      ..add(
        'primaryBtn',
        primaryBtn,
      )
      ..add(
        'secondaryBtn',
        secondaryBtn,
      );
    return helper.toString();
  }
}

class InAppMessageContentRestJson1Serializer
    extends _i5.StructuredSmithySerializer<InAppMessageContent> {
  const InAppMessageContentRestJson1Serializer() : super('InAppMessageContent');

  @override
  Iterable<Type> get types => const [
        InAppMessageContent,
        _$InAppMessageContent,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  InAppMessageContent deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InAppMessageContentBuilder();
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
        case 'BodyConfig':
          result.bodyConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.InAppMessageBodyConfig),
          ) as _i2.InAppMessageBodyConfig));
        case 'HeaderConfig':
          result.headerConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.InAppMessageHeaderConfig),
          ) as _i3.InAppMessageHeaderConfig));
        case 'ImageUrl':
          result.imageUrl = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PrimaryBtn':
          result.primaryBtn.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.InAppMessageButton),
          ) as _i4.InAppMessageButton));
        case 'SecondaryBtn':
          result.secondaryBtn.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.InAppMessageButton),
          ) as _i4.InAppMessageButton));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InAppMessageContent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InAppMessageContent(
      :backgroundColor,
      :bodyConfig,
      :headerConfig,
      :imageUrl,
      :primaryBtn,
      :secondaryBtn
    ) = object;
    if (backgroundColor != null) {
      result$
        ..add('BackgroundColor')
        ..add(serializers.serialize(
          backgroundColor,
          specifiedType: const FullType(String),
        ));
    }
    if (bodyConfig != null) {
      result$
        ..add('BodyConfig')
        ..add(serializers.serialize(
          bodyConfig,
          specifiedType: const FullType(_i2.InAppMessageBodyConfig),
        ));
    }
    if (headerConfig != null) {
      result$
        ..add('HeaderConfig')
        ..add(serializers.serialize(
          headerConfig,
          specifiedType: const FullType(_i3.InAppMessageHeaderConfig),
        ));
    }
    if (imageUrl != null) {
      result$
        ..add('ImageUrl')
        ..add(serializers.serialize(
          imageUrl,
          specifiedType: const FullType(String),
        ));
    }
    if (primaryBtn != null) {
      result$
        ..add('PrimaryBtn')
        ..add(serializers.serialize(
          primaryBtn,
          specifiedType: const FullType(_i4.InAppMessageButton),
        ));
    }
    if (secondaryBtn != null) {
      result$
        ..add('SecondaryBtn')
        ..add(serializers.serialize(
          secondaryBtn,
          specifiedType: const FullType(_i4.InAppMessageButton),
        ));
    }
    return result$;
  }
}
