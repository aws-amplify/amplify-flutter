// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/alias_exists_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/analytics_metadata_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/associate_software_token_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/associate_software_token_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/attribute_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/auth_flow_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/authentication_result_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/challenge_name_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/change_password_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/change_password_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_delivery_details_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_delivery_failure_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_mismatch_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/concurrent_modification_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_device_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_device_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_forgot_password_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_forgot_password_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_sign_up_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_sign_up_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/delete_user_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/delivery_medium_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/device_remembered_status_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/device_secret_verifier_config_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/device_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/enable_software_token_mfa_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/expired_code_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/forbidden_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/forget_device_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/forgot_password_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/forgot_password_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/get_device_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/get_device_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/get_user_attribute_verification_code_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/get_user_attribute_verification_code_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/get_user_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/get_user_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/global_sign_out_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/global_sign_out_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/initiate_auth_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/initiate_auth_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_email_role_access_policy_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_lambda_response_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_password_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_sms_role_access_policy_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_sms_role_trust_relationship_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_user_pool_configuration_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/limit_exceeded_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/list_devices_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/list_devices_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/mfa_method_not_found_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/mfa_option_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/new_device_metadata_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/password_reset_required_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/resend_confirmation_code_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/resend_confirmation_code_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/respond_to_auth_challenge_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/respond_to_auth_challenge_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/revoke_token_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/revoke_token_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/set_user_mfa_preference_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/set_user_mfa_preference_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/sign_up_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/sign_up_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/sms_mfa_settings_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/software_token_mfa_not_found_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/software_token_mfa_settings_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/too_many_failed_attempts_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/unauthorized_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/unexpected_lambda_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/unsupported_operation_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/unsupported_token_type_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/update_device_status_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/update_device_status_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/update_user_attributes_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/update_user_attributes_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_context_data_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_lambda_validation_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_not_confirmed_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_not_found_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/username_exists_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/verify_software_token_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/verify_software_token_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/verify_software_token_response_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/verify_user_attribute_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/verify_user_attribute_response.dart';
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...AssociateSoftwareTokenRequest.serializers,
  ...AssociateSoftwareTokenResponse.serializers,
  ...ConcurrentModificationException.serializers,
  ...ForbiddenException.serializers,
  ...InternalErrorException.serializers,
  ...InvalidParameterException.serializers,
  ...NotAuthorizedException.serializers,
  ...ResourceNotFoundException.serializers,
  ...SoftwareTokenMfaNotFoundException.serializers,
  ...ChangePasswordRequest.serializers,
  ...ChangePasswordResponse.serializers,
  ...InvalidPasswordException.serializers,
  ...LimitExceededException.serializers,
  ...PasswordResetRequiredException.serializers,
  ...TooManyRequestsException.serializers,
  ...UserNotConfirmedException.serializers,
  ...UserNotFoundException.serializers,
  ...DeviceSecretVerifierConfigType.serializers,
  ...ConfirmDeviceRequest.serializers,
  ...ConfirmDeviceResponse.serializers,
  ...InvalidLambdaResponseException.serializers,
  ...InvalidUserPoolConfigurationException.serializers,
  ...UsernameExistsException.serializers,
  ...AnalyticsMetadataType.serializers,
  ...UserContextDataType.serializers,
  ...ConfirmForgotPasswordRequest.serializers,
  ...ConfirmForgotPasswordResponse.serializers,
  ...CodeMismatchException.serializers,
  ...ExpiredCodeException.serializers,
  ...TooManyFailedAttemptsException.serializers,
  ...UnexpectedLambdaException.serializers,
  ...UserLambdaValidationException.serializers,
  ...ConfirmSignUpRequest.serializers,
  ...ConfirmSignUpResponse.serializers,
  ...AliasExistsException.serializers,
  ...DeleteUserRequest.serializers,
  ...ForgetDeviceRequest.serializers,
  ...ForgotPasswordRequest.serializers,
  ...DeliveryMediumType.serializers,
  ...CodeDeliveryDetailsType.serializers,
  ...ForgotPasswordResponse.serializers,
  ...CodeDeliveryFailureException.serializers,
  ...InvalidEmailRoleAccessPolicyException.serializers,
  ...InvalidSmsRoleAccessPolicyException.serializers,
  ...InvalidSmsRoleTrustRelationshipException.serializers,
  ...GetDeviceRequest.serializers,
  ...AttributeType.serializers,
  ...DeviceType.serializers,
  ...GetDeviceResponse.serializers,
  ...GetUserRequest.serializers,
  ...MfaOptionType.serializers,
  ...GetUserResponse.serializers,
  ...GetUserAttributeVerificationCodeRequest.serializers,
  ...GetUserAttributeVerificationCodeResponse.serializers,
  ...GlobalSignOutRequest.serializers,
  ...GlobalSignOutResponse.serializers,
  ...AuthFlowType.serializers,
  ...InitiateAuthRequest.serializers,
  ...ChallengeNameType.serializers,
  ...NewDeviceMetadataType.serializers,
  ...AuthenticationResultType.serializers,
  ...InitiateAuthResponse.serializers,
  ...ListDevicesRequest.serializers,
  ...ListDevicesResponse.serializers,
  ...ResendConfirmationCodeRequest.serializers,
  ...ResendConfirmationCodeResponse.serializers,
  ...RespondToAuthChallengeRequest.serializers,
  ...RespondToAuthChallengeResponse.serializers,
  ...MfaMethodNotFoundException.serializers,
  ...RevokeTokenRequest.serializers,
  ...RevokeTokenResponse.serializers,
  ...UnauthorizedException.serializers,
  ...UnsupportedOperationException.serializers,
  ...UnsupportedTokenTypeException.serializers,
  ...SmsMfaSettingsType.serializers,
  ...SoftwareTokenMfaSettingsType.serializers,
  ...SetUserMfaPreferenceRequest.serializers,
  ...SetUserMfaPreferenceResponse.serializers,
  ...SignUpRequest.serializers,
  ...SignUpResponse.serializers,
  ...DeviceRememberedStatusType.serializers,
  ...UpdateDeviceStatusRequest.serializers,
  ...UpdateDeviceStatusResponse.serializers,
  ...UpdateUserAttributesRequest.serializers,
  ...UpdateUserAttributesResponse.serializers,
  ...VerifySoftwareTokenRequest.serializers,
  ...VerifySoftwareTokenResponseType.serializers,
  ...VerifySoftwareTokenResponse.serializers,
  ...EnableSoftwareTokenMfaException.serializers,
  ...VerifyUserAttributeRequest.serializers,
  ...VerifyUserAttributeResponse.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.MapBuilder<String, String>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AttributeType)],
  ): _i2.ListBuilder<AttributeType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(MfaOptionType)],
  ): _i2.ListBuilder<MfaOptionType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(String)],
  ): _i2.ListBuilder<String>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType.nullable(String),
    ],
  ): _i2.MapBuilder<String, String?>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DeviceType)],
  ): _i2.ListBuilder<DeviceType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CodeDeliveryDetailsType)],
  ): _i2.ListBuilder<CodeDeliveryDetailsType>.new,
};
