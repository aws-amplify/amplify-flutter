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
