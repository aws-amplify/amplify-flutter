import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

import 'models/ModelProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    final api = AmplifyAPI();
    final ds = AmplifyDataStore(modelProvider: ModelProvider.instance);
    await Amplify.addPlugins([api, ds]);

    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      safePrint(
          'Tried to reconfigure Amplify; this can occur when your app restarts on Android.');
    }

    observeQueryMessage();

    Amplify.Hub.listen(HubChannel.DataStore, (msg) {
      print(msg.type);
    });
  }

  void observeQueryMessage() {
    Amplify.DataStore.observeQuery(
      Message.classType,
    ).listen((QuerySnapshot<Message> snapshot) {
      safePrint(
        'Query snapshot received: ${snapshot.items.length} messages, isSynced: ${snapshot.isSynced}',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> saveMessage() async {
    safePrint("start saving message");
    User sender = User(
      email: 'example@gmail.com',
      birthdate: TemporalDate(DateTime.now()),
      gender: Gender.male,
      nickname: 'nickname',
    );

    await Amplify.DataStore.save(sender);

    CustomMarker circle = CustomMarker(
      latitude: 1.0,
      longitude: 1.0,
      hostUser: sender,
      purpose: Purpose.exchange,
      title: 'title',
      gatheringTime: TemporalDateTime(DateTime.now()),
      maxParticipants: 0,
      minAge: 0,
      maxAge: 0,
      numParticipants: 0,
    );

    await Amplify.DataStore.save(circle);

    Message message = Message(
      content: 'content',
      sender: sender,
      circle: circle,
      createdOn: TemporalDateTime(DateTime.now().toUtc()),
    );
    await Amplify.DataStore.save(message);
    safePrint('message saved');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hello world'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: saveMessage,
        tooltip: 'save',
        child: const Icon(Icons.add),
      ),
    );
  }
}
