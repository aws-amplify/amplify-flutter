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

part of 'changelog.dart';

/// Matcher for a semantic version.
final RegExp semverRegex = RegExp(r'\d+\.\d+\.\d+[\d\w\.\+\-]*');

class _ChangelogParser implements NodeVisitor {
  _ChangelogParser(this.logger);

  final AWSLogger? logger;

  final builder = ChangelogBuilder();

  late Version _currentVersion;

  @override
  void visitElementAfter(Element element) {}

  @override
  bool visitElementBefore(Element element) {
    switch (element.type) {
      case ElementType.h2:
        final versionText = element.textContent;
        if (versionText.toLowerCase() == 'next') {
          _currentVersion = nextVersion;
          break;
        }
        final versionMatch = semverRegex.firstMatch(versionText)?.group(0);
        if (versionMatch == null) {
          logger?.debug('Could not parse version: $versionText');
          break;
        }
        _currentVersion = Version.parse(versionMatch);
        break;
      default:
        break;
    }
    builder.versions.add(_currentVersion, element);
    return false;
  }

  @override
  void visitText(Text text) {}
}

/// {@template aft.changelog.changelog_parse_exception}
/// Exception thrown while parsing a changelog.
/// {@endtemplate}
class ChangelogParseException implements Exception {
  /// {@macro aft.changelog.changelog_parse_exception}
  const ChangelogParseException(this.message);

  final String message;

  @override
  String toString() => 'ChangelogParseException: $message';
}

/// The type of [Element] tag.
enum ElementType { h1, h2, h3, h4, h5, h6, ul, li, unknown }

extension ElementX on Element {
  /// The type of [Element] tag.
  ElementType get type {
    if (tag == 'h1') return ElementType.h1;
    if (tag == 'h2') return ElementType.h2;
    if (tag == 'h3') return ElementType.h3;
    if (tag == 'h4') return ElementType.h4;
    if (tag == 'h5') return ElementType.h5;
    if (tag == 'h6') return ElementType.h6;
    if (tag == 'ul') return ElementType.ul;
    if (tag == 'li') return ElementType.li;
    return ElementType.unknown;
  }
}
