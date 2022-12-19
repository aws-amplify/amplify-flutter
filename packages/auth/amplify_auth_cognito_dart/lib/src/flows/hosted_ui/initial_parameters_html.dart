// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:html';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';

/// {@macro amplify_auth_cognito.initial_parameters}
OAuthParameters? get initialParameters {
  // Try to deserialize the current route parameters.
  final location = Uri.parse(window.location.href);
  final parameters = {...location.queryParameters};

  // Handle fragment as well e.g. /#/auth?code=...&state=...
  final fragment = location.fragment;
  final parts = fragment.split('?');
  if (parts.length == 2) {
    parameters.addAll(Uri.splitQueryString(parts[1]));
  }

  // If this is a redirect, handle it.
  if (parameters.containsKey('state') &&
      (parameters.containsKey('code') || parameters.containsKey('error'))) {
    return OAuthParameters.fromJson(parameters);
  }

  return null;
}
