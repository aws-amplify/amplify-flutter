// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'matcher.g.dart';

enum PathComparator {
  stringEquals,
  booleanEquals,
  allStringEquals,
  anyStringEquals,
}

enum MatcherType {
  success,
  error,
  inputOutput,
  output,
}

@JsonSerializable(
  includeIfNull: false,
)
class Matcher with AWSSerializable, AWSEquatable<Matcher> {
  const Matcher({
    this.success,
    this.errorType,
    this.output,
    this.inputOutput,
  });

  factory Matcher.fromJson(Map<String, Object?> json) =>
      _$MatcherFromJson(json);

  final bool? success;
  final String? errorType;
  final PathMatcher? output;
  final PathMatcher? inputOutput;

  @override
  List<Object?> get props => [success, errorType, inputOutput, output];

  MatcherType get type {
    if (success != null) {
      return MatcherType.success;
    }
    if (errorType != null) {
      return MatcherType.error;
    }
    if (inputOutput != null) {
      return MatcherType.inputOutput;
    }
    if (output != null) {
      return MatcherType.output;
    }
    throw StateError('Unknown matcher type: $this');
  }

  @override
  Map<String, Object?> toJson() => _$MatcherToJson(this);
}

@JsonSerializable(
  includeIfNull: false,
)
class PathMatcher {
  const PathMatcher({
    required this.path,
    required this.expected,
    required this.comparator,
  });

  factory PathMatcher.fromJson(Map<String, Object?> json) =>
      _$PathMatcherFromJson(json);

  final String path;
  final String expected;
  final PathComparator comparator;

  Map<String, Object?> toJson() => _$PathMatcherToJson(this);
}
