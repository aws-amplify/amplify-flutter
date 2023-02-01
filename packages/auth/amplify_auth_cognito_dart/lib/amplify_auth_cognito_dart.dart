// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Amplify Auth Cognito for Dart
library amplify_auth_cognito_dart;

export 'package:amplify_core/src/types/auth/auth_types.dart';

export 'src/auth_plugin_impl.dart';
export 'src/credentials/legacy_credential_provider.dart';
export 'src/exception/device_not_tracked_exception.dart';
export 'src/exception/invalid_account_type_exception.dart';
export 'src/flows/hosted_ui/hosted_ui_platform.dart';
export 'src/jwt/src/cognito.dart';
export 'src/jwt/src/token.dart';
// Models
export 'src/model/attribute/cognito_resend_user_attribute_confirmation_code_options.dart';
export 'src/model/attribute/cognito_update_user_attribute_options.dart';
export 'src/model/attribute/cognito_update_user_attribute_step.dart';
export 'src/model/attribute/cognito_update_user_attributes_options.dart';
export 'src/model/auth_result.dart';
export 'src/model/device/cognito_device.dart';
export 'src/model/hosted_ui/oauth_parameters.dart';
export 'src/model/password/cognito_confirm_reset_password_options.dart';
export 'src/model/password/cognito_reset_password_options.dart';
export 'src/model/password/cognito_reset_password_result.dart';
export 'src/model/password/cognito_update_password_options.dart';
export 'src/model/session/cognito_auth_session.dart';
export 'src/model/session/cognito_auth_user.dart';
export 'src/model/session/cognito_session_options.dart';
export 'src/model/session/cognito_sign_in_details.dart';
export 'src/model/session/cognito_user_pool_tokens.dart';
export 'src/model/session/federate_to_identity_pool_options.dart';
export 'src/model/session/federate_to_identity_pool_request.dart';
export 'src/model/session/federate_to_identity_pool_result.dart';
export 'src/model/signin/cognito_confirm_sign_in_options.dart';
export 'src/model/signin/cognito_sign_in_options.dart';
export 'src/model/signin/cognito_sign_in_result.dart';
export 'src/model/signin/cognito_sign_in_step.dart';
export 'src/model/signin/cognito_sign_in_with_web_ui_options.dart';
export 'src/model/signout/cognito_sign_out_result.dart';
export 'src/model/signout/cognito_sign_out_with_web_ui_options.dart';
export 'src/model/signup/cognito_confirm_sign_up_options.dart';
export 'src/model/signup/cognito_resend_sign_up_code_options.dart';
export 'src/model/signup/cognito_resend_sign_up_code_result.dart';
export 'src/model/signup/cognito_sign_up_options.dart';
export 'src/model/signup/cognito_sign_up_result.dart';
export 'src/model/signup/cognito_sign_up_step.dart';
export 'src/sdk/sdk_exception.dart' hide transformSdkException;
export 'src/state/cognito_state_machine.dart';
// State Machine
export 'src/state/event/auth_event.dart';
export 'src/state/event/credential_store_event.dart';
export 'src/state/event/fetch_auth_session_event.dart';
export 'src/state/event/hosted_ui_event.dart';
export 'src/state/event/sign_in_event.dart';
export 'src/state/event/sign_up_event.dart';
export 'src/state/state/auth_state.dart';
export 'src/state/state/credential_store_state.dart';
export 'src/state/state/fetch_auth_session_state.dart';
export 'src/state/state/hosted_ui_state.dart';
export 'src/state/state/sign_in_state.dart';
export 'src/state/state/sign_up_state.dart';
