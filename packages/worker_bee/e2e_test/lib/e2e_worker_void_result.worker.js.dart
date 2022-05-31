import 'package:e2e_test/e2e_worker_void_result.dart';

/// The JS implementation of [E2EWorkerVoidResult].
class E2EWorkerVoidResultImpl extends E2EWorkerVoidResult {
  @override
  String get name => 'E2EWorkerVoidResult';
  @override
  String get jsEntrypoint => 'main.dart.js';
  @override
  List<String> get fallbackUrls => const [];
}
