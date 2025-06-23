// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:js_interop';

// ignore: implementation_imports
import 'package:aws_common/src/js/common.dart';
import 'package:built_value/serializer.dart';
import 'package:web/web.dart';
import 'package:worker_bee/src/js/js_extensions.dart';
import 'package:worker_bee/src/js/message_port_channel.dart';
import 'package:worker_bee/src/preamble.dart';
import 'package:worker_bee/src/serializers/serializers.dart';
import 'package:worker_bee/worker_bee.dart';

/// {@macro worker_bee.is_web_worker}
bool get isWebWorker => zIsWebWorker;

/// {@macro worker_bee.current_uri}
Uri get currentUri {
  return Uri.tryParse(self.location.href) ?? Uri();
}

/// {@macro worker_bee.get_worker_assignment}
Future<WorkerAssignment> getWorkerAssignment() async {
  // Errors in the preamble should be reported to the parent thread.
  void onError(Object e, StackTrace st) {
    self.postMessage(
      workerBeeSerializers
          .serialize(e, specifiedType: FullType.unspecified)
          ?.toJSBoxOrCast,
    );
  }

  return runTraced(() async {
    final assignmentCompleter = Completer<WorkerAssignment>.sync();
    late final JSExportedDartFunction jsOnMessageCallback;

    void onMessage(MessageEvent event) {
      final eventData = event.data;

      final messagePort = event.ports.toDart.firstOrNull;
      if (eventData.isA<JSString>() && messagePort is MessagePort) {
        eventData as JSString;
        final state = eventData.toDart;

        self.removeEventListener('message', jsOnMessageCallback);
        assignmentCompleter.complete(
          WorkerAssignment(state, MessagePortChannel<LogEntry>(messagePort)),
        );
      } else {
        assignmentCompleter.completeError(
          StateError(
            'Invalid worker assignment: '
            '${workerBeeSerializers.serialize(eventData)}',
          ),
        );
      }
    }

    final onMessageCallback = Zone.current
        .bindUnaryCallback<void, MessageEvent>(onMessage);
    jsOnMessageCallback = onMessageCallback.toJS;

    self.addEventListener('message', jsOnMessageCallback);
    return assignmentCompleter.future;
  }, onError: onError);
}
