// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/config/aws_profile_file.dart';
import 'package:meta/meta.dart';

/// {@template aws_common.config_file.resolved_file}
/// A file loaded from [filepath] with string [contents].
/// {@endtemplate}
@internal
class ResolvedFile with AWSEquatable<ResolvedFile> {
  /// {@macro aws_common.config_file.resolved_file}
  const ResolvedFile(this.type, this.contents, [this.filepath]);

  /// An empty file.
  const ResolvedFile.empty(this.type)
      : filepath = null,
        contents = '';

  /// The type of profile file this represents.
  final AWSProfileFileType type;

  /// The path from which [contents] was loaded, if any.
  final String? filepath;

  /// The contents of the file.
  final String contents;

  @override
  List<Object?> get props => [type, filepath, contents];
}
