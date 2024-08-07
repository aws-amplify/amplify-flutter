// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/config/amplify_outputs/auth/identity_provider.dart';
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

extension ToIdentityProvider on SocialProvider {
  IdentityProvider toIdentityProvider() {
    return switch (this) {
      SocialProvider.facebook => IdentityProvider.facebook,
      SocialProvider.google => IdentityProvider.google,
      SocialProvider.amazon => IdentityProvider.amazon,
      SocialProvider.apple => IdentityProvider.apple,
    };
  }
}
