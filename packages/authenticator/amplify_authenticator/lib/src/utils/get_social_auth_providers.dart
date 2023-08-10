import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';
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
    return describeEnum(a).compareTo(describeEnum(b));
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
