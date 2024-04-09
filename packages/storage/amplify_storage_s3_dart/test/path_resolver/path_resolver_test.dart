// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/src/path_resolver/s3_path_resolver.dart';
import 'package:test/test.dart';

class MockTokenIdentityAmplifyAuthProvider
    implements TokenIdentityAmplifyAuthProvider {
  MockTokenIdentityAmplifyAuthProvider({
    this.getIdException,
  });

  Exception? getIdException;
  int getIdCount = 0;

  @override
  Future<AWSBaseHttpRequest> authorizeRequest(
    AWSBaseHttpRequest request, {
    covariant AuthProviderOptions? options,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<String> getIdentityId() async {
    getIdCount++;
    if (getIdException != null) throw getIdException!;
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
      const path = StoragePath.fromString('foo/bar/picture.png');
      expect(
        await pathResolver.resolvePath(path: path),
        'foo/bar/picture.png',
      );
    });

    test('should resolve multiple static strings', () async {
      const path1 = StoragePath.fromString('foo/bar/picture1.png');
      const path2 = StoragePath.fromString('foo/bar/picture2.png');
      expect(
        await pathResolver.resolvePaths(paths: [path1, path2]),
        ['foo/bar/picture1.png', 'foo/bar/picture2.png'],
      );
    });

    test('should resolve path with identity Id', () async {
      final path = StoragePath.fromIdentityId((id) => 'foo/$id/picture.png');
      expect(
        await pathResolver.resolvePath(path: path),
        'foo/mock-id/picture.png',
      );
    });

    test('should resolve multiple paths with identity Id', () async {
      final tokenAmplifyAuthProvider = MockTokenIdentityAmplifyAuthProvider();
      final pathResolver = S3PathResolver(
        identityProvider: tokenAmplifyAuthProvider,
      );
      final path1 = StoragePath.fromIdentityId((id) => 'foo/$id/picture1.png');
      final path2 = StoragePath.fromIdentityId((id) => 'foo/$id/picture2.png');
      expect(
        await pathResolver.resolvePaths(paths: [path1, path2]),
        ['foo/mock-id/picture1.png', 'foo/mock-id/picture2.png'],
      );
      expect(tokenAmplifyAuthProvider.getIdCount, 1);
    });

    test('should throw if the path starts with a leading "/"', () async {
      const path = StoragePath.fromString('/foo/bar/picture.png');
      expect(
        () => pathResolver.resolvePath(path: path),
        throwsA(isA<StoragePathValidationException>()),
      );
    });

    test('should throw if the path is empty', () async {
      const path = StoragePath.fromString('');
      expect(
        () => pathResolver.resolvePath(path: path),
        throwsA(isA<StoragePathValidationException>()),
      );
    });

    test(
        'should throw StorageAccessDeniedException if AuthProvider throws SessionExpiredException',
        () async {
      final tokenAmplifyAuthProvider = MockTokenIdentityAmplifyAuthProvider(
        getIdException: const SessionExpiredException('Session Expired.'),
      );
      final pathResolver = S3PathResolver(
        identityProvider: tokenAmplifyAuthProvider,
      );
      final path = StoragePath.fromIdentityId((id) => 'foo/$id/bar');
      expect(
        () => pathResolver.resolvePath(path: path),
        throwsA(isA<StorageAccessDeniedException>()),
      );
    });

    test('should throw UnknownException for any other exception', () async {
      final tokenAmplifyAuthProvider = MockTokenIdentityAmplifyAuthProvider(
        getIdException: Exception('Something went wrong.'),
      );
      final pathResolver = S3PathResolver(
        identityProvider: tokenAmplifyAuthProvider,
      );
      final path = StoragePath.fromIdentityId((id) => 'foo/$id/bar');
      expect(
        () => pathResolver.resolvePath(path: path),
        throwsA(isA<UnknownException>()),
      );
    });
  });
}
