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

/// Categories
export 'src/category/amplify_categories.dart';

/// Analytics
export 'src/types/analytics/analytics_types.dart';

/// API
export 'src/types/api/api_types.dart';

/// Auth
export 'src/types/auth/auth_types.dart';

/// Config
export 'src/types/config/amplify_config.dart';

/// Exceptions
export 'src/types/exception/amplify_already_configured_exception.dart';
export 'src/types/exception/amplify_exception.dart';
export 'src/types/exception/amplify_exception_messages.dart';
export 'src/types/exception/codegen_exception.dart';

/// Hub
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

/// Plugin
export 'src/types/plugin/amplify_analytics_plugin_interface.dart';
export 'src/types/plugin/amplify_auth_plugin_interface.dart';
export 'src/types/plugin/amplify_plugin_interface.dart';
export 'src/types/plugin/amplify_storage_plugin_interface.dart';

/// Query
export 'src/types/query/query_field.dart';

/// Storage
export 'src/types/storage/storage_types.dart';

/// Temporal
export 'src/types/temporal/datetime_parse.dart';
export 'src/types/temporal/temporal_date.dart';
export 'src/types/temporal/temporal_datetime.dart';
export 'src/types/temporal/temporal_time.dart';
export 'src/types/temporal/temporal_timestamp.dart';

// Util
export 'src/util/parsers.dart';
export 'src/util/serializable.dart';
