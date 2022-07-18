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

import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_html.dart'
    as dart;
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:path/path.dart' show url;

/// {@macro amplify_auth_cognito.hosted_ui_platform}
class HostedUiPlatformImpl extends dart.HostedUiPlatformImpl {
  /// {@macro amplify_auth_cognito.hosted_ui_platform}
  HostedUiPlatformImpl(super.dependencyManager);

  /// The base URL
  @override
  String get baseUrl {
    final basePath = getBaseElementHrefFromDom() ?? '/';
    return url.join(window.location.origin, basePath);
  }
}
