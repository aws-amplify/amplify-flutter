// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.model.campaign_event_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/event_dimensions.dart'
    as _i2;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/filter_type.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'campaign_event_filter.g.dart';

/// Specifies the settings for events that cause a campaign to be sent.
abstract class CampaignEventFilter
    with _i1.AWSEquatable<CampaignEventFilter>
    implements Built<CampaignEventFilter, CampaignEventFilterBuilder> {
  /// Specifies the settings for events that cause a campaign to be sent.
  factory CampaignEventFilter({
    required _i2.EventDimensions dimensions,
    required _i3.FilterType filterType,
  }) {
    return _$CampaignEventFilter._(
      dimensions: dimensions,
      filterType: filterType,
    );
  }

  /// Specifies the settings for events that cause a campaign to be sent.
  factory CampaignEventFilter.build(
          [void Function(CampaignEventFilterBuilder) updates]) =
      _$CampaignEventFilter;

  const CampaignEventFilter._();

  static const List<_i4.SmithySerializer<CampaignEventFilter>> serializers = [
    CampaignEventFilterRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CampaignEventFilterBuilder b) {}

  /// The dimension settings of the event filter for the campaign.
  _i2.EventDimensions get dimensions;

  /// The type of event that causes the campaign to be sent. Valid values are: SYSTEM, sends the campaign when a system event occurs; and, ENDPOINT, sends the campaign when an endpoint event (Events resource) occurs.
  _i3.FilterType get filterType;
  @override
  List<Object?> get props => [
        dimensions,
        filterType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CampaignEventFilter')
      ..add(
        'dimensions',
        dimensions,
      )
      ..add(
        'filterType',
        filterType,
      );
    return helper.toString();
  }
}

class CampaignEventFilterRestJson1Serializer
    extends _i4.StructuredSmithySerializer<CampaignEventFilter> {
  const CampaignEventFilterRestJson1Serializer() : super('CampaignEventFilter');

  @override
  Iterable<Type> get types => const [
        CampaignEventFilter,
        _$CampaignEventFilter,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CampaignEventFilter deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CampaignEventFilterBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Dimensions':
          result.dimensions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.EventDimensions),
          ) as _i2.EventDimensions));
        case 'FilterType':
          result.filterType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.FilterType),
          ) as _i3.FilterType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CampaignEventFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CampaignEventFilter(:dimensions, :filterType) = object;
    result$.addAll([
      'Dimensions',
      serializers.serialize(
        dimensions,
        specifiedType: const FullType(_i2.EventDimensions),
      ),
      'FilterType',
      serializers.serialize(
        filterType,
        specifiedType: const FullType(_i3.FilterType),
      ),
    ]);
    return result$;
  }
}
