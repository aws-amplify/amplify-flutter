// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Test utilities for Amplify packages.
///
/// In the Amplify Flutter repo, most package follow the same pattern of having
/// unit tests in the `<package>/test` directory. Integration and E2E tests are run
/// via the package's `example/` application. For Flutter apps, these are driven
/// by `package:integration_test` whereas Dart packages employ various mechanisms.
///
/// This package hosts common code used by unit tests. Since this package consumes
/// `amplify_core`, it is not consummable by `amplify_core`. However, every other
/// package is free to import it for use in its `test/` directory. Similarly, since
/// this package is in published packages' `dev_dependencies`, it cannot safely
/// cross-reference other published packages in this repo which would run the risk
/// of causing circular dependencies while publishing (for the same reason it cannot
/// be used in `amplify_core`).
library amplify_test;

/// Common Utils
export 'src/json.dart';
export 'src/mock_data.dart';
