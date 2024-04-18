// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

class DeleteUserResponse {
  DeleteUserResponse.fromJson(String resolverData) {
    final parsedMap = (jsonDecode(resolverData) as Map).cast();
    success = parsedMap['deleteUser']['success'] as bool;
    error = parsedMap['deleteUser']['error'] as String?;
  }
  late bool success;
  String? error;
}
