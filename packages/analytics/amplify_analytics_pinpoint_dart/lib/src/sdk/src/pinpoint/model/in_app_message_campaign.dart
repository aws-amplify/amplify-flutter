// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i4.SmithySerializer<InAppMessageCampaign>> serializers = [
    InAppMessageCampaignRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InAppMessageCampaignBuilder b) {}

  /// Campaign id of the corresponding campaign.
  String? get campaignId;

  /// Daily cap which controls the number of times any in-app messages can be shown to the endpoint during a day.
  int? get dailyCap;

  /// In-app message content with all fields required for rendering an in-app message.
  _i2.InAppMessage? get inAppMessage;

  /// Priority of the in-app message.
  int? get priority;

  /// Schedule of the campaign.
  _i3.InAppCampaignSchedule? get schedule;

  /// Session cap which controls the number of times an in-app message can be shown to the endpoint during an application session.
  int? get sessionCap;

  /// Total cap which controls the number of times an in-app message can be shown to the endpoint.
  int? get totalCap;

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
    final helper = newBuiltValueToStringHelper('InAppMessageCampaign')
      ..add(
        'campaignId',
        campaignId,
      )
      ..add(
        'dailyCap',
        dailyCap,
      )
      ..add(
        'inAppMessage',
        inAppMessage,
      )
      ..add(
        'priority',
        priority,
      )
      ..add(
        'schedule',
        schedule,
      )
      ..add(
        'sessionCap',
        sessionCap,
      )
      ..add(
        'totalCap',
        totalCap,
      )
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CampaignId':
          result.campaignId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DailyCap':
          result.dailyCap = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'InAppMessage':
          result.inAppMessage.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.InAppMessage),
          ) as _i2.InAppMessage));
        case 'Priority':
          result.priority = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Schedule':
          result.schedule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.InAppCampaignSchedule),
          ) as _i3.InAppCampaignSchedule));
        case 'SessionCap':
          result.sessionCap = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'TotalCap':
          result.totalCap = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'TreatmentId':
          result.treatmentId = (serializers.deserialize(
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
    InAppMessageCampaign object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InAppMessageCampaign(
      :campaignId,
      :dailyCap,
      :inAppMessage,
      :priority,
      :schedule,
      :sessionCap,
      :totalCap,
      :treatmentId
    ) = object;
    if (campaignId != null) {
      result$
        ..add('CampaignId')
        ..add(serializers.serialize(
          campaignId,
          specifiedType: const FullType(String),
        ));
    }
    if (dailyCap != null) {
      result$
        ..add('DailyCap')
        ..add(serializers.serialize(
          dailyCap,
          specifiedType: const FullType(int),
        ));
    }
    if (inAppMessage != null) {
      result$
        ..add('InAppMessage')
        ..add(serializers.serialize(
          inAppMessage,
          specifiedType: const FullType(_i2.InAppMessage),
        ));
    }
    if (priority != null) {
      result$
        ..add('Priority')
        ..add(serializers.serialize(
          priority,
          specifiedType: const FullType(int),
        ));
    }
    if (schedule != null) {
      result$
        ..add('Schedule')
        ..add(serializers.serialize(
          schedule,
          specifiedType: const FullType(_i3.InAppCampaignSchedule),
        ));
    }
    if (sessionCap != null) {
      result$
        ..add('SessionCap')
        ..add(serializers.serialize(
          sessionCap,
          specifiedType: const FullType(int),
        ));
    }
    if (totalCap != null) {
      result$
        ..add('TotalCap')
        ..add(serializers.serialize(
          totalCap,
          specifiedType: const FullType(int),
        ));
    }
    if (treatmentId != null) {
      result$
        ..add('TreatmentId')
        ..add(serializers.serialize(
          treatmentId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
