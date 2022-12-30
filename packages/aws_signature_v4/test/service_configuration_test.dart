// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:test/test.dart';

void main() {
  const unencodedPath = r'/spaced path/test$file.txt';
  const encodedPath = '/spaced%20path/test%24file.txt';
  const doubleEncodedPath = '/spaced%2520path/test%2524file.txt';

  group('ServiceConfiguration', () {
    group('base', () {
      const serviceConfiguration = BaseServiceConfiguration();

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
    });
  });
}
