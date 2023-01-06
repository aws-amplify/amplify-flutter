// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/config/aws_path_provider_stub.dart'
    if (dart.library.io) 'package:aws_common/src/config/aws_path_provider_io.dart';
import 'package:meta/meta.dart';
import 'package:os_detect/os_detect.dart' as os;
import 'package:path/path.dart';

/// Matches home directory placeholders + optional user specifier, e.g. `~user`.
final RegExp _homeDirExp = RegExp(r'^~(\w+)?');

/// {@template aws_common.aws_path_provider}
/// Locates paths on the end-user's machine.
/// {@endtemplate}
abstract class AWSPathProvider {
  /// {@macro aws_common.aws_path_provider}
  const factory AWSPathProvider() = AWSPathProviderImpl;

  /// {@macro aws_common.aws_path_provider}
  @protected
  const AWSPathProvider.protected();

  /// Logger for [AWSPathProvider].
  static final AWSLogger logger = AWSLogger('AWSPathProvider');

  /// The OS-dependent `package:path` [Context], with support for overrides
  /// via `package:os_detect`.
  static Context get path => os.isWindows ? windows : posix;

  /// Retrieves the current user's home directory, or the home directory of
  /// [forUser] if specified.
  Future<String?> getHomeDirectory({String? forUser});

  /// Resolves [filepath], replacing all home directory references using
  /// [getHomeDirectory].
  Future<String?> resolve(String filepath) async {
    filepath = filepath.replaceAll('/', path.separator);
    final homeDirExp = _homeDirExp.firstMatch(filepath);
    if (homeDirExp == null) {
      // Specified a full filepath.
      return filepath;
    }
    final specifiedUser = homeDirExp.group(1);
    logger.debug('Getting home directory for user: $specifiedUser');
    final resolvedHome = await getHomeDirectory(
      forUser: specifiedUser,
    );
    logger.debug('Resolved home directory: $resolvedHome');
    if (resolvedHome == null) {
      return null;
    }
    return path.normalize(
      filepath.replaceFirst(_homeDirExp, resolvedHome),
    );
  }
}

/// Helper extensions for [AWSPathProvider].
extension AWSPathProviderExt on AWSPathProvider {
  /// The resolved location of the AWS configuration file.
  Future<String?> get configFileLocation =>
      resolve(AWSConfigValue.configFile.value);

  /// The resolved location of the the AWS shared credentials file.
  Future<String?> get sharedCredentialsFileLocation =>
      resolve(AWSConfigValue.sharedCredentialsFile.value);
}

/// The environment overrides for the current [Zone].
@visibleForTesting
Map<String, String>? get environmentOverrides =>
    Zone.current[#_environment] as Map<String, String>?;

/// Runs [body] with the given environment overrides.
@visibleForTesting
R overrideEnvironment<R>(Map<String, String> environment, R Function() body) {
  return runZoned(body, zoneValues: {#_environment: environment});
}
