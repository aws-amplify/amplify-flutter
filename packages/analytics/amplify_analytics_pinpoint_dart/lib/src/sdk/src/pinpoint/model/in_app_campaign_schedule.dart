// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.in_app_campaign_schedule;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/campaign_event_filter.dart'
    as _i2;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/quiet_time.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'in_app_campaign_schedule.g.dart';

/// Schedule of the campaign.
abstract class InAppCampaignSchedule
    with _i1.AWSEquatable<InAppCampaignSchedule>
    implements Built<InAppCampaignSchedule, InAppCampaignScheduleBuilder> {
  /// Schedule of the campaign.
  factory InAppCampaignSchedule(
      {String? endDate,
      _i2.CampaignEventFilter? eventFilter,
      _i3.QuietTime? quietTime}) {
    return _$InAppCampaignSchedule._(
        endDate: endDate, eventFilter: eventFilter, quietTime: quietTime);
  }

  /// Schedule of the campaign.
  factory InAppCampaignSchedule.build(
          [void Function(InAppCampaignScheduleBuilder) updates]) =
      _$InAppCampaignSchedule;

  const InAppCampaignSchedule._();

  static const List<_i4.SmithySerializer> serializers = [
    _InAppCampaignScheduleRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InAppCampaignScheduleBuilder b) {}

  /// The scheduled time after which the in-app message should not be shown. Timestamp is in ISO 8601 format.
  String? get endDate;

  /// The event filter the SDK has to use to show the in-app message in the application.
  _i2.CampaignEventFilter? get eventFilter;

  /// Time during which the in-app message should not be shown to the user.
  _i3.QuietTime? get quietTime;
  @override
  List<Object?> get props => [endDate, eventFilter, quietTime];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InAppCampaignSchedule');
    helper.add('endDate', endDate);
    helper.add('eventFilter', eventFilter);
    helper.add('quietTime', quietTime);
    return helper.toString();
  }
}

class _InAppCampaignScheduleRestJson1Serializer
    extends _i4.StructuredSmithySerializer<InAppCampaignSchedule> {
  const _InAppCampaignScheduleRestJson1Serializer()
      : super('InAppCampaignSchedule');

  @override
  Iterable<Type> get types =>
      const [InAppCampaignSchedule, _$InAppCampaignSchedule];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  InAppCampaignSchedule deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = InAppCampaignScheduleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'EndDate':
          if (value != null) {
            result.endDate = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'EventFilter':
          if (value != null) {
            result.eventFilter.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i2.CampaignEventFilter))
                as _i2.CampaignEventFilter));
          }
          break;
        case 'QuietTime':
          if (value != null) {
            result.quietTime.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i3.QuietTime))
                as _i3.QuietTime));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as InAppCampaignSchedule);
    final result = <Object?>[];
    if (payload.endDate != null) {
      result
        ..add('EndDate')
        ..add(serializers.serialize(payload.endDate!,
            specifiedType: const FullType(String)));
    }
    if (payload.eventFilter != null) {
      result
        ..add('EventFilter')
        ..add(serializers.serialize(payload.eventFilter!,
            specifiedType: const FullType(_i2.CampaignEventFilter)));
    }
    if (payload.quietTime != null) {
      result
        ..add('QuietTime')
        ..add(serializers.serialize(payload.quietTime!,
            specifiedType: const FullType(_i3.QuietTime)));
    }
    return result;
  }
}
