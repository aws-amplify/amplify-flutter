## amplify_db_common

Common utilities for working with databases such as sqlite.

### Drift Database Connection

The top-level `connect()` function creates a QueryExecutor on either web or vm platforms.

#### Use on Web

The web implementation uses `package:drift/wasm.dart`. To use this utility in a web app (flutter web, or non-flutter web), `sqlite3.wasm` will need to be included manually. For more info, see the [drift wasm docs](https://drift.simonbinder.eu/web/#drift-wasm).

#### Use in Flutter VM

This utility does not depend on Flutter, and can be used in non-flutter apps and packages. To use this package in a flutter app or package, `sqlite3_flutter_libs` will have to be included as a dependency. See [Getting started with sql](https://drift.simonbinder.eu/docs/getting-started/starting_with_sql/#adding-the-dependency) for more info.
