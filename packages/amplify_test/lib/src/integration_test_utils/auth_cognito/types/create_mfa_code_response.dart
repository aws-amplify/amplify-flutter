// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

class CreateMFACodeResponse {
  const CreateMFACodeResponse({
    required this.username,
    required this.code,
  });

  factory CreateMFACodeResponse.fromJson(Map<String, Object?> json) {
    return CreateMFACodeResponse(
      username: json['username'] as String,
      code: json['code'] as String,
    );
  }

  final String username;
  final String code;
}
