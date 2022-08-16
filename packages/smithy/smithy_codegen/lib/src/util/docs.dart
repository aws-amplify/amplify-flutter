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

import 'package:html2md/html2md.dart' as html2md;

/// Formats documentation to follow Dart standards.
String formatDocs(String docs) {
  final lines = html2md
      .convert(
        docs,
        rules: [
          // Format <fullname> as H1
          html2md.Rule('fullname', filters: ['fullname'],
              replacement: (text, node) {
            return '## $text\n\n';
          }),

          // Format <p> with line breaks
          html2md.Rule('p', filters: ['p'], replacement: (text, node) {
            return '$text\n\n';
          }),
        ],
      )
      .split('\n')
      .map((doc) => doc.replaceFirst(RegExp(r'^/*'), ''))
      // unescape pre-convert MD
      .map((doc) => doc.replaceAll('\\*', '*').replaceAll('\\.', '.'))
      .toList();

  // Empty lines are not needed
  if (lines.isNotEmpty && lines.first.trim().isEmpty) {
    lines.removeAt(0);
  }
  if (lines.isNotEmpty && lines.last.trim().isEmpty) {
    lines.removeLast();
  }

  return lines.map((doc) => '/// $doc'.trim()).join('\n');
}
