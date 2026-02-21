import 'package:flutter/material.dart';
import 'package:worker_bee/worker_bee.dart';
import 'models/echo_message.dart';
import 'workers/echo_worker.dart';

// Conditional import: web gets the real JS interop, other platforms get a no-op stub.
import 'js_interop_stub.dart'
    if (dart.library.js_interop) 'js_interop_web.dart';

// Global key to access the demo state
final GlobalKey<_EchoWorkerDemoState> _demoKey =
    GlobalKey<_EchoWorkerDemoState>();

void main() {
  setupJsInterop(_demoKey);
  runApp(const WorkerBeeExampleApp());
}

/// Main application widget
class WorkerBeeExampleApp extends StatelessWidget {
  const WorkerBeeExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Worker Bee Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: EchoWorkerDemo(key: _demoKey),
    );
  }
}

/// Demo page showing EchoWorker in action
class EchoWorkerDemo extends StatefulWidget {
  const EchoWorkerDemo({super.key});

  @override
  State<EchoWorkerDemo> createState() => _EchoWorkerDemoState();
}

class _EchoWorkerDemoState extends State<EchoWorkerDemo> {
  EchoWorker? _worker;
  final _messageController = TextEditingController(text: '12345');
  final _messages = <String>[];
  final _logs = <String>[];
  bool _isWorkerRunning = false;
  int _delayMs = 0;

  // ── Public API used by JS interop (via dynamic dispatch) ──

  /// Called from JS interop to start the worker.
  Future<void> startWorkerFromJs() => _startWorker();

  /// Called from JS interop to stop the worker.
  void stopWorkerFromJs() => _stopWorker();

  /// Called from JS interop to send a message.
  void sendMessageFromJs() => _sendMessage();

  /// Called from JS interop to set the message text field.
  void setMessageText(String text) {
    _messageController.text = text;
  }

  /// Called from JS interop to get all log lines.
  String getLogsText() => _logs.join('\n');

  /// Called from JS interop to get all message lines.
  String getMessagesText() => _messages.join('\n');

  // ── Private implementation ──

  @override
  void dispose() {
    _worker?.close();
    _messageController.dispose();
    super.dispose();
  }

  Future<void> _startWorker() async {
    if (_isWorkerRunning) return;

    setState(() {
      _messages.clear();
      _logs.clear();
      _messages.add('🚀 Starting worker...');
    });

    try {
      _worker = EchoWorker.create();

      // Listen to responses from the worker
      _worker!.stream.listen(
        (response) {
          setState(() {
            _messages.add('✅ Echoed: "${response.echoedMessage}"');
            _messages.add('   🔄 Reversed: "${response.reversedMessage}"');
            _messages.add('   📊 Message #${response.messageCount}');
            _messages.add(
              '   ⏰ Processed at: ${_formatTime(response.processedAt)}',
            );
          });
        },
        onError: (Object error, StackTrace stackTrace) {
          setState(() {
            _messages.add('❌ Error: $error');
          });
        },
      );

      // Listen to logs from the worker
      _worker!.logs.listen((log) {
        setState(() {
          final icon = _getLogIcon(log.level);
          var logLine =
              '$icon [${log.level.name.toUpperCase()}] ${log.message}';
          if (log.error != null) {
            logLine += '\n   Error: ${log.error}';
          }
          if (log.stackTrace != null) {
            logLine +=
                '\n   StackTrace:\n${log.stackTrace.toString().split('\n').map((l) => '      $l').join('\n')}';
          }
          _logs.add(logLine);
        });
      });

      // Spawn the worker
      await _worker!.spawn();

      setState(() {
        _isWorkerRunning = true;
        _messages.add('✅ Worker started successfully!');
        _messages.add('');
      });
    } catch (e) {
      setState(() {
        _messages.add('❌ Failed to start worker: $e');
        _isWorkerRunning = false;
      });
    }
  }

  Future<void> _stopWorker() async {
    if (!_isWorkerRunning || _worker == null) return;

    setState(() {
      _messages.add('');
      _messages.add('🛑 Stopping worker...');
    });

    try {
      await _worker!.close();
      setState(() {
        _isWorkerRunning = false;
        _messages.add('✅ Worker stopped successfully!');
      });
    } catch (e) {
      setState(() {
        _messages.add('❌ Error stopping worker: $e');
      });
    }
  }

  void _sendMessage() {
    if (!_isWorkerRunning || _worker == null) {
      setState(() {
        _messages.add('⚠️ Worker is not running!');
      });
      return;
    }

    final text = _messageController.text.trim();
    if (text.isEmpty) return;

    setState(() {
      _messages.add('');
      _messages.add('📤 Sending: "$text"');
    });

    final message = EchoMessage(
      (b) => b
        ..message = text
        ..delayMs = _delayMs > 0 ? _delayMs : null,
    );

    _worker!.add(message);
    _messageController.clear();
  }

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:'
        '${time.minute.toString().padLeft(2, '0')}:'
        '${time.second.toString().padLeft(2, '0')}.'
        '${time.millisecond.toString().padLeft(3, '0')}';
  }

  String _getLogIcon(LogLevel level) {
    switch (level) {
      case LogLevel.none:
        return '⚪';
      case LogLevel.verbose:
        return '🔍';
      case LogLevel.debug:
        return '🐛';
      case LogLevel.info:
        return 'ℹ️';
      case LogLevel.warn:
        return '⚠️';
      case LogLevel.error:
        return '❌';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Worker Bee Example'),
      ),
      body: Column(
        children: [
          // Control Panel
          Card(
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Worker Control',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Semantics(
                          identifier: 'start-worker-button',
                          child: ElevatedButton.icon(
                            key: const ValueKey('start-worker-button'),
                            onPressed: _isWorkerRunning ? null : _startWorker,
                            icon: const Icon(Icons.play_arrow),
                            label: const Text('Start Worker'),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Semantics(
                          identifier: 'stop-worker-button',
                          child: ElevatedButton.icon(
                            key: const ValueKey('stop-worker-button'),
                            onPressed: _isWorkerRunning ? _stopWorker : null,
                            icon: const Icon(Icons.stop),
                            label: const Text('Stop Worker'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red[100],
                              foregroundColor: Colors.red[900],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Text('Delay (ms):'),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Slider(
                          value: _delayMs.toDouble(),
                          min: 0,
                          max: 2000,
                          divisions: 20,
                          label: _delayMs.toString(),
                          onChanged: (value) {
                            setState(() {
                              _delayMs = value.toInt();
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 60,
                        child: Text('$_delayMs ms', textAlign: TextAlign.right),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Message Input
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: Semantics(
                    identifier: 'message-input',
                    child: TextField(
                      key: const ValueKey('message-input'),
                      controller: _messageController,
                      decoration: const InputDecoration(
                        labelText: 'Message to echo',
                        border: OutlineInputBorder(),
                      ),
                      onSubmitted: (_) => _sendMessage(),
                      enabled: _isWorkerRunning,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Semantics(
                  identifier: 'send-button',
                  child: IconButton(
                    key: const ValueKey('send-button'),
                    onPressed: _isWorkerRunning ? _sendMessage : null,
                    icon: const Icon(Icons.send),
                    style: IconButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Tabs for Messages and Logs
          Expanded(
            child: DefaultTabController(
              length: 2,
              initialIndex: 1,
              child: Column(
                children: [
                  const TabBar(
                    tabs: [
                      Tab(text: 'Messages', icon: Icon(Icons.message)),
                      Tab(text: 'Worker Logs', icon: Icon(Icons.bug_report)),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        _buildMessageList(_messages, 'messages-list'),
                        _buildMessageList(_logs, 'logs-list'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageList(List<String> items, String identifier) {
    if (items.isEmpty) {
      return Semantics(
        identifier: identifier,
        child: Center(
          key: ValueKey(identifier),
          child: const Text('No messages yet'),
        ),
      );
    }

    return Semantics(
      identifier: identifier,
      child: SelectionArea(
        child: ListView.builder(
          key: ValueKey(identifier),
          padding: const EdgeInsets.all(16),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(
                items[index],
                style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
              ),
            );
          },
        ),
      ),
    );
  }
}
