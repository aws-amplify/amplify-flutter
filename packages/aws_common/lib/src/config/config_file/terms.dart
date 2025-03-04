// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
