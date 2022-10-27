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

@internal
library aws_common.config.config_file.terms;

import 'package:meta/meta.dart';

/// A single piece of content between line breaks.
final RegExp lineExp = RegExp(r'[^\r\n]*');

/// A platform-independent line break.
final RegExp lineBreakExp = RegExp(r'[\r\n]');

/// A left (`[`) or right (`]`) bracket.
final RegExp brackets = RegExp(r'[\[\]]');

/// A comment.
final RegExp commentExp = RegExp(r'[#;]');

/// A comment which follows a whitespace character.
final RegExp trailingCommentExp = RegExp(r'[ \t][#;]');

/// The `profile` prefix.
final RegExp profilePrefix = RegExp(r'^profile[ \t]');

/// A valid profile and property name identifier.
final RegExp validIdentifier = RegExp(r'^[A-Za-z0-9_\\-]*$');

/// Spacing used for ease of readability.
final RegExp whitespaceExp = RegExp(r'[\t ]*');

/// A unique reference that indexes a particular resource.
final RegExp identifierExp = RegExp(r'[A-Za-z0-9_\-/.%@:\+]+');

/// An arbitrary value, indexed by an identifier.
final RegExp valueExp = RegExp(r'.*');
