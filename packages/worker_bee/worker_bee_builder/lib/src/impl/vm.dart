// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
final logsChannel = ${allocate(DartTypes.streamChannel.isolateChannel)}<${allocate(DartTypes.workerBee.logMessage)}>.connectSend(ports.logPort);
final worker = $workerImplName();
await worker.connect(logsChannel: logsChannel);
${responseType.isVoid ? '' : 'final result ='} await worker.run(
  channel.stream.asBroadcastStream().cast(), 
  channel.sink.cast(),
);
// ignore: invalid_use_of_protected_member
worker.logger.finest('Finished');
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
