// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/aft.dart';

/// A function that publishes a single package (e.g. pre-publish checks +
/// actual publish).
typedef PublishPackageFn = Future<void> Function(PackageInfo package);

/// Schedules and executes the publishing of a list of packages in order.
///
/// Packages are published sequentially. After each package is published the
/// scheduler polls for a pending analysis on pub.dev and waits until the
/// analysis is complete before proceeding to the next package.
class PublishScheduler {
  PublishScheduler({
    required List<PackageInfo> packages,
    required PublishPackageFn publishPackage,
    required AmplifyCommand command,
  })  : _packages = packages,
        _publishPackage = publishPackage,
        _command = command;

  final List<PackageInfo> _packages;
  final PublishPackageFn _publishPackage;
  final AmplifyCommand _command;

  /// Publishes all packages sequentially, awaiting pending analysis between
  /// each one.
  Future<void> run() async {
    for (final package in _packages) {
      await _publishPackage(package);
      await _command.awaitPendingAnalysis(package.name);
    }
  }
}
