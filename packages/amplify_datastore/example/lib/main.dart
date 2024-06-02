import 'dart:async';

import 'package:amplify_api/amplify_api.dart';
// Amplify Flutter Packages
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

import './models/ModelProvider.dart';
// Generated in previous step
import 'amplifyconfiguration.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    await Amplify.addPlugins([
      AmplifyAuthCognito(),
      AmplifyAPI(
        options: APIPluginOptions(modelProvider: ModelProvider.instance),
      ),
      AmplifyDataStore(
        modelProvider: ModelProvider.instance,
        options: const DataStorePluginOptions(
          authModeStrategy: AuthModeStrategy.multiAuth,
        ),
      )
    ]);

    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      safePrint(
          "Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
    }

    await Amplify.DataStore.start();

    Amplify.Hub.listen(HubChannel.DataStore, (event) {
      // option 1
      print(event.type);
    });

    Amplify.DataStore.observeQuery(
      TestTableOne.classType,
    ).listen((QuerySnapshot<TestTableOne> snapshot) {
      safePrint('Received QuerySnapshot: ${snapshot.items}');
      // setState(() {
      // users = snapshot.items;
      // });
    });
    listenChanges();

    // sub to public model
    // final req = ModelSubscriptions.onCreate(PublicNote.classType,
    //     authorizationMode: APIAuthorizationType.apiKey);
    // final sub = Amplify.API.subscribe(req, onEstablished: () {
    //   print("PublicNote:: Subscription established");
    // });
    // sub.listen((event) {
    //   print("PublicNote:: Subscription event: $event");
    // });
  }

  StreamSubscription<SubscriptionEvent<Entry>>? stream;

  void listenChanges() {
    Amplify.DataStore.observeQuery(Entry.classType).listen(
      (event) {
        safePrint('Received QuerySnapshot of Entry:' + event.items.toString());
      },
    );
  }

  void stopListeningChanges() {
    stream?.cancel();
  }

  Future<void> save() async {
    try {
      final profileId = UUID.getUUID();
      final testTableOne = TestTableOne(profile_id: profileId, count: 100);
      await Amplify.DataStore.save(testTableOne);
      final testTableTwo = TestTableTwo(profile_id: profileId, count: 101);
      await Amplify.DataStore.save(testTableTwo);
      final testTableThree = TestTableThree(profile_id: profileId, count: 102);
      await Amplify.DataStore.save(testTableThree);
    } on ApiException catch (e) {
      safePrint('Mutation failed: $e');
    }
  }

  final entry = Entry(draftRecordID: 'foo');

  Future<void> test1() async {
    print('Before: ${entry.draftRecordID}'); // Before: foo

    await Amplify.DataStore.save(entry);

    final resBefore = await Amplify.DataStore.query(Entry.classType,
        where: Entry.ID.eq(entry.id));
    print('resBefore: $resBefore'); // resBefore: Entry.draftRecordID = foo
  }

  Future<void> copyTest() async {
    // final entry = Entry(draftRecordID: 'foo');

    final newEntry = entry.copyWithModelFieldValues(
      draftRecordID: const ModelFieldValue.value(null),
    );
    print('After: ${newEntry.draftRecordID}'); // After: null

    await Amplify.DataStore.save(newEntry);

    final resAfter = await Amplify.DataStore.query(Entry.classType,
        where: Entry.ID.eq(entry.id));
    print('resAfter: ${resAfter}'); // resAfter: Entry.draftRecordID = null
  }

  Future<void> queryEntry() async {
    final res = await Amplify.DataStore.query(Entry.classType,
        where: Entry.ID.eq(entry.modelIdentifier));
    print('res: $res');
    if (res[0].draftRecordID != null) {
      print('draftRecordID: ${res[0].draftRecordID}');
    } else {
      print('draftRecordID is null');
    }
  }

  Future<void> subscribe() async {
    final req = ModelSubscriptions.onCreate(Entry.classType,
        authorizationMode: APIAuthorizationType.userPools);
    final sub = Amplify.API.subscribe(req);
    sub.listen((event) {
      print("Subscription event: $event");
    });
  }

  Future<void> createPrivateNote() async {
    final note = PrivateNote(content: "foo");
    await Amplify.DataStore.save(note);
  }

  Future<void> createPublicNote() async {
    final note = PublicNote(content: "foo");
    await Amplify.DataStore.save(note);
  }

  Future<void> createMixedNote() async {
    final note = MixedNote(content: "foo");
    await Amplify.DataStore.save(note);
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        builder: Authenticator.builder(),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Auth & DataStore Playground'),
            backgroundColor: Colors.purple,
          ),
          body: Column(
            children: [
              FilledButton(
                onPressed: () => test1(),
                child: const Text('test'),
              ),
              FilledButton(
                onPressed: () => copyTest(),
                child: const Text('copy'),
              ),
              FilledButton(
                onPressed: () => queryEntry(),
                child: const Text('get entry'),
              ),
              FilledButton(
                onPressed: () => subscribe(),
                child: const Text('sub'),
              ),
              FilledButton(
                onPressed: () => createPrivateNote(),
                child: const Text('create private note'),
              ),
              FilledButton(
                onPressed: () => createPublicNote(),
                child: const Text('create public note'),
              ),
              FilledButton(
                onPressed: () => createMixedNote(),
                child: const Text('create mixed note'),
              ),
              FilledButton(
                onPressed: () => save(),
                child: const Text('save'),
              ),
              FilledButton(
                  onPressed: save, child: const Text('create user models')),
              FilledButton(
                  onPressed: () async => await Amplify.DataStore.start(),
                  child: const Text('Start DataStore')),
              FilledButton(
                  onPressed: () async => await Amplify.DataStore.stop(),
                  child: const Text('Stop DataStore')),
              FilledButton(
                  onPressed: () async => await Amplify.DataStore.clear(),
                  child: const Text('Clear DataStore')),
              OutlinedButton(
                  onPressed: () async => await Amplify.Auth.signOut(),
                  child: const Text('Sign out')),
              // Container(
              //   height: 300,
              //   child: TodoWidget(users: users),
              // )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: save,
            backgroundColor: Colors.green,
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}

// class TodoWidget extends StatelessWidget {
//   final List<Object> users;

//   TodoWidget({super.key, required this.users});

//   @override
//   Widget build(BuildContext context) {
//     print(users);
//     return ListView.builder(
//       itemCount: users.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text(users[index]?.name ?? ''),
//           subtitle: Text(users[index]?.friendIDs.toString() ?? ''),
//         );
//       },
//     );
//   }
// }
