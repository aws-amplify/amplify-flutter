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

/// {@template amplify_core.storage.list_result}
/// Presents the result of a [StorageListOperation].
/// {@endtemplate}
class StorageListResult<Item extends StorageItem> {
  /// {@macro amplify_core.storage.list_result}
  const StorageListResult(
    this.items, {
    required this.hasNextPage,
    this.nextToken,
  });

  /// The objects listed in the current page.
  final List<Item> items;

  /// Whether has next page that can be listed using [nextToken].
  final bool hasNextPage;

  /// Token used to list the next page.
  final String? nextToken;
}
