/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

library amplify_flutter;

import 'src/amplify_impl.dart';

export 'package:amplify_core/amplify_core.dart';

// Amplify interface
export 'src/amplify_impl.dart';

// Config
export 'src/config/amplify_config.dart';
export 'src/config/amplify_plugin_config.dart' hide UnknownPluginConfigFactory;
export 'src/config/amplify_plugin_registry.dart';
export 'src/config/analytics/analytics_config.dart';
export 'src/config/api/api_config.dart';
export 'src/config/auth/auth_config.dart';
export 'src/config/config_map.dart';
export 'src/config/storage/storage_config.dart';

// Utilities
export 'src/utils/equatable.dart';
export 'src/utils/json.dart';
export 'src/utils/serializable.dart';

/// Top level singleton Amplify object.
AmplifyClass get Amplify => AmplifyClass.instance;

set Amplify(AmplifyClass amplifyClass) {
  AmplifyClass.instance = amplifyClass;
}

// ignore_for_file: non_constant_identifier_names
