// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_integration_test.cognito_identity_provider.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/admin_list_user_auth_events_request.dart'
    as _i2;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/admin_list_user_auth_events_response.dart'
    as _i15;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/auth_event_type.dart'
    as _i14;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/challenge_name.dart'
    as _i8;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/challenge_response.dart'
    as _i9;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/challenge_response_type.dart'
    as _i10;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_context_data_type.dart'
    as _i11;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_feedback_type.dart'
    as _i13;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_response_type.dart'
    as _i4;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_risk_type.dart'
    as _i7;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_type.dart'
    as _i3;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/feedback_value_type.dart'
    as _i12;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart'
    as _i16;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart'
    as _i17;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart'
    as _i18;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart'
    as _i19;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/risk_decision_type.dart'
    as _i5;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/risk_level_type.dart'
    as _i6;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart'
    as _i20;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/user_not_found_exception.dart'
    as _i21;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/user_pool_add_on_not_enabled_exception.dart'
    as _i22;
import 'package:built_collection/built_collection.dart' as _i23;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.AdminListUserAuthEventsRequest.serializers,
  ..._i3.EventType.serializers,
  ..._i4.EventResponseType.serializers,
  ..._i5.RiskDecisionType.serializers,
  ..._i6.RiskLevelType.serializers,
  ..._i7.EventRiskType.serializers,
  ..._i8.ChallengeName.serializers,
  ..._i9.ChallengeResponse.serializers,
  ..._i10.ChallengeResponseType.serializers,
  ..._i11.EventContextDataType.serializers,
  ..._i12.FeedbackValueType.serializers,
  ..._i13.EventFeedbackType.serializers,
  ..._i14.AuthEventType.serializers,
  ..._i15.AdminListUserAuthEventsResponse.serializers,
  ..._i16.InternalErrorException.serializers,
  ..._i17.InvalidParameterException.serializers,
  ..._i18.NotAuthorizedException.serializers,
  ..._i19.ResourceNotFoundException.serializers,
  ..._i20.TooManyRequestsException.serializers,
  ..._i21.UserNotFoundException.serializers,
  ..._i22.UserPoolAddOnNotEnabledException.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i23.BuiltList,
    [FullType(_i14.AuthEventType)],
  ): _i23.ListBuilder<_i14.AuthEventType>.new,
  const FullType(
    _i23.BuiltList,
    [FullType(_i10.ChallengeResponseType)],
  ): _i23.ListBuilder<_i10.ChallengeResponseType>.new,
};
