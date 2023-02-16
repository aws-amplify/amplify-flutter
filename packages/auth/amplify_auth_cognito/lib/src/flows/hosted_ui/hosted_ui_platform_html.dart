// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_html.dart'
    as dart;
// ignore: implementation_imports
import 'package:aws_common/src/js/common.dart';
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
    return url.join(window!.location.origin, basePath);
  }
}
