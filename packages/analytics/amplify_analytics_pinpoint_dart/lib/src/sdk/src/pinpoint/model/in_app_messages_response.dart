// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.model.in_app_messages_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_campaign.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'in_app_messages_response.g.dart';

/// Get in-app messages response object.
abstract class InAppMessagesResponse
    with _i1.AWSEquatable<InAppMessagesResponse>
    implements Built<InAppMessagesResponse, InAppMessagesResponseBuilder> {
  /// Get in-app messages response object.
  factory InAppMessagesResponse(
      {List<InAppMessageCampaign>? inAppMessageCampaigns}) {
    return _$InAppMessagesResponse._(
        inAppMessageCampaigns: inAppMessageCampaigns == null
            ? null
            : _i2.BuiltList(inAppMessageCampaigns));
  }

  /// Get in-app messages response object.
  factory InAppMessagesResponse.build(
          [void Function(InAppMessagesResponseBuilder) updates]) =
      _$InAppMessagesResponse;

  const InAppMessagesResponse._();

  static const List<_i3.SmithySerializer<InAppMessagesResponse>> serializers = [
    InAppMessagesResponseRestJson1Serializer()
  ];

  /// List of targeted in-app message campaigns.
  _i2.BuiltList<InAppMessageCampaign>? get inAppMessageCampaigns;
  @override
  List<Object?> get props => [inAppMessageCampaigns];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InAppMessagesResponse')
      ..add(
        'inAppMessageCampaigns',
        inAppMessageCampaigns,
      );
    return helper.toString();
  }
}

class InAppMessagesResponseRestJson1Serializer
    extends _i3.StructuredSmithySerializer<InAppMessagesResponse> {
  const InAppMessagesResponseRestJson1Serializer()
      : super('InAppMessagesResponse');

  @override
  Iterable<Type> get types => const [
        InAppMessagesResponse,
        _$InAppMessagesResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  InAppMessagesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InAppMessagesResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InAppMessageCampaigns':
          result.inAppMessageCampaigns.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InAppMessageCampaign)],
            ),
          ) as _i2.BuiltList<InAppMessageCampaign>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InAppMessagesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InAppMessagesResponse(:inAppMessageCampaigns) = object;
    if (inAppMessageCampaigns != null) {
      result$
        ..add('InAppMessageCampaigns')
        ..add(serializers.serialize(
          inAppMessageCampaigns,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InAppMessageCampaign)],
          ),
        ));
    }
    return result$;
  }
}
