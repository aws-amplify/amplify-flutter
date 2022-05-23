//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

library amplify_core;

/// Common types
export 'package:aws_common/aws_common.dart';
export 'package:aws_signature_v4/aws_signature_v4.dart' show AWSCredentials;

/// Categories
export 'src/category/amplify_auth_category.dart';
export 'src/category/amplify_categories.dart';

// Config
export 'src/config/amplify_config.dart';
export 'src/config/amplify_plugin_config.dart' hide UnknownPluginConfigFactory;
export 'src/config/amplify_plugin_registry.dart';
export 'src/config/analytics/analytics_config.dart';
export 'src/config/api/api_config.dart';
export 'src/config/auth/auth_config.dart';
export 'src/config/config_map.dart';
export 'src/config/storage/storage_config.dart';

/// Plugin
export 'src/plugin/amplify_analytics_plugin_interface.dart';
export 'src/plugin/amplify_api_plugin_interface.dart';
export 'src/plugin/amplify_auth_plugin_interface.dart';
export 'src/plugin/amplify_datastore_plugin_interface.dart';
export 'src/plugin/amplify_plugin_interface.dart';
export 'src/plugin/amplify_storage_plugin_interface.dart';

/// Analytics
export 'src/types/analytics/analytics_types.dart';

/// API
export 'src/types/api/api_types.dart';

/// Auth
export 'src/types/auth/auth_types.dart';

/// Datastore
export 'src/types/datastore/datastore_types.dart' hide DateTimeParse;

/// Exceptions
export 'src/types/exception/amplify_already_configured_exception.dart';
export 'src/types/exception/amplify_exception.dart';
export 'src/types/exception/amplify_exception_messages.dart';
export 'src/types/exception/codegen_exception.dart';

/// Hub
export 'src/types/hub/auth/auth_hub_event.dart';
export 'src/types/hub/hub_channel.dart';
export 'src/types/hub/hub_event.dart';
export 'src/types/hub/hub_event_payload.dart';

/// Model-based types used in datastore and API
export 'src/types/models/auth_rule.dart';
export 'src/types/models/model.dart';
export 'src/types/models/model_association.dart';
export 'src/types/models/model_field.dart';
export 'src/types/models/model_field_definition.dart';
export 'src/types/models/model_field_type.dart';
export 'src/types/models/model_provider.dart';
export 'src/types/models/model_schema.dart';
export 'src/types/models/model_schema_definition.dart';

/// Query
export 'src/types/query/query_field.dart';

/// Storage
export 'src/types/storage/storage_types.dart';

/// Temporal
export 'src/types/temporal/temporal_date.dart';
export 'src/types/temporal/temporal_datetime.dart';
export 'src/types/temporal/temporal_time.dart';
export 'src/types/temporal/temporal_timestamp.dart';

// Util
export 'src/util/parsers.dart';
export 'src/util/serializable.dart';
export 'src/util/uuid.dart';
