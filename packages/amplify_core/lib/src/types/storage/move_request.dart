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

/// {@template amplify_core.storage.move_request}
/// Presents a storage copy request.
/// {@endtemplate}
class StorageMoveRequest<Item extends StorageItem,
    Options extends StorageMoveOptions> {
  /// {@macro amplify_core.storage.move_request}
  const StorageMoveRequest({
    required this.source,
    required this.destination,
    this.options,
  });

  /// Move source object.
  final StorageItemWithAccessLevel<Item> source;

  /// Move destination object.
  final StorageItemWithAccessLevel<Item> destination;

  /// Configurable options of the [StorageMoveRequest].
  final Options? options;
}
