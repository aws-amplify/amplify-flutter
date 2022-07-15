// Generated by worker_bee_builder.

import 'package:amplify_secure_storage_dart/src/worker/secure_storage_worker.dart';
import 'package:aws_common/aws_common.dart';

/// The JS implementation of [SecureStorageWorker].
class SecureStorageWorkerImpl extends SecureStorageWorker {
  @override
  String get name => 'SecureStorageWorker';
  @override
  String get jsEntrypoint {
    // Flutter web release builds must use the bundled asset.
    if (zIsFlutter && !zDebugMode) {
      return 'assets/packages/amplify_secure_storage_dart/lib/src/worker/workers.min.js';
    }
    // Default to the compiled, published worker.
    return zDebugMode
        ? 'packages/amplify_secure_storage_dart/src/worker/workers.js'
        : 'packages/amplify_secure_storage_dart/src/worker/workers.min.js';
  }

  @override
  List<String> get fallbackUrls => zDebugMode
      ? const [
          'packages/amplify_secure_storage_dart/src/worker/workers.debug.dart.js'
        ]
      : const [
          'packages/amplify_secure_storage_dart/src/worker/workers.release.dart.js'
        ];
}
