import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:worker_bee/worker_bee.dart';
import '../models/echo_message.dart';
import 'echo_worker.worker.dart';

part 'echo_worker.g.dart';

/// A worker that echoes messages back with additional processing.
///
/// This worker demonstrates key worker_bee features:
/// - Message passing between main thread and worker
/// - Type-safe serialization with built_value
/// - Logging from worker threads
/// - Stateful worker (tracks message count)
/// - Async processing with optional delays
@WorkerBee('lib/workers.dart')
abstract class EchoWorker extends WorkerBeeBase<EchoMessage, EchoResponse> {
  EchoWorker() : super(serializers: serializers);

  factory EchoWorker.create() = EchoWorkerImpl;

  int _messageCount = 0;

  @override
  Future<EchoResponse?> run(
    Stream<EchoMessage> listen,
    StreamSink<EchoResponse> respond,
  ) async {
    logger.info('Echo worker started and ready to process messages');

    await for (final message in listen) {
      _messageCount++;

      logger.info('Processing message #$_messageCount: "${message.message}"');

      try {
        // Optional delay to simulate processing time
        if (message.delayMs != null && message.delayMs! > 0) {
          logger.debug('Applying delay of ${message.delayMs}ms');
          await Future<void>.delayed(Duration(milliseconds: message.delayMs!));
        }

        // Process the message
        final reversedMessage = message.message.split('').reversed.join();

        final response = EchoResponse(
          (b) => b
            ..echoedMessage = message.message
            ..processedAt = DateTime.now().toUtc()
            ..messageCount = _messageCount
            ..reversedMessage = reversedMessage,
        );

        logger.debug(
          'Sending response: echoed="${response.echoedMessage}", '
          'reversed="${response.reversedMessage}", count=$_messageCount',
        );

        respond.add(response);
      } catch (e, st) {
        logger.error('Error processing message', e, st);
        rethrow;
      }
    }

    logger.info(
      'Echo worker shutting down. Total messages processed: $_messageCount',
    );
    return null;
  }
}

/// Serializers for the [EchoWorker] worker.
@SerializersFor([EchoMessage, EchoResponse])
final Serializers serializers = _$serializers;
