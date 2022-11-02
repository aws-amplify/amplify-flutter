## amplify_db_common

Common utilities for working with databases such as SQLite.

### Drift Database Connection

The top-level `connect()` function creates a QueryExecutor on either web or vm platforms.

#### Use on Web

The web implementation uses `package:drift/wasm.dart`. To use this utility in a web app (flutter web, or non-flutter web), `sqlite3.wasm` will need to be included manually. For more info, see the [drift wasm docs](https://drift.simonbinder.eu/web/#drift-wasm).

