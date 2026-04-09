// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// The expected license header lines for all Dart files in the Amplify
/// Flutter repository.
const licenseHeader = [
  '// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.',
  '// SPDX-License-Identifier: Apache-2.0',
];

/// File-name suffixes for generated Dart files that should be excluded
/// from the license header check.
const generatedSuffixes = [
  '.g.dart',
  '.freezed.dart',
  '.mocks.dart',
  '.gr.dart',
];

/// Returns `true` if [path] matches a known generated-file suffix.
bool isGeneratedFile(String path) {
  return generatedSuffixes.any(path.endsWith);
}

/// Returns `true` if [content] starts with the expected license header.
///
/// Trailing whitespace on each line is ignored during comparison.
bool hasLicenseHeader(String content) {
  final lines = content.split('\n');
  if (lines.length < licenseHeader.length) return false;

  for (var i = 0; i < licenseHeader.length; i++) {
    if (lines[i].trimRight() != licenseHeader[i]) return false;
  }
  return true;
}
