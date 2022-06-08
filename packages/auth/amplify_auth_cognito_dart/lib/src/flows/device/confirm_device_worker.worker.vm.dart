import 'dart:async';
import 'dart:isolate';

import 'package:amplify_auth_cognito_dart/src/flows/device/confirm_device_worker.dart';
import 'package:worker_bee/worker_bee.dart';

Future<void> _run(SendPorts ports) async {
  final channel = IsolateChannel<Object?>.connectSend(ports.messagePort);
  final logsChannel = IsolateChannel<LogMessage>.connectSend(ports.logPort);
  final worker = ConfirmDeviceWorkerImpl();
  await worker.connect(logsChannel: logsChannel);
  final result = await worker.run(
    channel.stream.asBroadcastStream().cast(),
    channel.sink.cast(),
  );
// ignore: invalid_use_of_protected_member
  worker.logger.finest('Finished');
  unawaited(worker.close());
  Isolate.exit(ports.donePort, result);
}

/// The VM implementation of [ConfirmDeviceWorker].
class ConfirmDeviceWorkerImpl extends ConfirmDeviceWorker {
  @override
  String get name => 'ConfirmDeviceWorker';
  @override
  VmEntrypoint get vmEntrypoint => _run;
}
