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
