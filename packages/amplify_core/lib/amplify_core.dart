// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library amplify_core;

import 'src/amplify_class.dart';

/// Common types
export 'package:aws_common/aws_common.dart';
export 'package:aws_signature_v4/aws_signature_v4.dart'
    show AWSCredentials, ServiceConfiguration;

export 'src/amplify_class.dart';

/// Categories
export 'src/category/amplify_auth_category.dart';
export 'src/category/amplify_categories.dart';

/// Config
export 'src/config/amplify_config.dart';
export 'src/config/amplify_plugin_config.dart' hide UnknownPluginConfigFactory;
export 'src/config/amplify_plugin_registry.dart';
export 'src/config/analytics/analytics_config.dart';
export 'src/config/api/api_config.dart';
export 'src/config/auth/auth_config.dart';
export 'src/config/config_map.dart';
export 'src/config/notifications/notifications_config.dart';
export 'src/config/storage/storage_config.dart';

/// HTTP
export 'src/http/amplify_http_client.dart';

/// Hub
export 'src/hub/amplify_hub.dart';
export 'src/hub/hub_channel.dart';
export 'src/hub/hub_event.dart';

/// Logger
export 'src/logger/amplify_logger.dart';

/// Plugin
export 'src/plugin/amplify_analytics_plugin_interface.dart';
export 'src/plugin/amplify_api_plugin_interface.dart';
export 'src/plugin/amplify_auth_plugin_interface.dart';
export 'src/plugin/amplify_datastore_plugin_interface.dart';
export 'src/plugin/amplify_plugin_interface.dart';
export 'src/plugin/amplify_plugin_key.dart';
export 'src/plugin/amplify_push_notifications_plugin_interface.dart';
export 'src/plugin/amplify_storage_plugin_interface.dart';

/// State Machine
export 'src/state_machine/dependency_manager.dart';
export 'src/state_machine/event.dart';
export 'src/state_machine/exception.dart';
export 'src/state_machine/state.dart';
export 'src/state_machine/state_machine.dart';
export 'src/state_machine/token.dart';
export 'src/state_machine/transition.dart';

/// Analytics
export 'src/types/analytics/analytics_types.dart';

/// API
export 'src/types/api/api_types.dart';

/// App path provider
export 'src/types/app_path_provider/app_path_provider.dart';

/// Auth
export 'src/types/auth/auth_types.dart';

/// Auth providers
export 'src/types/common/amplify_auth_provider.dart';

/// Datastore
export 'src/types/datastore/datastore_types.dart' hide DateTimeParse;

/// Exceptions
export 'src/types/exception/amplify_already_configured_exception.dart';
export 'src/types/exception/amplify_exception.dart';
export 'src/types/exception/amplify_exception_messages.dart';
export 'src/types/exception/codegen_exception.dart';
export 'src/types/exception/error/amplify_error.dart';
export 'src/types/exception/error/configuration_error.dart';
export 'src/types/exception/error/plugin_error.dart';
export 'src/types/exception/network_exception.dart';
export 'src/types/exception/url_launcher_exception.dart';

/// Model-based types used in datastore and API
export 'src/types/models/auth_rule.dart';
export 'src/types/models/model.dart';
export 'src/types/models/model_association.dart';
export 'src/types/models/model_field.dart';
export 'src/types/models/model_field_definition.dart';
export 'src/types/models/model_field_type.dart';
export 'src/types/models/model_index.dart';
export 'src/types/models/model_provider.dart';
export 'src/types/models/model_schema.dart';
export 'src/types/models/model_schema_definition.dart';

/// Notifications
export 'src/types/notifications/notification_types.dart';

/// Query
export 'src/types/query/query_exception.dart';
export 'src/types/query/query_field.dart';
export 'src/types/query/query_model_identifier.dart';

/// Storage
export 'src/types/storage/storage_types.dart';

/// Temporal
export 'src/types/temporal/temporal_date.dart';
export 'src/types/temporal/temporal_datetime.dart';
export 'src/types/temporal/temporal_time.dart';
export 'src/types/temporal/temporal_timestamp.dart';

/// Util
export 'src/util/parsers.dart';
export 'src/util/serializable.dart';
export 'src/util/uuid.dart';

/// Top level singleton Amplify object.
AmplifyClass get Amplify {
  return AmplifyClass.instance ??= AmplifyClass();
}

set Amplify(AmplifyClass amplifyClass) {
  AmplifyClass.instance = amplifyClass;
}

// ignore_for_file: non_constant_identifier_names
