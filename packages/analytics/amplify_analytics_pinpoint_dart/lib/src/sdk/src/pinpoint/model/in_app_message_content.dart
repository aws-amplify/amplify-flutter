// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.model.in_app_message_content; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_body_config.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_button.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_header_config.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'in_app_message_content.g.dart';

/// The configuration for the message content.
abstract class InAppMessageContent
    with _i1.AWSEquatable<InAppMessageContent>
    implements Built<InAppMessageContent, InAppMessageContentBuilder> {
  /// The configuration for the message content.
  factory InAppMessageContent({
    String? backgroundColor,
    InAppMessageBodyConfig? bodyConfig,
    InAppMessageHeaderConfig? headerConfig,
    String? imageUrl,
    InAppMessageButton? primaryBtn,
    InAppMessageButton? secondaryBtn,
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

  static const List<_i2.SmithySerializer<InAppMessageContent>> serializers = [
    InAppMessageContentRestJson1Serializer()
  ];

  /// The background color for the message.
  String? get backgroundColor;

  /// The configuration for the message body.
  InAppMessageBodyConfig? get bodyConfig;

  /// The configuration for the message header.
  InAppMessageHeaderConfig? get headerConfig;

  /// The image url for the background of message.
  String? get imageUrl;

  /// The first button inside the message.
  InAppMessageButton? get primaryBtn;

  /// The second button inside message.
  InAppMessageButton? get secondaryBtn;
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
    extends _i2.StructuredSmithySerializer<InAppMessageContent> {
  const InAppMessageContentRestJson1Serializer() : super('InAppMessageContent');

  @override
  Iterable<Type> get types => const [
        InAppMessageContent,
        _$InAppMessageContent,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
            specifiedType: const FullType(InAppMessageBodyConfig),
          ) as InAppMessageBodyConfig));
        case 'HeaderConfig':
          result.headerConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InAppMessageHeaderConfig),
          ) as InAppMessageHeaderConfig));
        case 'ImageUrl':
          result.imageUrl = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PrimaryBtn':
          result.primaryBtn.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InAppMessageButton),
          ) as InAppMessageButton));
        case 'SecondaryBtn':
          result.secondaryBtn.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InAppMessageButton),
          ) as InAppMessageButton));
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
          specifiedType: const FullType(InAppMessageBodyConfig),
        ));
    }
    if (headerConfig != null) {
      result$
        ..add('HeaderConfig')
        ..add(serializers.serialize(
          headerConfig,
          specifiedType: const FullType(InAppMessageHeaderConfig),
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
          specifiedType: const FullType(InAppMessageButton),
        ));
    }
    if (secondaryBtn != null) {
      result$
        ..add('SecondaryBtn')
        ..add(serializers.serialize(
          secondaryBtn,
          specifiedType: const FullType(InAppMessageButton),
        ));
    }
    return result$;
  }
}
