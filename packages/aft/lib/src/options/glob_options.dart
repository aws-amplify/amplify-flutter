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

import 'package:aft/aft.dart';

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

  /// List of packages or components which should be included in versioning.
  late final include = argResults?['include'] as List<String>? ?? const [];

  /// List of packages or components which should be excluded from versioning.
  late final exclude = argResults?['exclude'] as List<String>? ?? const [];

  @override
  Map<String, PackageInfo> get allPackages {
    return Map.fromEntries(
      super.allPackages.entries.where((entry) {
        final package = entry.value;
        if (include.isNotEmpty) {
          for (final packageOrComponent in include) {
            if (package.name == packageOrComponent ||
                aftConfig.componentForPackage(package.name) ==
                    packageOrComponent) {
              return true;
            }
          }
          return false;
        }
        for (final packageOrComponent in exclude) {
          if (package.name == packageOrComponent ||
              aftConfig.componentForPackage(package.name) ==
                  packageOrComponent) {
            return false;
          }
        }
        return true;
      }),
    );
  }
}
