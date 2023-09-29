// Generated by worker_bee_builder.

import 'dart:async';
import 'dart:isolate';

import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_device_password_verifier_worker.dart';
import 'package:worker_bee/worker_bee.dart';

Future<void> _run(SendPorts ports) async {
  final channel = IsolateChannel<Object?>.connectSend(ports.messagePort);
  final logsChannel = IsolateChannel<LogEntry>.connectSend(ports.logPort);
  final worker = SrpDevicePasswordVerifierWorkerImpl();
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

/// The VM implementation of [SrpDevicePasswordVerifierWorker].
class SrpDevicePasswordVerifierWorkerImpl
    extends SrpDevicePasswordVerifierWorker {
  @override
  String get name => 'SrpDevicePasswordVerifierWorker';

  @override
  VmEntrypoint get vmEntrypoint => _run;
}
