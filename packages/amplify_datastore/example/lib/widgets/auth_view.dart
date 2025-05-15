import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_datastore_example/main.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

import '../models/ModelProvider.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key, this.isAmplifyConfigured = false});
  final bool isAmplifyConfigured;

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  List<PrivateTodo> _privateTodos = <PrivateTodo>[];
  List<MultiAuthTodo> _multiAuthTodos = <MultiAuthTodo>[];
  List<String> _streamingData = <String>[];
  late Stream<SubscriptionEvent<PrivateTodo>> _privateTodoStream;
  late Stream<SubscriptionEvent<MultiAuthTodo>> _multiAuthTodoStream;
  ScrollController _privateTodosScrollController = ScrollController(
    initialScrollOffset: 50.0,
  );

  @override
  void initState() {
    super.initState();
    initPageState();
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  Future<void> initPageState() async {
    Amplify.DataStore.observeQuery(PrivateTodo.classType).listen((
      QuerySnapshot<PrivateTodo> snapshot,
    ) {
      setState(() {
        _privateTodos = snapshot.items;
      });
    });
    Amplify.DataStore.observeQuery(MultiAuthTodo.classType).listen((
      QuerySnapshot<MultiAuthTodo> snapshot,
    ) {
      setState(() {
        _multiAuthTodos = snapshot.items;
      });
    });

    _privateTodoStream = Amplify.DataStore.observe(PrivateTodo.classType);
    _privateTodoStream
        .listen((event) {
          print(
            "PrivateTodo: ${event.item.content}, of type: ${event.eventType}",
          );
          _streamingData.add(
            'PrivateTodo: ' +
                (event.eventType.toString() == EventType.delete.toString()
                    ? event.item.id
                    : event.item.content ?? "") +
                ', of type: ' +
                event.eventType.toString(),
          );
        })
        .onError((error) => print(error));

    _multiAuthTodoStream = Amplify.DataStore.observe(MultiAuthTodo.classType);
    _multiAuthTodoStream
        .listen((event) {
          print(
            "MultiAuthTodo: ${event.item.content}, of type: ${event.eventType}",
          );
          _streamingData.add(
            'MultiAuthTodo: ' +
                (event.eventType.toString() == EventType.delete.toString()
                    ? event.item.id
                    : event.item.content ?? "") +
                ', of type: ' +
                event.eventType.toString(),
          );
        })
        .onError((error) => print(error));
  }

  Future<void> _restartDataStore() async {
    await Amplify.DataStore.clear();
    await Amplify.DataStore.start();
  }

  Future<void> _createPrivateTodo() async {
    final item = PrivateTodo(content: "Test Private Todo - ${uuid()}");
    await Amplify.DataStore.save(item);
  }

  deletePrivateTodo(String id) async {
    try {
      await Amplify.DataStore.delete(PrivateTodo(id: id));
    } catch (e) {
      print(e);
    }
  }

  Future<void> _createMultiTodo() async {
    final item = MultiAuthTodo(content: "Test multi Todo - ${uuid()}");
    await Amplify.DataStore.save(item);
  }

  @override
  Widget build(BuildContext context) {
    return AuthenticatedView(
      child: Column(
        children: [
          // Start / Stop / Clear buttons
          displaySyncButtons(),

          ElevatedButton(
            onPressed: () async {
              await _restartDataStore();
            },
            child: Text('Restart DataStore'),
          ),
          ElevatedButton(
            onPressed: () async {
              await _createPrivateTodo();
            },
            child: Text('Create Private Todo'),
          ),
          ElevatedButton(
            onPressed: () async {
              await _createMultiTodo();
            },
            child: Text('Create Multi Todo'),
          ),

          getWidgetToDisplayPrivateTodo([
            ..._privateTodos,
            ..._multiAuthTodos,
          ], deletePrivateTodo),
          Text(
            "Events",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          getWidgetToDisplayAuthTodoEvents(
            _privateTodosScrollController,
            _streamingData,
            executeAfterBuild,
          ),
        ],
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) => executeAfterBuild());
  }

  Future<void> executeAfterBuild() async {
    // this code will get executed after the build method
    // because of the way async functions are scheduled

    Future.delayed(const Duration(milliseconds: 500), () {
      if (_privateTodosScrollController.hasClients)
        _privateTodosScrollController.animateTo(
          _privateTodosScrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
    });
  }
}
