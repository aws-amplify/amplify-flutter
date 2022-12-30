// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

class DeleteUserResponse {
  late bool success;
  String? error;
  DeleteUserResponse.fromJson(String resolverData) {
    Map<String, dynamic> parsedMap = (jsonDecode(resolverData) as Map).cast();
    success = parsedMap['deleteUser']['success'] as bool;
    error = parsedMap['deleteUser']['error'] as String?;
  }
}
