// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';

enum SocialProvider {
  @JsonValue('FACEBOOK')
  facebook,

  @JsonValue('GOOGLE')
  google,

  @JsonValue('AMAZON')
  amazon,

  @JsonValue('APPLE')
  apple,
}
