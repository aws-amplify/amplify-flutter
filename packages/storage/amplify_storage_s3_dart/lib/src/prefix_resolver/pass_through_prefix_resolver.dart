// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template amplify_storage_s3_dart.passthrough_resolver}
/// A S3 prefix resolver that doesn't add extra prefix.
/// {@endtemplate}
class PassThroughPrefixResolver implements S3PrefixResolver {
  /// {@macro amplify_storage_s3_dart.passthrough_resolver}
  const PassThroughPrefixResolver();

  @override
  Future<String> resolvePrefix({
    required StorageAccessLevel accessLevel,
    String? identityId,
  }) async {
    return '';
  }
}
