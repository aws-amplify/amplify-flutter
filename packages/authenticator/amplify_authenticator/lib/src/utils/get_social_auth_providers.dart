// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';

List<AuthProvider> getSocialAuthProviders(BuildContext context) {
  final socialProviders = InheritedConfig.of(context)
      .amplifyConfig
      ?.auth
      ?.awsPlugin
      ?.auth
      ?.default$
      ?.socialProviders;
  if (socialProviders == null || socialProviders.isEmpty) {
    return const [];
  }

  // Sort Apple first based off their app guidelines.
  socialProviders.sort((a, b) {
    if (a == SocialProvider.apple) {
      return -1;
    } else if (b == SocialProvider.apple) {
      return 1;
    }
    return a.name.compareTo(b.name);
  });
  return socialProviders.map((e) {
    switch (e) {
      case SocialProvider.facebook:
        return AuthProvider.facebook;
      case SocialProvider.google:
        return AuthProvider.google;
      case SocialProvider.amazon:
        return AuthProvider.amazon;
      case SocialProvider.apple:
        return AuthProvider.apple;
    }
  }).toList();
}
