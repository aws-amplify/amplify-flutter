// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template storage.amplify_storage_s3.remove_options}
/// The configurable parameters invoking the Storage S3 plugin `remove`
/// API.
/// {@endtemplate}
class S3RemoveOptions extends StorageRemoveOptions {
  /// {@macro storage.amplify_storage_s3.remove_options}
  const S3RemoveOptions({
    super.accessLevel = StorageAccessLevel.guest,
  });
}
