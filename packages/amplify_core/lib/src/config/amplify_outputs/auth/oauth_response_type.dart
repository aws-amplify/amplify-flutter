// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';

/// {@template amplify_core.amplify_outputs.oauth_response_type}
/// The response type for identity providers set on Amazon Cognito.
/// {@endtemplate}
enum OAuthResponseType {
  @JsonValue('code')
  code,

  @JsonValue('token')
  token,
}
