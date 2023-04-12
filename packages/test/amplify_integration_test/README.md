# amplify_integration_test

Utilities for running Amplify integration tests.

In the Amplify Flutter repo, most package follow the same pattern of having
unit tests in the `<package>/test` directory. Integration and E2E tests are run
via the package's `example/` application. For Flutter apps, these are driven
by `package:integration_test` whereas Dart packages employ various mechanisms.

This package hosts common code used by integration/e2e tests. Since the example
packages are leaves of the repo's dependency graph, it is safe for them to import
any published package without causing circular dependency errors. Likewise, this
package is free to import any published package from the repo without causing
errors during publishing.
