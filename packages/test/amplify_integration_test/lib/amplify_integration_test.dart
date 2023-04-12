// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Utilities for running Amplify integration tests.
///
/// In the Amplify Flutter repo, most package follow the same pattern of having
/// unit tests in the `<package>/test` directory. Integration and E2E tests are run
/// via the package's `example/` application. For Flutter apps, these are driven
/// by `package:integration_test` whereas Dart packages employ various mechanisms.
///
/// This package hosts common code used by integration/e2e tests. Since the example
/// packages are leaves of the repo's dependency graph, it is safe for them to import
/// any published package without causing circular dependency errors. Likewise, this
/// package is free to import any published package from the repo without causing
/// errors during publishing.
library amplify_integration_test;

export 'package:amplify_test/amplify_test.dart';

/// Auth Utils
export 'src/integration_test_utils/auth_cognito/integration_test_auth_utils.dart';
export 'src/integration_test_utils/auth_cognito/types/create_mfa_code_response.dart';
export 'src/integration_test_utils/auth_cognito/types/delete_user_response.dart';

/// Stubs
export 'src/stubs/amplify_auth_cognito_stub.dart';
export 'src/stubs/amplify_stub.dart';
