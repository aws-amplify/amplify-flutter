// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
// ignore: invalid_use_of_internal_member
import 'package:aws_signature_v4/src/workers/hash_worker.dart';
import 'package:aws_signature_v4/src/workers/hash_worker.worker.vm.dart'
    if (dart.library.js_util) 'package:aws_signature_v4/src/workers/hash_worker.worker.js.dart';
import 'package:test/test.dart';

// ignore: subtype_of_sealed_class
class FakeServiceConfiguration extends BaseServiceConfiguration {
  @override
  // ignore: overridden_fields
  final HashWorker worker = FakeHashWorker();
}

// ignore: subtype_of_sealed_class
class FakeS3ServiceConfiguration extends S3ServiceConfiguration {
  FakeS3ServiceConfiguration({
    super.chunked,
    super.signPayload,
  });

  @override
  // ignore: overridden_fields
  final HashWorker worker = FakeHashWorker();
}

class FakeHashWorker extends HashWorkerImpl {
  @override
  Future<void> spawn({String? jsEntrypoint}) {
    return Future.error('could not spawn');
  }
}

void main() {
  AWSLogger().logLevel = LogLevel.verbose;

  const unencodedPath = r'/spaced path/test$file.txt';
  const encodedPath = '/spaced%20path/test%24file.txt';
  const doubleEncodedPath = '/spaced%2520path/test%2524file.txt';

  group('ServiceConfiguration', () {
    group('base', () {
      final serviceConfiguration = BaseServiceConfiguration();

      test('double encodes path segments', () {
        expect(
          CanonicalPath.canonicalize(
            unencodedPath,
            serviceConfiguration: serviceConfiguration,
          ),
          doubleEncodedPath,
        );

        expect(
          CanonicalPath.canonicalize(
            encodedPath,
            serviceConfiguration: serviceConfiguration,
          ),
          doubleEncodedPath,
        );
      });

      test('can hash request when worker fails', () async {
        final serviceConfiguration = FakeServiceConfiguration();
        // ignore: invalid_use_of_protected_member
        final chunkHash = await serviceConfiguration.hashChunk(
          Uint8List(0),
          -1,
        );
        expect(chunkHash.hash, emptyPayloadHash);
      });
    });

    group('s3', () {
      final serviceConfiguration = S3ServiceConfiguration();

      test('single encodes path segments', () {
        expect(
          CanonicalPath.canonicalize(
            unencodedPath,
            serviceConfiguration: serviceConfiguration,
          ),
          encodedPath,
        );

        expect(
          CanonicalPath.canonicalize(
            encodedPath,
            serviceConfiguration: serviceConfiguration,
          ),
          encodedPath,
        );
      });

      test('can hash request when worker fails', () async {
        final serviceConfiguration = FakeS3ServiceConfiguration(
          signPayload: true,
          chunked: true,
        );
        // ignore: invalid_use_of_protected_member
        final chunkHash = await serviceConfiguration.hashChunk(
          Uint8List(0),
          -1,
        );
        expect(chunkHash.hash, emptyPayloadHash);
      });
    });
  });
}
