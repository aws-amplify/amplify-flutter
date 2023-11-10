import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class LoggerInfo {
  LoggerInfo(
    this.category,
    this.logger,
    this.logMsgController, {
    this.logLevel = LogLevel.verbose,
  });
  final Category category;
  final Logger logger;
  final TextEditingController logMsgController;
  LogLevel? logLevel;

  LoggerInfo copyWith({
    Category? category,
    Logger? logger,
    TextEditingController? logMsgController,
    LogLevel? logLevel,
  }) {
    return LoggerInfo(
      category ?? this.category,
      logger ?? this.logger,
      logMsgController ?? this.logMsgController,
      logLevel: logLevel ?? this.logLevel,
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  final _loggerMap = <Category, LoggerInfo>{};

  @override
  void initState() {
    super.initState();

    // Create LoggerInfo for each Category
    for (final category in Category.values) {
      _loggerMap[category] = LoggerInfo(
        category,
        Amplify.Logging.logger(category.name),
        TextEditingController(),
      );
    }
  }

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
            Navigator.popAndPushNamed(context, '/');
          },
        ),
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            ...loggerList(),
            Wrap(
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
    Amplify.Logging.enable();
  }

  void _disableLogging() {
    Amplify.Logging.disable();
  }

  void _flushLogs() {
    Amplify.Logging.flushLogs();
  }

  void _submitLogs() {
    for (final loggerInfo in _loggerMap.values) {
      if (loggerInfo.logLevel != null &&
          loggerInfo.logMsgController.text != '') {
        loggerInfo.logger.log(
          loggerInfo.logLevel!,
          loggerInfo.logMsgController.text,
        );
      }
    }

    if (_customLoggerNameController.text != '' &&
        _customLogLevel != null &&
        _customLogMsgController.text != '') {
      AmplifyLogger(_customLoggerNameController.text)
          .log(_customLogLevel!, _customLogMsgController.text);
    }

    setState(() {
      for (final loggerInfo in _loggerMap.values) {
        loggerInfo.logLevel = LogLevel.verbose;
        loggerInfo.logMsgController.text = '';
      }
    });
  }

  Widget displayCategoryLogControls(Category category) {
    final loggerInfo = _loggerMap[category]!;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF7F7F7F)),
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${category.name}:'),
              DropdownButton<LogLevel>(
                hint: const Text('Select Log Level'),
                value: loggerInfo.logLevel,
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
                    _loggerMap[category] =
                        loggerInfo.copyWith(logLevel: newValue);
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Enter log message',
              ),
              controller: loggerInfo.logMsgController,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> loggerList() {
    return [
      for (final category in Category.values)
        displayCategoryLogControls(category),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF7F7F7F)),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Enter log message',
                ),
                controller: _customLogMsgController,
              ),
            ),
          ],
        ),
      ),
    ];
  }
}
