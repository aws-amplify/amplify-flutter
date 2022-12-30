// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

const throwExceptionIdentityId = 'throw_me_an_exception';

class TestCustomPrefixResolver extends S3PrefixResolver {
  @override
  Future<String> resolvePrefix({
    required StorageAccessLevel accessLevel,
    String? identityId,
  }) async {
    switch (accessLevel) {
      case StorageAccessLevel.guest:
        return 'normal/';
      case StorageAccessLevel.private:
        return 'vip/';
      case StorageAccessLevel.protected:
        return 'premium/';
    }
  }
}

class TestCustomPrefixResolverThrowsException extends S3PrefixResolver {
  @override
  Future<String> resolvePrefix({
    required StorageAccessLevel accessLevel,
    String? identityId,
  }) async {
    throw Exception('some error');
  }
}
