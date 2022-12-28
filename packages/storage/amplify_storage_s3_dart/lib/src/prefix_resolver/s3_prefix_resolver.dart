// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_storage_s3_dart.prefix_resolver}
/// Defines the interface of a S3 prefix resolver.
/// {@endtemplate}
abstract class S3PrefixResolver {
  /// {@macro amplify_storage_s3_dart.prefix_resolver}
  const S3PrefixResolver();

  /// Resolve prefix with given [StorageAccessLevel] and optional `identityId`.
  Future<String> resolvePrefix({
    required StorageAccessLevel accessLevel,
    String? identityId,
  });
}
