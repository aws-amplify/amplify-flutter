// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/aft.dart';

/// Command to list all Dart/Flutter packages in the repo.
class ListPackagesCommand extends AmplifyCommand {
  @override
  String get description => 'Lists all packages in the Amplify Flutter repo';

  @override
  String get name => 'list';

  @override
  Future<void> run() async {
    await super.run();
    for (final package in allPackages.keys) {
      logger.info(package);
    }
  }
}
