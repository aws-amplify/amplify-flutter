// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/alignment.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/attribute_dimension.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/attribute_type.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/bad_request_exception.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/button_action.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/campaign_event_filter.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/channel_type.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/default_button_configuration.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/dimension_type.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_batch_item.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_batch_request.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_demographic.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_item_response.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_location.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_request.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_response.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_user.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/event.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/event_dimensions.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/event_item_response.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/events_batch.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/events_request.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/events_response.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/filter_type.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/forbidden_exception.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_endpoint_request.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_endpoint_response.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_in_app_messages_request.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_in_app_messages_response.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_campaign_schedule.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_body_config.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_button.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_campaign.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_content.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_header_config.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_messages_response.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/internal_server_error_exception.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/item_response.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/layout.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/message_body.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/method_not_allowed_exception.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/metric_dimension.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/not_found_exception.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/override_button_configuration.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/payload_too_large_exception.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/public_endpoint.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/put_events_request.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/put_events_response.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/quiet_time.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/session.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/set_dimension.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/too_many_requests_exception.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoint_request.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoint_response.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoints_batch_request.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoints_batch_response.dart';
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...GetEndpointRequest.serializers,
  ...ChannelType.serializers,
  ...EndpointDemographic.serializers,
  ...EndpointLocation.serializers,
  ...EndpointUser.serializers,
  ...EndpointResponse.serializers,
  ...GetEndpointResponse.serializers,
  ...BadRequestException.serializers,
  ...ForbiddenException.serializers,
  ...InternalServerErrorException.serializers,
  ...MethodNotAllowedException.serializers,
  ...NotFoundException.serializers,
  ...PayloadTooLargeException.serializers,
  ...TooManyRequestsException.serializers,
  ...GetInAppMessagesRequest.serializers,
  ...Alignment.serializers,
  ...InAppMessageBodyConfig.serializers,
  ...InAppMessageHeaderConfig.serializers,
  ...ButtonAction.serializers,
  ...OverrideButtonConfiguration.serializers,
  ...DefaultButtonConfiguration.serializers,
  ...InAppMessageButton.serializers,
  ...InAppMessageContent.serializers,
  ...Layout.serializers,
  ...InAppMessage.serializers,
  ...AttributeType.serializers,
  ...AttributeDimension.serializers,
  ...DimensionType.serializers,
  ...SetDimension.serializers,
  ...MetricDimension.serializers,
  ...EventDimensions.serializers,
  ...FilterType.serializers,
  ...CampaignEventFilter.serializers,
  ...QuietTime.serializers,
  ...InAppCampaignSchedule.serializers,
  ...InAppMessageCampaign.serializers,
  ...InAppMessagesResponse.serializers,
  ...GetInAppMessagesResponse.serializers,
  ...PublicEndpoint.serializers,
  ...Session.serializers,
  ...Event.serializers,
  ...EventsBatch.serializers,
  ...EventsRequest.serializers,
  ...PutEventsRequest.serializers,
  ...EndpointItemResponse.serializers,
  ...EventItemResponse.serializers,
  ...ItemResponse.serializers,
  ...EventsResponse.serializers,
  ...PutEventsResponse.serializers,
  ...EndpointRequest.serializers,
  ...UpdateEndpointRequest.serializers,
  ...MessageBody.serializers,
  ...UpdateEndpointResponse.serializers,
  ...EndpointBatchItem.serializers,
  ...EndpointBatchRequest.serializers,
  ...UpdateEndpointsBatchRequest.serializers,
  ...UpdateEndpointsBatchResponse.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i2.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.ListMultimapBuilder<String, String>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(double),
    ],
  ): _i2.MapBuilder<String, double>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InAppMessageContent)],
  ): _i2.ListBuilder<InAppMessageContent>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.MapBuilder<String, String>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(String)],
  ): _i2.ListBuilder<String>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(AttributeDimension),
    ],
  ): _i2.MapBuilder<String, AttributeDimension>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(MetricDimension),
    ],
  ): _i2.MapBuilder<String, MetricDimension>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InAppMessageCampaign)],
  ): _i2.ListBuilder<InAppMessageCampaign>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(Event),
    ],
  ): _i2.MapBuilder<String, Event>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(EventsBatch),
    ],
  ): _i2.MapBuilder<String, EventsBatch>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(EventItemResponse),
    ],
  ): _i2.MapBuilder<String, EventItemResponse>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(ItemResponse),
    ],
  ): _i2.MapBuilder<String, ItemResponse>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(EndpointBatchItem)],
  ): _i2.ListBuilder<EndpointBatchItem>.new,
};
