import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_logging_cloudwatch/amplify_logging_cloudwatch.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _plugin = AmplifyLogger().getPlugin<AmplifyCloudWatchLoggerPlugin>()!;

  final _authLogger = AmplifyLogger.category(Category.auth);
  LogLevel? _authLogLevel;
  final TextEditingController _authLogMsgController = TextEditingController();

  final _analyticsLogger = AmplifyLogger.category(Category.analytics);
  LogLevel? _analyticsLogLevel;
  final TextEditingController _analyticsLogMsgController =
      TextEditingController();

  final _apiLogger = AmplifyLogger.category(Category.api);
  LogLevel? _apiLogLevel;
  final TextEditingController _apiLogMsgController = TextEditingController();

  final _dataStoreLogger = AmplifyLogger.category(Category.dataStore);
  LogLevel? _dataStoreLogLevel;
  final TextEditingController _dataStoreLogMsgController =
      TextEditingController();

  final _hubLogger = AmplifyLogger.category(Category.hub);
  LogLevel? _hubLogLevel;
  final TextEditingController _hubLogMsgController = TextEditingController();

  final _pnLogger = AmplifyLogger.category(Category.pushNotifications);
  LogLevel? _pnLogLevel;
  final TextEditingController _pnLogMsgController = TextEditingController();

  final _storageLogger = AmplifyLogger.category(Category.storage);
  LogLevel? _storageLogLevel;
  final TextEditingController _storageLogMsgController =
      TextEditingController();

  LogLevel? _customLogLevel;
  final TextEditingController _customLogMsgController = TextEditingController();
  final TextEditingController _customLoggerNameController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
            semanticLabel: 'Sign-out and go to the first screen.',
          ),
          onPressed: () {
            Amplify.Auth.signOut();
            Navigator.pushNamed(context, '/');
          },
        ),
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            ...loggerList(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: _submitLogs,
                    child: const Text('Submit Logs'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: _enableLogging,
                    child: const Text('Enable Logging'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: _disableLogging,
                    child: const Text('Disable Logging'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: _flushLogs,
                    child: const Text('Flush Logs'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _enableLogging() {
    _plugin.enable();
  }

  void _disableLogging() {
    _plugin.disable();
  }

  void _flushLogs() {
    _plugin.flushLogs();
  }

  void _submitLogs() {
    if (_authLogLevel != null && _authLogMsgController.text != '') {
      _authLogger.log(_authLogLevel!, _authLogMsgController.text);
    }
    if (_analyticsLogLevel != null && _analyticsLogMsgController.text != '') {
      _analyticsLogger.log(
        _analyticsLogLevel!,
        _analyticsLogMsgController.text,
      );
    }
    if (_apiLogLevel != null && _apiLogMsgController.text != '') {
      _apiLogger.log(
        _apiLogLevel!,
        _apiLogMsgController.text,
      );
    }
    if (_dataStoreLogLevel != null && _dataStoreLogMsgController.text != '') {
      _dataStoreLogger.log(
        _dataStoreLogLevel!,
        _dataStoreLogMsgController.text,
      );
    }
    if (_hubLogLevel != null && _hubLogMsgController.text != '') {
      _hubLogger.log(_hubLogLevel!, _hubLogMsgController.text);
    }
    if (_pnLogLevel != null && _pnLogMsgController.text != '') {
      _pnLogger.log(_pnLogLevel!, _pnLogMsgController.text);
    }
    if (_storageLogLevel != null && _storageLogMsgController.text != '') {
      _storageLogger.log(_storageLogLevel!, _storageLogMsgController.text);
    }
    if (_customLoggerNameController.text != '' &&
        _customLogLevel != null &&
        _customLogMsgController.text != '') {
      AmplifyLogger(_customLoggerNameController.text)
          .log(_customLogLevel!, _customLogMsgController.text);
    }
    setState(() {
      _authLogLevel = _analyticsLogLevel = _apiLogLevel = _dataStoreLogLevel =
          _hubLogLevel =
              _pnLogLevel = _storageLogLevel = _customLogLevel = null;

      _authLogMsgController.text = _analyticsLogMsgController.text =
          _apiLogMsgController.text = _dataStoreLogMsgController.text =
              _hubLogMsgController.text = _pnLogMsgController.text =
                  _storageLogMsgController.text = _customLogMsgController.text =
                      _customLoggerNameController.text = '';
    });
  }

  List<Widget> loggerList() {
    return [
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF7F7F7F)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              width: 150,
              child: Text('Analytics Category:'),
            ),
            DropdownButton<LogLevel>(
              hint: const Text('Select Log Level'),
              value: _analyticsLogLevel,
              items: LogLevel.values
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.name),
                    ),
                  )
                  .toList(),
              onChanged: (newValue) {
                setState(() {
                  _analyticsLogLevel = newValue;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(
                constraints: BoxConstraints(maxWidth: 400),
                hintText: 'Enter log message',
              ),
              controller: _analyticsLogMsgController,
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF7F7F7F)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              width: 150,
              child: Text('API Category:'),
            ),
            DropdownButton<LogLevel>(
              hint: const Text('Select Log Level'),
              value: _apiLogLevel,
              items: LogLevel.values
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.name),
                    ),
                  )
                  .toList(),
              onChanged: (newValue) {
                setState(() {
                  _apiLogLevel = newValue;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(
                constraints: BoxConstraints(maxWidth: 400),
                hintText: 'Enter log message',
              ),
              controller: _apiLogMsgController,
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF7F7F7F)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              width: 150,
              child: Text('Auth Category:'),
            ),
            DropdownButton<LogLevel>(
              hint: const Text('Select Log Level'),
              value: _authLogLevel,
              items: LogLevel.values
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.name),
                    ),
                  )
                  .toList(),
              onChanged: (newValue) {
                setState(() {
                  _authLogLevel = newValue;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(
                constraints: BoxConstraints(maxWidth: 400),
                hintText: 'Enter log message',
              ),
              controller: _authLogMsgController,
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF7F7F7F)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              width: 150,
              child: Text(
                'DataStore Category:',
              ),
            ),
            DropdownButton<LogLevel>(
              hint: const Text('Select Log Level'),
              value: _dataStoreLogLevel,
              items: LogLevel.values
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.name),
                    ),
                  )
                  .toList(),
              onChanged: (newValue) {
                setState(() {
                  _dataStoreLogLevel = newValue;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(
                constraints: BoxConstraints(maxWidth: 400),
                hintText: 'Enter log message',
              ),
              controller: _dataStoreLogMsgController,
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF7F7F7F)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              width: 150,
              child: Text('Hub Category:'),
            ),
            DropdownButton<LogLevel>(
              hint: const Text('Select Log Level'),
              value: _hubLogLevel,
              items: LogLevel.values
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.name),
                    ),
                  )
                  .toList(),
              onChanged: (newValue) {
                setState(() {
                  _hubLogLevel = newValue;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(
                constraints: BoxConstraints(maxWidth: 400),
                hintText: 'Enter log message',
              ),
              controller: _hubLogMsgController,
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF7F7F7F)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              width: 150,
              child: Text('PushNotification Category:'),
            ),
            DropdownButton<LogLevel>(
              hint: const Text('Select Log Level'),
              value: _pnLogLevel,
              items: LogLevel.values
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.name),
                    ),
                  )
                  .toList(),
              onChanged: (newValue) {
                setState(() {
                  _pnLogLevel = newValue;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(
                constraints: BoxConstraints(maxWidth: 400),
                hintText: 'Enter log message',
              ),
              controller: _pnLogMsgController,
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF7F7F7F)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(width: 150, child: Text('Storage Category:')),
            DropdownButton<LogLevel>(
              hint: const Text('Select Log Level'),
              value: _storageLogLevel,
              items: LogLevel.values
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.name),
                    ),
                  )
                  .toList(),
              onChanged: (newValue) {
                setState(() {
                  _storageLogLevel = newValue;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(
                constraints: BoxConstraints(maxWidth: 400),
                hintText: 'Enter log message',
              ),
              controller: _storageLogMsgController,
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF7F7F7F)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: const InputDecoration(
                constraints: BoxConstraints(maxWidth: 150),
                hintText: 'Enter logger name',
              ),
              controller: _customLoggerNameController,
            ),
            DropdownButton<LogLevel>(
              hint: const Text('Select Log Level'),
              value: _customLogLevel,
              items: LogLevel.values
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.name),
                    ),
                  )
                  .toList(),
              onChanged: (newValue) {
                setState(() {
                  _customLogLevel = newValue;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(
                constraints: BoxConstraints(maxWidth: 400),
                hintText: 'Enter log message',
              ),
              controller: _customLogMsgController,
            ),
          ],
        ),
      ),
    ];
  }
}
