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

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.list_request}
/// Presents a storage list request.
/// {@endtemplate}
class StorageListRequest<Options extends StorageListOptions> {
  /// {@macro amplify_core.storage.list_request}
  StorageListRequest({
    this.path,
    this.options,
  });

  /// Path to list objects under.
  final String? path;

  /// Configurable options of the list request.
  final Options? options;
}
