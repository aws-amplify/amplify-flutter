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
