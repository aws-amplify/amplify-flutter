// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/aft.dart';
import 'package:glob/glob.dart';

/// Adds globbing options to a command.
mixin GlobOptions on AmplifyCommand {
  @override
  void init() {
    super.init();
    argParser
      ..addMultiOption(
        'include',
        help: 'Package or component names to include',
      )
      ..addMultiOption(
        'exclude',
        help: 'Package or component names to exclude',
      );
  }

  /// List of packages or components which should be included.
  late final include = argResults?['include'] as List<String>? ?? const [];

  /// List of packages or components which should be excluded.
  late final exclude = argResults?['exclude'] as List<String>? ?? const [];

  @override
  Map<String, PackageInfo> get commandPackages {
    return Map.fromEntries(
      super.commandPackages.entries.where((entry) {
        final package = entry.value;
        if (include.isNotEmpty) {
          var explicitlyIncluded = false;
          for (final packageOrComponent in include) {
            // Matches patterns of the form:
            // - package name, e.g. `amplify_auth_cognito_dart`
            // - package glob, e.g. `*auth*`
            // - component name, e.g. `Smithy`
            final includeGlob = Glob(packageOrComponent);
            if (includeGlob.matches(package.name) ||
                packageOrComponent ==
                    aftConfig.componentForPackage(package.name)) {
              // Passes include check but may fail exclude.
              explicitlyIncluded = true;
              break;
            }
          }
          if (!explicitlyIncluded) {
            return false;
          }
        }
        for (final packageOrComponent in exclude) {
          final excludeGlob = Glob(packageOrComponent);
          if (excludeGlob.matches(package.name) ||
              packageOrComponent ==
                  aftConfig.componentForPackage(package.name)) {
            return false;
          }
        }
        return true;
      }),
    );
  }
}
