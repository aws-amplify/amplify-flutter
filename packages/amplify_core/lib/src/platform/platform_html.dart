// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:html';

final RegExp _edgeRegex = RegExp(r'Edg/[\d\.]+');
final RegExp _operaRegex = RegExp(r'OPR/[\d\.]+');
final RegExp _chromeRegex = RegExp(r'Chrome/[\d\.]+');
final RegExp _firefoxRegex = RegExp(r'Firefox/[\d\.]+');
final RegExp _safariRegex = RegExp(r'Version/[\d\.]+');

/// {@macro amplify_core.platform.os_identifier}
String get osIdentifier {
  final userAgent = window.navigator.userAgent;
  // Order here is important since different browsers include each others'
  // tags in their user agents. Per MDN, this is for compatibility reasons:
  // https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/User-Agent
  var identifier = _edgeRegex.firstMatch(userAgent)?.group(0) ??
      _operaRegex.firstMatch(userAgent)?.group(0) ??
      _chromeRegex.firstMatch(userAgent)?.group(0) ??
      _firefoxRegex.firstMatch(userAgent)?.group(0);
  if (identifier == null) {
    final safariMatch = _safariRegex.firstMatch(userAgent)?.group(0);
    if (safariMatch != null) {
      identifier = safariMatch.replaceFirst('Version', 'Safari');
    }
  }
  return identifier ?? 'Browser/Unknown';
}
