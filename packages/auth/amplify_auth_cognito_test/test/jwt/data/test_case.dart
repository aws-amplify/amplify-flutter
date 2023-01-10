// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/jwt/jwt.dart';

class TestCase {
  const TestCase(
    this.algorithm,
    this.privateJwk,
    this.publicJwk,
    this.jwt,
  );

  final Algorithm algorithm;
  final String privateJwk;
  final String publicJwk;
  final String jwt;
}
