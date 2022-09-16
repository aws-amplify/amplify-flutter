// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.common.serializers;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/alignment.dart'
    as _i17;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/attribute_dimension.dart'
    as _i28;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/attribute_type.dart'
    as _i27;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/bad_request_exception.dart'
    as _i9;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/button_action.dart'
    as _i20;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/campaign_event_filter.dart'
    as _i34;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/channel_type.dart'
    as _i3;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/default_button_configuration.dart'
    as _i22;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/delete_user_profile_request.dart'
    as _i70;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/delete_user_profile_response.dart'
    as _i71;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/dimension_type.dart'
    as _i29;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_batch_item.dart'
    as _i55;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_batch_request.dart'
    as _i56;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_demographic.dart'
    as _i4;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_item_response.dart'
    as _i46;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_location.dart'
    as _i5;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_request.dart'
    as _i51;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_response.dart'
    as _i7;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_user.dart'
    as _i6;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/event.dart'
    as _i42;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/event_dimensions.dart'
    as _i32;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/event_item_response.dart'
    as _i47;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/events_batch.dart'
    as _i43;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/events_request.dart'
    as _i44;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/events_response.dart'
    as _i49;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/filter_type.dart'
    as _i33;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/forbidden_exception.dart'
    as _i10;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_endpoint_request.dart'
    as _i2;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_endpoint_response.dart'
    as _i8;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_in_app_messages_request.dart'
    as _i16;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_in_app_messages_response.dart'
    as _i39;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_user_profile_request.dart'
    as _i59;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_user_profile_response.dart'
    as _i65;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_user_profiles_batch_request.dart'
    as _i73;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_user_profiles_batch_response.dart'
    as _i77;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_campaign_schedule.dart'
    as _i36;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message.dart'
    as _i26;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_body_config.dart'
    as _i18;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_button.dart'
    as _i23;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_campaign.dart'
    as _i37;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_content.dart'
    as _i24;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_message_header_config.dart'
    as _i19;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_messages_response.dart'
    as _i38;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/internal_server_error_exception.dart'
    as _i11;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/item_response.dart'
    as _i48;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/layout.dart'
    as _i25;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/message_body.dart'
    as _i53;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/method_not_allowed_exception.dart'
    as _i12;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/metric_dimension.dart'
    as _i31;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/not_found_exception.dart'
    as _i13;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/override_button_configuration.dart'
    as _i21;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/payload_too_large_exception.dart'
    as _i14;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/primary_location.dart'
    as _i61;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/public_endpoint.dart'
    as _i40;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/put_events_request.dart'
    as _i45;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/put_events_response.dart'
    as _i50;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/put_user_events_request.dart'
    as _i84;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/put_user_events_response.dart'
    as _i87;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/quiet_time.dart'
    as _i35;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/session.dart'
    as _i41;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/set_dimension.dart'
    as _i30;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/too_many_requests_exception.dart'
    as _i15;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoint_request.dart'
    as _i52;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoint_response.dart'
    as _i54;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoints_batch_request.dart'
    as _i57;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoints_batch_response.dart'
    as _i58;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_user_profile_request.dart'
    as _i67;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_user_profile_response.dart'
    as _i69;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_user_profiles_batch_request.dart'
    as _i79;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_user_profiles_batch_response.dart'
    as _i81;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user.dart'
    as _i63;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_batch_failure.dart'
    as _i74;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_events_batch.dart'
    as _i82;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_events_item_response.dart'
    as _i85;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_events_request.dart'
    as _i83;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_events_response.dart'
    as _i86;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_name.dart'
    as _i60;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_profile.dart'
    as _i75;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_profile_response.dart'
    as _i64;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_profile_update_request.dart'
    as _i66;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_profile_update_response.dart'
    as _i68;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_profiles_get_request.dart'
    as _i72;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_profiles_response.dart'
    as _i76;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_profiles_update_request.dart'
    as _i78;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_profiles_update_response.dart'
    as _i80;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_status.dart'
    as _i62;
import 'package:built_collection/built_collection.dart' as _i88;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.GetEndpointRequest.serializers,
  ..._i3.ChannelType.serializers,
  ..._i4.EndpointDemographic.serializers,
  ..._i5.EndpointLocation.serializers,
  ..._i6.EndpointUser.serializers,
  ..._i7.EndpointResponse.serializers,
  ..._i8.GetEndpointResponse.serializers,
  ..._i9.BadRequestException.serializers,
  ..._i10.ForbiddenException.serializers,
  ..._i11.InternalServerErrorException.serializers,
  ..._i12.MethodNotAllowedException.serializers,
  ..._i13.NotFoundException.serializers,
  ..._i14.PayloadTooLargeException.serializers,
  ..._i15.TooManyRequestsException.serializers,
  ..._i16.GetInAppMessagesRequest.serializers,
  ..._i17.Alignment.serializers,
  ..._i18.InAppMessageBodyConfig.serializers,
  ..._i19.InAppMessageHeaderConfig.serializers,
  ..._i20.ButtonAction.serializers,
  ..._i21.OverrideButtonConfiguration.serializers,
  ..._i22.DefaultButtonConfiguration.serializers,
  ..._i23.InAppMessageButton.serializers,
  ..._i24.InAppMessageContent.serializers,
  ..._i25.Layout.serializers,
  ..._i26.InAppMessage.serializers,
  ..._i27.AttributeType.serializers,
  ..._i28.AttributeDimension.serializers,
  ..._i29.DimensionType.serializers,
  ..._i30.SetDimension.serializers,
  ..._i31.MetricDimension.serializers,
  ..._i32.EventDimensions.serializers,
  ..._i33.FilterType.serializers,
  ..._i34.CampaignEventFilter.serializers,
  ..._i35.QuietTime.serializers,
  ..._i36.InAppCampaignSchedule.serializers,
  ..._i37.InAppMessageCampaign.serializers,
  ..._i38.InAppMessagesResponse.serializers,
  ..._i39.GetInAppMessagesResponse.serializers,
  ..._i40.PublicEndpoint.serializers,
  ..._i41.Session.serializers,
  ..._i42.Event.serializers,
  ..._i43.EventsBatch.serializers,
  ..._i44.EventsRequest.serializers,
  ..._i45.PutEventsRequest.serializers,
  ..._i46.EndpointItemResponse.serializers,
  ..._i47.EventItemResponse.serializers,
  ..._i48.ItemResponse.serializers,
  ..._i49.EventsResponse.serializers,
  ..._i50.PutEventsResponse.serializers,
  ..._i51.EndpointRequest.serializers,
  ..._i52.UpdateEndpointRequest.serializers,
  ..._i53.MessageBody.serializers,
  ..._i54.UpdateEndpointResponse.serializers,
  ..._i55.EndpointBatchItem.serializers,
  ..._i56.EndpointBatchRequest.serializers,
  ..._i57.UpdateEndpointsBatchRequest.serializers,
  ..._i58.UpdateEndpointsBatchResponse.serializers,
  ..._i59.GetUserProfileRequest.serializers,
  ..._i60.UserName.serializers,
  ..._i61.PrimaryLocation.serializers,
  ..._i62.UserStatus.serializers,
  ..._i63.User.serializers,
  ..._i64.UserProfileResponse.serializers,
  ..._i65.GetUserProfileResponse.serializers,
  ..._i66.UserProfileUpdateRequest.serializers,
  ..._i67.UpdateUserProfileRequest.serializers,
  ..._i68.UserProfileUpdateResponse.serializers,
  ..._i69.UpdateUserProfileResponse.serializers,
  ..._i70.DeleteUserProfileRequest.serializers,
  ..._i71.DeleteUserProfileResponse.serializers,
  ..._i72.UserProfilesGetRequest.serializers,
  ..._i73.GetUserProfilesBatchRequest.serializers,
  ..._i74.UserBatchFailure.serializers,
  ..._i75.UserProfile.serializers,
  ..._i76.UserProfilesResponse.serializers,
  ..._i77.GetUserProfilesBatchResponse.serializers,
  ..._i78.UserProfilesUpdateRequest.serializers,
  ..._i79.UpdateUserProfilesBatchRequest.serializers,
  ..._i80.UserProfilesUpdateResponse.serializers,
  ..._i81.UpdateUserProfilesBatchResponse.serializers,
  ..._i82.UserEventsBatch.serializers,
  ..._i83.UserEventsRequest.serializers,
  ..._i84.PutUserEventsRequest.serializers,
  ..._i85.UserEventsItemResponse.serializers,
  ..._i86.UserEventsResponse.serializers,
  ..._i87.PutUserEventsResponse.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(_i88.BuiltListMultimap, [FullType(String), FullType(String)]):
      _i88.ListMultimapBuilder<String, String>.new,
  const FullType(_i88.BuiltMap, [FullType(String), FullType(double)]):
      _i88.MapBuilder<String, double>.new,
  const FullType(_i88.BuiltList, [FullType(_i24.InAppMessageContent)]):
      _i88.ListBuilder<_i24.InAppMessageContent>.new,
  const FullType(_i88.BuiltMap, [FullType(String), FullType(String)]):
      _i88.MapBuilder<String, String>.new,
  const FullType(_i88.BuiltList, [FullType(String)]):
      _i88.ListBuilder<String>.new,
  const FullType(
          _i88.BuiltMap, [FullType(String), FullType(_i28.AttributeDimension)]):
      _i88.MapBuilder<String, _i28.AttributeDimension>.new,
  const FullType(
          _i88.BuiltMap, [FullType(String), FullType(_i31.MetricDimension)]):
      _i88.MapBuilder<String, _i31.MetricDimension>.new,
  const FullType(_i88.BuiltList, [FullType(_i37.InAppMessageCampaign)]):
      _i88.ListBuilder<_i37.InAppMessageCampaign>.new,
  const FullType(_i88.BuiltMap, [FullType(String), FullType(_i42.Event)]):
      _i88.MapBuilder<String, _i42.Event>.new,
  const FullType(_i88.BuiltMap, [FullType(String), FullType(_i43.EventsBatch)]):
      _i88.MapBuilder<String, _i43.EventsBatch>.new,
  const FullType(
          _i88.BuiltMap, [FullType(String), FullType(_i47.EventItemResponse)]):
      _i88.MapBuilder<String, _i47.EventItemResponse>.new,
  const FullType(
          _i88.BuiltMap, [FullType(String), FullType(_i48.ItemResponse)]):
      _i88.MapBuilder<String, _i48.ItemResponse>.new,
  const FullType(_i88.BuiltList, [FullType(_i55.EndpointBatchItem)]):
      _i88.ListBuilder<_i55.EndpointBatchItem>.new,
  const FullType(_i88.BuiltList, [FullType(_i40.PublicEndpoint)]):
      _i88.ListBuilder<_i40.PublicEndpoint>.new,
  const FullType(_i88.BuiltList, [FullType(_i74.UserBatchFailure)]):
      _i88.ListBuilder<_i74.UserBatchFailure>.new,
  const FullType(_i88.BuiltList, [FullType(_i75.UserProfile)]):
      _i88.ListBuilder<_i75.UserProfile>.new,
  const FullType(
          _i88.BuiltMap, [FullType(String), FullType(_i82.UserEventsBatch)]):
      _i88.MapBuilder<String, _i82.UserEventsBatch>.new,
  const FullType(_i88.BuiltMap, [
    FullType(String),
    FullType(_i85.UserEventsItemResponse)
  ]): _i88.MapBuilder<String, _i85.UserEventsItemResponse>.new
};
