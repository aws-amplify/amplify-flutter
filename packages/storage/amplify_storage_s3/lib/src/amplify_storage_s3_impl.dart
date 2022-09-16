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
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

class AmplifyStorageS3 extends AmplifyStorageS3Dart {
  AmplifyStorageS3({
    super.delimiter,
    super.prefixResolver,
  });

  // TODO(HuiSF): replace with S3 specific types to the generic parameters
  /// A plugin key which can be used with `Amplify.Storage.getPlugin` to retrieve
  /// a S3-specific Storage category interface.
  static const StoragePluginKey<
      StorageListOperation,
      StorageListOptions,
      StorageGetPropertiesOperation,
      StorageGetPropertiesOptions,
      StorageGetUrlOperation,
      StorageGetUrlOptions,
      StorageUploadDataOperation,
      StorageUploadDataOptions,
      StorageCopyOperation,
      StorageMoveOperation,
      StorageRemoveOperation,
      StorageRemoveOptions,
      StorageRemoveManyOperation,
      StorageRemoveManyOptions,
      StorageItemWithAccessLevel,
      AmplifyStorageS3Dart> pluginKey = _AmplifyStorageS3PluginKey();
}

// TODO(HuiSF): replace with S3 specific types to the generic parameters
class _AmplifyStorageS3PluginKey extends StoragePluginKey<
    StorageListOperation,
    StorageListOptions,
    StorageGetPropertiesOperation,
    StorageGetPropertiesOptions,
    StorageGetUrlOperation,
    StorageGetUrlOptions,
    StorageUploadDataOperation,
    StorageUploadDataOptions,
    StorageCopyOperation,
    StorageMoveOperation,
    StorageRemoveOperation,
    StorageRemoveOptions,
    StorageRemoveManyOperation,
    StorageRemoveManyOptions,
    StorageItemWithAccessLevel,
    AmplifyStorageS3Dart> {
  const _AmplifyStorageS3PluginKey();

  @override
  String get runtimeTypeName => 'AmplifyStorageS3PluginKey';
}
