import 'package:e2e_test/e2e_worker.dart';
import 'package:e2e_test/e2e_worker_no_result.dart';
import 'package:e2e_test/e2e_worker_null_result.dart';
import 'package:e2e_test/e2e_worker_throws.dart';
import 'package:e2e_test/e2e_worker_void_result.dart';
import 'package:worker_bee/worker_bee.dart';

final workers = <String, WorkerBeeBuilder>{
  'E2EWorker': E2EWorker.create,
  'E2EWorkerNoResult': E2EWorkerNoResult.create,
  'E2EWorkerVoidResult': E2EWorkerVoidResult.create,
  'E2EWorkerNullResult': E2EWorkerNullResult.create,
  'E2EWorkerThrows': E2EWorkerThrows.create
};
void main() => runHive(workers);
