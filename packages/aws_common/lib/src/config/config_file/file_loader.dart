// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library aws_common.config_file.file_loader;

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/config/aws_profile_file.dart';
import 'package:aws_common/src/config/config_file/file_loader_stub.dart'
    if (dart.library.io) 'package:aws_common/src/config/config_file/file_loader_io.dart';
import 'package:aws_common/src/config/config_file/parser.dart';
import 'package:aws_common/src/config/config_file/resolved_file.dart';
import 'package:aws_common/src/config/config_file/standardizer.dart';
import 'package:meta/meta.dart';

/// {@template aws_common.config_file.file_loader}
/// Manages loading of files.
/// {@endtemplate}
abstract class AWSFileLoader {
  /// {@macro aws_common.config_file.file_loader}
  const factory AWSFileLoader({
    AWSPathProvider? pathProvider,
  }) = AWSFileLoaderImpl;

  /// {@macro aws_common.config_file.file_loader}
  @protected
  const AWSFileLoader.protected();

  /// Logger for [AWSFileLoader].
  static final AWSLogger logger = AWSLogger('AWSFileLoader');

  /// Loads the file at [filepath] or returns the empty string if unavailable.
  Future<ResolvedFile> loadFile(
    AWSProfileFileType type,
    String filepath,
  );
}

/// {@template aws_common.config_file.profile_file_loader}
/// Loads and merges profiles from the AWS configuration and shared credentials
/// files.
/// {@endtemplate}
class AWSProfileFileLoader {
  /// {@macro aws_common.config_file.profile_file_loader}
  const AWSProfileFileLoader([
    this._fileLoader = const AWSFileLoader(),
  ]);

  final AWSFileLoader _fileLoader;

  /// Loads the merged AWS profile file containing the profile entries for both
  /// the configuration and shared credentials files.
  Future<AWSProfileFile> load({
    ResolvedFile? configFile,
    ResolvedFile? credentialsFile,
  }) async {
    if (configFile == null) {
      final filepath = AWSConfigValue.configFile.value;
      configFile = await _fileLoader.loadFile(
        AWSProfileFileType.config,
        filepath,
      );
    }
    if (credentialsFile == null) {
      final filepath = AWSConfigValue.sharedCredentialsFile.value;
      credentialsFile = await _fileLoader.loadFile(
        AWSProfileFileType.credentials,
        filepath,
      );
    }

    final parsedConfig = AWSProfileFileParser(configFile).parse();
    final parsedCredentials = AWSProfileFileParser(credentialsFile).parse();

    return AWSProfileFileStandardizer.merge(
      parsedConfig,
      parsedCredentials,
    );
  }
}
