import 'dart:async';

/// Retrieves credentials synchronously or asynchronously.
typedef CredentialsProvider = FutureOr<String> Function();
