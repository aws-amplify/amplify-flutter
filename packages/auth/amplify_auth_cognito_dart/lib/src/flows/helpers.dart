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

@internal
library amplify_auth_cognito.flow.helpers;

import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:meta/meta.dart';

/// Computes the client's secret hash for use in Cognito operations.
String computeSecretHash(
  String userId,
  String clientId,
  String clientSecret,
) {
  final message = '$userId$clientId';
  final keyBytes = utf8.encode(clientSecret);
  final messageBytes = utf8.encode(message);

  final hash = Hmac(sha256, keyBytes);
  final secretHash = hash.convert(messageBytes).bytes;

  return base64Encode(secretHash);
}
