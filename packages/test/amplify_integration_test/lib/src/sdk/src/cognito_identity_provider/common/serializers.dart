// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_integration_test.cognito_identity_provider.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/admin_list_user_auth_events_request.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/admin_list_user_auth_events_response.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/auth_event_type.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/challenge_name.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/challenge_response.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/challenge_response_type.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_context_data_type.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_feedback_type.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_response_type.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_risk_type.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_type.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/feedback_value_type.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/risk_decision_type.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/risk_level_type.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/user_not_found_exception.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/user_pool_add_on_not_enabled_exception.dart';
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...AdminListUserAuthEventsRequest.serializers,
  ...EventType.serializers,
  ...EventResponseType.serializers,
  ...RiskDecisionType.serializers,
  ...RiskLevelType.serializers,
  ...EventRiskType.serializers,
  ...ChallengeName.serializers,
  ...ChallengeResponse.serializers,
  ...ChallengeResponseType.serializers,
  ...EventContextDataType.serializers,
  ...FeedbackValueType.serializers,
  ...EventFeedbackType.serializers,
  ...AuthEventType.serializers,
  ...AdminListUserAuthEventsResponse.serializers,
  ...InternalErrorException.serializers,
  ...InvalidParameterException.serializers,
  ...NotAuthorizedException.serializers,
  ...ResourceNotFoundException.serializers,
  ...TooManyRequestsException.serializers,
  ...UserNotFoundException.serializers,
  ...UserPoolAddOnNotEnabledException.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i2.BuiltList,
    [FullType(AuthEventType)],
  ): _i2.ListBuilder<AuthEventType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ChallengeResponseType)],
  ): _i2.ListBuilder<ChallengeResponseType>.new,
};
