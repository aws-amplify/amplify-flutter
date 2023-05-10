// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.state_machine.amplify_dependency_manager}
/// A [DependencyManager] for Amplify plugins initialized with default Amplify
/// dependencies.
/// {@endtemplate}
final class AmplifyDependencyManager extends DependencyManager {
  /// {@macro amplify_core.state_machine.amplify_dependency_manager}
  AmplifyDependencyManager() : super() {
    addBuilder<AmplifyUserAgent>((_) => AmplifyUserAgent());
    addBuilder<AWSHttpClient>(
      (_) => AWSHttpClient()..supportedProtocols = SupportedProtocols.http1,
    );
    addBuilder<AmplifyHttpClient>(AmplifyHttpClient.new);
  }
}
