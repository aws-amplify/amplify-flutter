// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Experimental Amplify configuration object which supports non-Amplify CLI resources
/// and easily amending CLI-generated configuration objects.
///
/// **Note:** This API is **experimental** and subject to breaking changes.
@experimental
library amplify_config;

import 'package:meta/meta.dart';

export 'package:amplify_core/amplify_core.dart'
    show
        AuthProvider,
        AuthenticationFlowType,
        Category,
        CognitoUserAttributeKey,
        LogLevel,
        MfaConfiguration,
        MfaType,
        StorageAccessLevel;

export 'src/config/aws_amplify_config.dart';
export 'src/generated/src/amplify_configuration_service/model/amplify_logging_constraints.dart';
export 'src/generated/src/amplify_configuration_service/model/amplify_sub_category.dart';
export 'src/generated/src/amplify_configuration_service/model/analytics_config.dart';
export 'src/generated/src/amplify_configuration_service/model/analytics_pinpoint_config.dart';
export 'src/generated/src/amplify_configuration_service/model/api_authorization_mode.dart';
export 'src/generated/src/amplify_configuration_service/model/api_config.dart';
export 'src/generated/src/amplify_configuration_service/model/api_endpoint_config.dart';
export 'src/generated/src/amplify_configuration_service/model/api_gateway_endpoint_config.dart';
export 'src/generated/src/amplify_configuration_service/model/app_sync_endpoint_config.dart';
export 'src/generated/src/amplify_configuration_service/model/auth_cognito_config.dart';
export 'src/generated/src/amplify_configuration_service/model/auth_config.dart';
export 'src/generated/src/amplify_configuration_service/model/auth_hosted_ui_config.dart';
export 'src/generated/src/amplify_configuration_service/model/auth_identity_pool_config.dart';
export 'src/generated/src/amplify_configuration_service/model/auth_mfa_configuration.dart';
export 'src/generated/src/amplify_configuration_service/model/auth_password_policy.dart';
export 'src/generated/src/amplify_configuration_service/model/auth_user_pool_config.dart';
export 'src/generated/src/amplify_configuration_service/model/auth_username_attribute.dart';
export 'src/generated/src/amplify_configuration_service/model/logging_cloud_watch_config.dart';
export 'src/generated/src/amplify_configuration_service/model/logging_config.dart';
export 'src/generated/src/amplify_configuration_service/model/logging_remote_config.dart';
export 'src/generated/src/amplify_configuration_service/model/notifications_config.dart';
export 'src/generated/src/amplify_configuration_service/model/push_notifications_config.dart';
export 'src/generated/src/amplify_configuration_service/model/push_notifications_pinpoint_config.dart';
export 'src/generated/src/amplify_configuration_service/model/rest_endpoint_config.dart';
export 'src/generated/src/amplify_configuration_service/model/storage_config.dart';
export 'src/generated/src/amplify_configuration_service/model/storage_s3_bucket.dart';
export 'src/generated/src/amplify_configuration_service/model/storage_s3_config.dart';
export 'src/generated/src/amplify_configuration_service/model/user_log_level.dart';
