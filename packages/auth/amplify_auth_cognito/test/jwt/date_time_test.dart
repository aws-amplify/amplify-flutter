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

import 'package:amplify_auth_cognito/src/jwt/jwt.dart';
import 'package:test/test.dart';

void main() {
  group('JWT', () {
    test('JsonWebClaims can handle doubles in expiration', () {
      final claims = JsonWebClaims.fromJson(const {'exp': 1300819380.0});
      expect(
        claims.expiration,
        DateTime.fromMillisecondsSinceEpoch(1300819380000, isUtc: true),
      );
    });
  });
}
