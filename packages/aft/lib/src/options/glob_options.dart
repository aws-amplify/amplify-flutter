// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/aft.dart';

/// Adds globbing options to a command.
mixin GlobOptions on AmplifyCommand {
  @override
  void init() {
    super.init();
    argParser
      ..addMultiOption(
        'include',
        help: 'Package selectors to include',
      )
      ..addMultiOption(
        'exclude',
        help: 'Package selectors to exclude',
      );
  }

  /// The base package selector to use when [include] is not specified.
  ///
  /// Defaults to [PackageSelector.all].
  PackageSelector get basePackageSelector => const PackageSelector.all();

  /// List of packages or components which should be included.
  late final include = argResults?['include'] as List<String>;

  /// List of packages or components which should be excluded.
  late final exclude = argResults?['exclude'] as List<String>;

  /// The package selector passed via command line flags.
  late final commandPackageSelector = PackageSelector(
    include: include.isEmpty
        ? basePackageSelector
        : PackageSelector.fromJson(include),
    exclude: exclude.isEmpty ? null : PackageSelector.fromJson(exclude),
  );

  @override
  Map<String, PackageInfo> get commandPackages {
    final commandPackagePaths = commandPackageSelector.allPaths(aftConfig);
    return Map.fromEntries(
      super.commandPackages.entries.where((entry) {
        return commandPackagePaths.contains(entry.value.path);
      }),
    );
  }
}
