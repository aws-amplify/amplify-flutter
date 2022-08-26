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
import 'package:glob/glob.dart';

/// Adds globbing options to a command.
mixin GlobOptions on AmplifyCommand {
  @override
  void init() {
    super.init();
    argParser
      ..addMultiOption('include', help: 'Glob of packages to include')
      ..addMultiOption('exclude', help: 'Glob of packages to exclude');
  }

  /// Globs of packages which should be included in versioning.
  late final include = (argResults?['include'] as List<String>? ?? const [])
      .map(Glob.new)
      .toList();

  /// Globs of packages which should be excluded from versioning.
  late final exclude = (argResults?['exclude'] as List<String>? ?? const [])
      .map(Glob.new)
      .toList();

  @override
  Map<String, PackageInfo> get allPackages {
    return Map.fromEntries(
      super.allPackages.entries.where((entry) {
        final package = entry.value;
        for (final glob in include) {
          if (glob.matches(package.path)) {
            return true;
          }
        }
        for (final glob in exclude) {
          if (glob.matches(package.path)) {
            return false;
          }
        }
        return true;
      }),
    );
  }
}
