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

// TODO(dnys1): Investigate DDC failures
@Tags(['no-ddc'])

import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_init_result.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_init_worker.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;

  group('SrpInitWorkerTest', () {
    test('success', () async {
      final worker = SrpInitWorker.create();
      addTearDown(worker.close);

      worker.logs.listen(safePrint);
      await worker.spawn();
      final message = SrpInitMessage();
      worker.add(message);

      expect(
        worker.stream,
        emits(isA<SrpInitResult>()),
      );
    });
  });
}
