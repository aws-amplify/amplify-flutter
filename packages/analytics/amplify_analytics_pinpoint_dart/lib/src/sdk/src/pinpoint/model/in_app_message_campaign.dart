// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.in_app_message_campaign; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_campaign_schedule.dart'
    as _i3;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'in_app_message_campaign.g.dart';

/// Targeted in-app message campaign.
abstract class InAppMessageCampaign
    with _i1.AWSEquatable<InAppMessageCampaign>
    implements Built<InAppMessageCampaign, InAppMessageCampaignBuilder> {
  /// Targeted in-app message campaign.
  factory InAppMessageCampaign({
    String? campaignId,
    int? dailyCap,
    _i2.InAppMessage? inAppMessage,
    int? priority,
    _i3.InAppCampaignSchedule? schedule,
    int? sessionCap,
    int? totalCap,
    String? treatmentId,
  }) {
    dailyCap ??= 0;
    priority ??= 0;
    sessionCap ??= 0;
    totalCap ??= 0;
    return _$InAppMessageCampaign._(
      campaignId: campaignId,
      dailyCap: dailyCap,
      inAppMessage: inAppMessage,
      priority: priority,
      schedule: schedule,
      sessionCap: sessionCap,
      totalCap: totalCap,
      treatmentId: treatmentId,
    );
  }

  /// Targeted in-app message campaign.
  factory InAppMessageCampaign.build(
          [void Function(InAppMessageCampaignBuilder) updates]) =
      _$InAppMessageCampaign;

  const InAppMessageCampaign._();

  static const List<_i4.SmithySerializer> serializers = [
    InAppMessageCampaignRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InAppMessageCampaignBuilder b) {
    b.dailyCap = 0;
    b.priority = 0;
    b.sessionCap = 0;
    b.totalCap = 0;
  }

  /// Campaign id of the corresponding campaign.
  String? get campaignId;

  /// Daily cap which controls the number of times any in-app messages can be shown to the endpoint during a day.
  int get dailyCap;

  /// In-app message content with all fields required for rendering an in-app message.
  _i2.InAppMessage? get inAppMessage;

  /// Priority of the in-app message.
  int get priority;

  /// Schedule of the campaign.
  _i3.InAppCampaignSchedule? get schedule;

  /// Session cap which controls the number of times an in-app message can be shown to the endpoint during an application session.
  int get sessionCap;

  /// Total cap which controls the number of times an in-app message can be shown to the endpoint.
  int get totalCap;

  /// Treatment id of the campaign.
  String? get treatmentId;
  @override
  List<Object?> get props => [
        campaignId,
        dailyCap,
        inAppMessage,
        priority,
        schedule,
        sessionCap,
        totalCap,
        treatmentId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InAppMessageCampaign');
    helper.add(
      'campaignId',
      campaignId,
    );
    helper.add(
      'dailyCap',
      dailyCap,
    );
    helper.add(
      'inAppMessage',
      inAppMessage,
    );
    helper.add(
      'priority',
      priority,
    );
    helper.add(
      'schedule',
      schedule,
    );
    helper.add(
      'sessionCap',
      sessionCap,
    );
    helper.add(
      'totalCap',
      totalCap,
    );
    helper.add(
      'treatmentId',
      treatmentId,
    );
    return helper.toString();
  }
}

class InAppMessageCampaignRestJson1Serializer
    extends _i4.StructuredSmithySerializer<InAppMessageCampaign> {
  const InAppMessageCampaignRestJson1Serializer()
      : super('InAppMessageCampaign');

  @override
  Iterable<Type> get types => const [
        InAppMessageCampaign,
        _$InAppMessageCampaign,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  InAppMessageCampaign deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InAppMessageCampaignBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'CampaignId':
          if (value != null) {
            result.campaignId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DailyCap':
          result.dailyCap = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'InAppMessage':
          if (value != null) {
            result.inAppMessage.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.InAppMessage),
            ) as _i2.InAppMessage));
          }
          break;
        case 'Priority':
          result.priority = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'Schedule':
          if (value != null) {
            result.schedule.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.InAppCampaignSchedule),
            ) as _i3.InAppCampaignSchedule));
          }
          break;
        case 'SessionCap':
          result.sessionCap = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'TotalCap':
          result.totalCap = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'TreatmentId':
          if (value != null) {
            result.treatmentId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as InAppMessageCampaign);
    final result = <Object?>[
      'DailyCap',
      serializers.serialize(
        payload.dailyCap,
        specifiedType: const FullType(int),
      ),
      'Priority',
      serializers.serialize(
        payload.priority,
        specifiedType: const FullType(int),
      ),
      'SessionCap',
      serializers.serialize(
        payload.sessionCap,
        specifiedType: const FullType(int),
      ),
      'TotalCap',
      serializers.serialize(
        payload.totalCap,
        specifiedType: const FullType(int),
      ),
    ];
    if (payload.campaignId != null) {
      result
        ..add('CampaignId')
        ..add(serializers.serialize(
          payload.campaignId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.inAppMessage != null) {
      result
        ..add('InAppMessage')
        ..add(serializers.serialize(
          payload.inAppMessage!,
          specifiedType: const FullType(_i2.InAppMessage),
        ));
    }
    if (payload.schedule != null) {
      result
        ..add('Schedule')
        ..add(serializers.serialize(
          payload.schedule!,
          specifiedType: const FullType(_i3.InAppCampaignSchedule),
        ));
    }
    if (payload.treatmentId != null) {
      result
        ..add('TreatmentId')
        ..add(serializers.serialize(
          payload.treatmentId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
