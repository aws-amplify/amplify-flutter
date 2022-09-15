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

/// {@template storage.amplify_storage_s3.list_operation}
/// An operation created by calling Storage S3 plugin `list` API.
/// {@endtemplate}
class S3StorageListOperation extends StorageListOperation<
    StorageListRequest<S3StorageListOptions>, S3StorageListResult> {
  /// {@macro storage.amplify_storage_s3.list_operation}
  S3StorageListOperation({
    required super.request,
    required super.result,
  });
}
