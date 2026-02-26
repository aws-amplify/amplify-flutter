/// Worker hive containing all available workers for this application.
@WorkerHive([EchoWorker])
library;

import 'package:worker_bee/worker_bee.dart';
import 'workers/echo_worker.dart';
