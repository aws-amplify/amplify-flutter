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

/// Amplify API for Dart
library amplify_api_dart;

export 'package:amplify_core/src/types/api/api_types.dart';

export 'src/api_plugin_impl.dart';

/// Model helpers
export 'src/graphql/model_helpers/model_mutations.dart';
export 'src/graphql/model_helpers/model_queries.dart';
export 'src/graphql/model_helpers/model_subscriptions.dart';

/// Network connectivity util not needed by consumers of Flutter package amplify_api.
export 'src/graphql/web_socket/types/connectivity_platform.dart';
