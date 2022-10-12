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
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart' as s3;

/// {@template storage.amplify_storage_s3.remove_many_result}
/// The result returned by the Storage S3 plugin `removeMany` API.
/// {@endtemplate}
class S3StorageRemoveManyResult extends StorageRemoveManyResult<S3StorageItem> {
  /// {@macro storage.amplify_storage_s3.remove_many_result}
  const S3StorageRemoveManyResult({
    required super.removedItems,
    this.removeErrors = const [],
  });

  /// A list of [Error] that represents objects that failed to remove.
  ///
  /// Please review the details of an [Error] to learn about the reason of
  /// a failure.
  final List<s3.Error> removeErrors;
}
