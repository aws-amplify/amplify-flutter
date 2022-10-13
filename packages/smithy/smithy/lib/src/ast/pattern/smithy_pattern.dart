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

import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:smithy/ast.dart';

class SmithyPattern with AWSEquatable<SmithyPattern> {
  SmithyPattern(
    this.pattern,
    this.segments, {
    bool allowsGreedyLabels = true,
  }) {
    _checkForDuplicateLabels();
    if (allowsGreedyLabels) {
      _checkForLabelsAfterGreedyLabels();
    } else if (segments.any((segment) => segment.isGreedyLabel)) {
      throw InvalidPatternError(
        'Pattern must not contain a greedy label. Found $pattern',
      );
    }
  }

  void _checkForDuplicateLabels() {
    final Set<String> labels = {};
    for (final segment in segments) {
      if (segment.isLabel && !labels.add(segment.content.toLowerCase())) {
        throw InvalidPatternError(
          'Label `${segment.content}` is defined more than once '
          'in pattern: $pattern',
        );
      }
    }
  }

  /// Make sure at most one greedy label exists, and that it is the
  /// last label segment.
  void _checkForLabelsAfterGreedyLabels() {
    for (var i = 0; i < segments.length; i++) {
      final s = segments[i];
      if (s.isGreedyLabel) {
        for (var j = i + 1; j < segments.length; j++) {
          if (segments[j].isGreedyLabel) {
            throw InvalidPatternError(
              'At most one greedy label segment may exist in a pattern: '
              '$pattern',
            );
          } else if (segments[j].isLabel) {
            throw InvalidPatternError(
              'A greedy label must be the last label in its pattern: '
              '$pattern',
            );
          }
        }
      }
    }
  }

  final String pattern;
  final List<Segment> segments;

  @override
  List<Object> get props => [pattern, segments];

  /// All segments that are labels.
  Iterable<Segment> get labels => segments.where((segment) => segment.isLabel);

  /// Gets the greedy label of the pattern, if present.
  Segment? get greedyLabel =>
      segments.firstWhereOrNull((segment) => segment.isGreedyLabel);

  /// Get a label by case-insensitive name.
  Segment? getLabel(String name) => segments.firstWhereOrNull(
        (segment) =>
            segment.isLabel &&
            segment.content.toLowerCase() == name.toLowerCase(),
      );

  @override
  String toString() => pattern;
}
