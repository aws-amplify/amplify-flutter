// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/config/aws_profile_file.dart';
import 'package:aws_common/src/config/config_file/file_loader.dart';
import 'package:aws_common/src/config/config_file/resolved_file.dart';

/// {@macro aws_common.config_file.file_loader}
class AWSFileLoaderImpl extends AWSFileLoader {
  /// {@macro aws_common.config_file.file_loader}
  const AWSFileLoaderImpl({
    AWSPathProvider? pathProvider,
  })  : _pathProvider = pathProvider ?? const AWSPathProvider(),
        super.protected();

  /// The path provider for locating configuration files.
  final AWSPathProvider _pathProvider;

  /// If a file is not found or cannot be opened in the configured location,
  /// treat it as an empty file.
  ResolvedFile _empty(AWSProfileFileType type) => ResolvedFile.empty(type);

  @override
  Future<ResolvedFile> loadFile(
    AWSProfileFileType type,
    String filepath,
  ) async {
    final resolvedFilepath = await _pathProvider.resolve(filepath);
    if (resolvedFilepath == null) {
      AWSFileLoader.logger.warn('Could not resolve filepath for: $filepath');
      return _empty(type);
    }
    final file = File(resolvedFilepath);
    if (!await file.exists()) {
      AWSFileLoader.logger.warn('File does not exist: $resolvedFilepath');
      return _empty(type);
    }
    return ResolvedFile(
      type,
      await file.readAsString(),
      resolvedFilepath,
    );
  }
}
