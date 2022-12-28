// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/src/config/aws_config_value.dart';
import 'package:aws_common/src/config/aws_path_provider.dart';
import 'package:os_detect/os_detect.dart' as os;

/// The `dart:io` implementation of [AWSPathProvider].
///
/// {@macro aws_common.aws_path_provider}
class AWSPathProviderImpl extends AWSPathProvider {
  /// {@macro aws_common.aws_path_provider}
  const AWSPathProviderImpl() : super.protected();

  @override
  Future<String?> getHomeDirectory({String? forUser}) async {
    // TODO(dnys1): Retrieve user's directory when `forUser` is specified.
    final home = lookupPlatformEnv('HOME');
    if (home != null) {
      return home;
    }
    if (os.isWindows) {
      final userProfile = lookupPlatformEnv('USERPROFILE');
      if (userProfile != null) {
        return userProfile;
      }
      final homeDrive = lookupPlatformEnv('HOMEDRIVE');
      final homePath = lookupPlatformEnv('HOMEPATH');
      if (homeDrive != null && homePath != null) {
        return '$homeDrive$homePath';
      }
    }
    return null;
  }
}
