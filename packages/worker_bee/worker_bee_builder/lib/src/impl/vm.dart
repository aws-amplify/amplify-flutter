// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:code_builder/code_builder.dart';
import 'package:worker_bee_builder/src/impl/common.dart';
import 'package:worker_bee_builder/src/type_visitor.dart';
import 'package:worker_bee_builder/src/types.dart';

/// {@template worker_bee_builder.vm_generator}
/// Generates the VM implementation of a worker bee.
/// {@endtemplate}
class VmGenerator extends ImplGenerator {
  /// {@macro worker_bee_builder.vm_generator}
  VmGenerator(
    super.classEl,
    super.requestTypeEl,
    super.responseTypeEl,
  );

  @override
  Library generate() {
    return Library(
      (b) => b
        ..body.addAll([
          _runner,
          _workerClass,
        ]),
    );
  }

  /// Isolate entrypoint.
  Method get _runner => Method(
        (m) => m
          ..name = '_run'
          ..returns = DartTypes.async.future(DartTypes.core.void$)
          ..requiredParameters.add(Parameter((p) => p
            ..type = DartTypes.workerBee.sendPorts
            ..name = 'ports'))
          ..modifier = MethodModifier.async
          ..body = Code.scope((allocate) => '''
final channel = ${allocate(DartTypes.streamChannel.isolateChannel)}<${allocate(DartTypes.core.object)}?>.connectSend(ports.messagePort);
final logsChannel = ${allocate(DartTypes.streamChannel.isolateChannel)}<${allocate(DartTypes.workerBee.logEntry)}>.connectSend(ports.logPort);
final worker = $workerImplName();
await worker.connect(logsChannel: logsChannel);
${responseType.isVoid ? '' : 'final result ='} await worker.run(
  channel.stream.asBroadcastStream().cast(), 
  channel.sink.cast(),
);
// ignore: invalid_use_of_protected_member
worker.logger.verbose('Finished');
${allocate(DartTypes.async.unawaited)}(worker.close());
${allocate(DartTypes.isolate.isolate)}.exit(ports.donePort${responseType.isVoid ? '' : ', result'});
            '''),
      );

  Class get _workerClass => Class(
        (c) => c
          ..name = workerImplName
          ..docs.add('/// The VM implementation of [${workerType.symbol}].')
          ..extend = workerType
          ..methods.addAll([
            Method((m) => m
              ..annotations.add(DartTypes.core.override)
              ..returns = DartTypes.core.string
              ..type = MethodType.getter
              ..name = 'name'
              ..body = literalString(workerName).code),
            Method((m) => m
              ..annotations.add(DartTypes.core.override)
              ..returns = DartTypes.workerBee.vmEntrypoint
              ..type = MethodType.getter
              ..name = 'vmEntrypoint'
              ..body = refer('_run').code),
          ]),
      );
}
