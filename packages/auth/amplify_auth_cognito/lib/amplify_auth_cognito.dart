// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// Amplify Auth Cognito
library amplify_auth_cognito;

export 'package:amplify_core/src/types/auth/auth_types.dart';

export 'src/auth_plugin_impl.dart';

export 'src/model/attribute/cognito_resend_user_attribute_confirmation_code_options.dart';
export 'src/model/attribute/cognito_update_user_attribute_options.dart';
export 'src/model/attribute/cognito_update_user_attributes_options.dart';
export 'src/model/device/cognito_device.dart';
export 'src/model/password/cognito_confirm_reset_password_options.dart';
export 'src/model/password/cognito_reset_password_options.dart';
export 'src/model/password/cognito_reset_password_result.dart';
export 'src/model/password/cognito_update_password_options.dart';
export 'src/model/session/cognito_auth_session.dart';
export 'src/model/session/cognito_session_options.dart';
export 'src/model/session/cognito_user_pool_tokens.dart';
export 'src/model/signin/cognito_confirm_sign_in_options.dart';
export 'src/model/signin/cognito_sign_in_options.dart';
export 'src/model/signin/cognito_sign_in_result.dart';
export 'src/model/signin/cognito_sign_in_step.dart';
export 'src/model/signin/cognito_sign_in_with_web_ui_options.dart';
export 'src/model/signup/cognito_confirm_sign_up_options.dart';
export 'src/model/signup/cognito_resend_sign_up_code_options.dart';
export 'src/model/signup/cognito_resend_sign_up_code_result.dart';
export 'src/model/signup/cognito_sign_up_options.dart';
export 'src/model/signup/cognito_sign_up_result.dart';
export 'src/model/signup/cognito_sign_up_step.dart';
