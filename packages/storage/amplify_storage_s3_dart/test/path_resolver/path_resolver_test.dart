// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/src/path_resolver/s3_path_resolver.dart';
import 'package:test/test.dart';

class MockTokenIdentityAmplifyAuthProvider
    implements TokenIdentityAmplifyAuthProvider {
  @override
  Future<AWSBaseHttpRequest> authorizeRequest(
    AWSBaseHttpRequest request, {
    covariant AuthProviderOptions? options,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<String> getIdentityId() async {
    return 'mock-id';
  }

  @override
  Future<String> getLatestAuthToken() => throw UnimplementedError();
}

void main() {
  group('S3PathResolver', () {
    final pathResolver = S3PathResolver(
      identityProvider: MockTokenIdentityAmplifyAuthProvider(),
    );

    test('should resolve static strings', () async {
      final path = StoragePath.fromString('/foo/bar/picture.png');
      expect(
        await pathResolver.resolvePath(path: path),
        '/foo/bar/picture.png',
      );
    });

    test('should resolve path with identity Id', () async {
      final path = StoragePath.withIdentityId((id) => '/foo/$id/picture.png');
      expect(
        await pathResolver.resolvePath(path: path),
        '/foo/mock-id/picture.png',
      );
    });

    test('should throw if the path does not start with a leading "/"',
        () async {
      final path = StoragePath.fromString('foo/bar/picture.png');
      expect(
        () => pathResolver.resolvePath(path: path),
        throwsA(isA<StoragePathValidationException>()),
      );
    });
  });
}
