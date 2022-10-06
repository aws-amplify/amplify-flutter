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

/// {@template amplify_core.storage.download_data_result}
/// The result of a [StorageDownloadDataOperation].
/// {@endtemplate}
class StorageDownloadDataResult<Item extends StorageItem> {
  /// {@macro amplify_core.storage.download_data_result}
  const StorageDownloadDataResult({
    required this.bytes,
    required this.downloadedItem,
  });

  /// The data of the downloaded object in bytes.
  final List<int> bytes;

  /// The result object containing the properties retrieved from the
  /// [StorageDownloadDataOperation].
  final Item downloadedItem;
}
