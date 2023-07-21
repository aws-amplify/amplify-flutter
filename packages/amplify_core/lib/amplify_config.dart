// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Experimental Amplify configuration object which supports non-Amplify CLI resources
/// and easily amending CLI-generated configuration objects.
///
/// **Note:** This API is **experimental** and subject to breaking changes.
@experimental
library amplify_config;

import 'package:meta/meta.dart';

export 'src/config/aws_amplify_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_amplify_logging_constraints.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_amplify_sub_category.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_analytics_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_analytics_pinpoint_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_api_authorization_mode.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_api_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_api_endpoint_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_api_gateway_endpoint_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_app_sync_endpoint_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_auth_cognito_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_auth_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_auth_hosted_ui_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_auth_identity_pool_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_auth_mfa_configuration.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_auth_password_protection_settings.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_auth_user_pool_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_auth_username_attribute.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_logging_cloud_watch_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_logging_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_logging_remote_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_notifications_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_push_notifications_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_push_notifications_pinpoint_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_rest_endpoint_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_storage_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_storage_s3_bucket.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_storage_s3_config.dart';
export 'src/generated/src/amplify_configuration_service/model/aws_user_log_level.dart';
