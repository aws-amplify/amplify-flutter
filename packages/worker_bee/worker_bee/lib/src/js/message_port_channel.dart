// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:js_interop';

import 'package:built_value/serializer.dart';
import 'package:web/web.dart';
import 'package:worker_bee/src/exception/worker_bee_exception.dart';
import 'package:worker_bee/src/js/js_extensions.dart';
import 'package:worker_bee/src/serializers/serializers.dart';
import 'package:worker_bee/worker_bee.dart';

/// {@template worker_bee.message_port_channel}
/// An abstraction over [MessagePort] which conforms to [StreamChannel].
/// {@endtemplate}
class MessagePortChannel<T>
    with StreamChannelMixin<T>
    implements StreamSink<T> {
  /// {@macro worker_bee.message_port_channel}
  MessagePortChannel(
    this.messagePort, {
    Serializers? serializers,
    FullType specifiedType = FullType.unspecified,
  }) : _serializers = serializers ?? workerBeeSerializers,
       _specifiedType = specifiedType {
    messagePort.onmessage = _addEvent.toJS;
  }

  /// The message port to communicate over.
  final MessagePort messagePort;

  final Serializers _serializers;
  final FullType _specifiedType;

  @override
  StreamSink<T> get sink => this;

  final StreamController<MessageEvent> _streamController =
      StreamController<MessageEvent>();
  void _addEvent(MessageEvent event) => _streamController.add(event);

  @override
  late final Stream<T> stream = _streamController.stream
      .transform(
        StreamTransformer<MessageEvent, T>.fromHandlers(
          handleData: Zone.current.bindBinaryCallback((event, sink) {
            final eventData = event.data;

            if (eventData.isA<JSString>()) {
              eventData as JSString;
              final state = eventData.toDart;

              if (state == 'done') {
                sink.close();
                close();
                return;
              }
            }
            final data = _serializers.deserialize(
              eventData,
              specifiedType: _specifiedType,
            );
            if (data is WorkerBeeException || data is! T) {
              sink.addError(
                data as Object,
                data is WorkerBeeException ? data.stackTrace : null,
              );
            } else {
              sink.add(data);
            }
          }),
          handleDone: Zone.current.bindUnaryCallback((sink) {
            sink.close();
            close();
          }),
        ),
      )
      .takeUntil(_done.future);

  @override
  void add(T event) {
    final transfer = <Object>[];
    final serialized = runZoned(
      () => _serializers.serialize(event, specifiedType: _specifiedType),
      zoneValues: {#transfer: transfer},
    );
    messagePort.postMessage(serialized?.toJSBoxOrCast, transfer.toJSBoxOrCast);
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    final serialized = _serializers.serialize(
      WorkerBeeExceptionImpl(error, stackTrace),
      specifiedType: FullType.unspecified,
    );

    messagePort.postMessage(serialized?.toJSBoxOrCast);
    close();
  }

  @override
  Future<void> addStream(Stream<T> stream) async {
    await for (final event in stream) {
      add(event);
    }
  }

  final Completer<void> _done = Completer<void>();

  @override
  Future<void> close() async {
    if (_done.isCompleted) return;
    messagePort
      ..postMessage('done'.toJS)
      ..close();

    _done.complete();
    await _streamController.close();
  }

  @override
  Future<void> get done => _done.future;
}
