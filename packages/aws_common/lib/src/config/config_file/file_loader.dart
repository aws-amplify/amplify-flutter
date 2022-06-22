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
library aws_common.config_file.file_loader;

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/config/aws_profile_file.dart';
import 'package:aws_common/src/config/config_file/parser.dart';
import 'package:aws_common/src/config/config_file/standardizer.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

import 'file_loader_stub.dart' if (dart.library.io) 'file_loader_io.dart';
import 'resolved_file.dart';

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
  static final Logger logger = Logger('AWSFileLoader');

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
