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

import 'dart:html';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

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
