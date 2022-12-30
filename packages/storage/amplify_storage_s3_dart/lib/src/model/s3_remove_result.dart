// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template storage.amplify_storage_s3.remove_result}
/// The result returned by the Storage S3 plugin `remove` API.
/// {@endtemplate}
typedef S3RemoveResult = StorageRemoveResult<S3Item>;
