// Generated by worker_bee_builder.

import 'package:aws_common/aws_common.dart';
import 'package:e2e/e2e_worker_no_result.dart';

/// The JS implementation of [E2EWorkerNoResult].
class E2EWorkerNoResultImpl extends E2EWorkerNoResult {
  @override
  String get name => 'E2EWorkerNoResult';
  @override
  String get jsEntrypoint {
    // Flutter web release builds must use the bundled asset.
    if (zIsFlutter && !zDebugMode) {
      return 'assets/packages/e2e/lib/workers.min.js';
    }
    // Default to the compiled, published worker.
    return zDebugMode
        ? 'packages/e2e/workers.js'
        : 'packages/e2e/workers.min.js';
  }

  @override
  List<String> get fallbackUrls {
    // When running in a test, we need to find the `packages` directory which
    // is symlinked in the root `test/` directory.
    final baseUri = Uri.base;
    final basePath = baseUri.pathSegments
        .takeWhile((segment) => segment != 'test')
        .map(Uri.encodeComponent)
        .join('/');
    final testDir = Uri(
      scheme: baseUri.scheme,
      host: baseUri.host,
      port: baseUri.port,
      path: '$basePath/test',
    );
    const relativePath = zDebugMode
        ? 'packages/e2e/workers.debug.dart.js'
        : 'packages/e2e/workers.release.dart.js';
    return [relativePath, testDir.resolve(relativePath).toString()];
  }
}
