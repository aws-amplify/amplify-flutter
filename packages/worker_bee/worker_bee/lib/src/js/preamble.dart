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

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';
import 'package:worker_bee/src/js/interop/common.dart';
import 'package:worker_bee/src/js/message_port_channel.dart';
import 'package:worker_bee/src/preamble.dart';
import 'package:worker_bee/src/serializers/serializers.dart';
import 'package:worker_bee/worker_bee.dart';

/// {@macro worker_bee.is_web_worker}
bool get isWebWorker {
  return window == null;
}

/// {@macro worker_bee.current_uri}
Uri get currentUri {
  return Uri.tryParse(self.location.href) ?? Uri();
}

/// {@macro worker_bee.get_worker_assignment}
Future<WorkerAssignment> getWorkerAssignment() async {
  // Errors in the preamble should be reported to the parent thread.
  void onError(Object e, StackTrace st) {
    self.postMessage(
      workerBeeSerializers.serialize(
        e,
        specifiedType: FullType.unspecified,
      ),
    );
  }

  return runTraced(
    () async {
      final assignmentCompleter = Completer<WorkerAssignment>.sync();
      late void Function(Event) eventListener;
      self.addEventListener(
        'message',
        eventListener = Zone.current.bindUnaryCallback<void, Event>(
          (Event event) {
            event as MessageEvent;
            final message = event.data;
            final messagePort = event.ports.firstOrNull;
            if (message is String && messagePort is MessagePort) {
              self.removeEventListener('message', eventListener);
              assignmentCompleter.complete(
                WorkerAssignment(
                  message,
                  MessagePortChannel<LogMessage>(messagePort),
                ),
              );
            } else {
              assignmentCompleter.completeError(
                StateError(
                  'Invalid worker assignment: '
                  '${workerBeeSerializers.serialize(message)}',
                ),
              );
            }
          },
        ),
      );
      return assignmentCompleter.future;
    },
    onError: onError,
  );
}
