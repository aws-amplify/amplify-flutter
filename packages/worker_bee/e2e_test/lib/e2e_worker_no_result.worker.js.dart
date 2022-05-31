import 'package:e2e_test/e2e_worker_no_result.dart';

/// The JS implementation of [E2EWorkerNoResult].
class E2EWorkerNoResultImpl extends E2EWorkerNoResult {
  @override
  String get name => 'E2EWorkerNoResult';
  @override
  String get jsEntrypoint => 'main.dart.js';
  @override
  List<String> get fallbackUrls => const [];
}
