// Generated by worker_bee_builder.

import 'dart:async';
import 'dart:isolate';

import 'package:e2e/e2e_worker_null_result.dart';
import 'package:worker_bee/worker_bee.dart';

Future<void> _run(SendPorts ports) async {
  final channel = IsolateChannel<Object?>.connectSend(ports.messagePort);
  final logsChannel = IsolateChannel<LogEntry>.connectSend(ports.logPort);
  final worker = E2EWorkerNullResultImpl();
  await worker.connect(logsChannel: logsChannel);
  final result = await worker.run(
    channel.stream.asBroadcastStream().cast(),
    channel.sink.cast(),
  );
  // ignore: invalid_use_of_protected_member
  worker.logger.verbose('Finished');
  unawaited(worker.close());
  Isolate.exit(ports.donePort, result);
}

/// The VM implementation of [E2EWorkerNullResult].
class E2EWorkerNullResultImpl extends E2EWorkerNullResult {
  @override
  String get name => 'E2EWorkerNullResult';

  @override
  VmEntrypoint get vmEntrypoint => _run;
}
