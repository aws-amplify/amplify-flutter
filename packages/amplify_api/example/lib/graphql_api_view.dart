/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:amplify_api/amplify_api.dart';

class GraphQLApiView extends StatefulWidget {
  bool isAmplifyConfigured;

  GraphQLApiView({Key key, this.isAmplifyConfigured}) : super(key: key);

  @override
  _GraphQLApiViewState createState() => _GraphQLApiViewState();
}

class _GraphQLApiViewState extends State<GraphQLApiView> {
  String _result = '';
  Function _unsubscribe;

  GraphQLOperation _lastOperation;

  subscribe() async {
    String graphQLDocument = '''subscription MySubscription {
        onCreateBlog {
          id
          name
          createdAt
        }
      }''';
    var operation = Amplify.API.subscribe(
        request: GraphQLRequest<String>(document: graphQLDocument),
        onData: (event) {
          print("Subscription event data received: ${event.data}");
        },
        onEstablished: () {
          print("Subscription established");
        },
        onError: (e) {
          print("Error occurred");
          print(e);
        },
        onDone: () {
          print("Subscription has been closed successfully");
        });

    var unsubscribe = () {
      operation.cancel();
    };

    setState(() {
      _unsubscribe = unsubscribe;
    });
  }

  query() async {
    String graphQLDocument = '''query MyQuery {
      listBlogs {
        items {
          id
          name
          createdAt
        }
      }
    }''';

    var operation = await Amplify.API
        .query<String>(request: GraphQLRequest(document: graphQLDocument));
    _lastOperation = operation;

    var response = await operation.response;
    var data = response.data;

    print('Result data: ' + data);
    setState(() {
      _result = data;
    });
  }

  mutate() async {
    String graphQLDocument = '''mutation MyMutation(\$name: String!) {
      createBlog(input: {name: \$name}) {
        id
        name
        createdAt
      }
    }''';

    var operation = await Amplify.API.mutate(
        request: GraphQLRequest<String>(
            document: graphQLDocument, variables: {"name": "Test App Blog"}));
    _lastOperation = operation;

    var response = await operation.response;
    var data = response.data;

    print('Result data: ' + data);
    setState(() {
      _result = data;
    });
  }

  void onCancelPressed() async {
    try {
      _lastOperation.cancel();
    } on Exception catch (e) {
      print("Cancel FAILED");
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(5.0),
      children: <Widget>[
        Padding(padding: EdgeInsets.all(10.0)),
        Center(
          child: ElevatedButton(
            onPressed: widget.isAmplifyConfigured ? query : null,
            child: const Text('Run Query'),
          ),
        ),
        Padding(padding: EdgeInsets.all(10.0)),
        Center(
          child: ElevatedButton(
            onPressed: widget.isAmplifyConfigured ? mutate : null,
            child: const Text('Run Mutation'),
          ),
        ),
        Padding(padding: EdgeInsets.all(10.0)),
        Center(
          child: RaisedButton(
            onPressed: widget.isAmplifyConfigured ? subscribe : null,
            child: Text('Subscribe'),
          ),
        ),
        Padding(padding: EdgeInsets.all(10.0)),
        Center(
          child: RaisedButton(
            onPressed: widget.isAmplifyConfigured ? _unsubscribe : null,
            child: Text('Unsubscribe'),
          ),
        ),
        Padding(padding: EdgeInsets.all(5.0)),
        ElevatedButton(
          child: const Text("Cancel"),
          onPressed: onCancelPressed,
        ),
        Text('Result: \n$_result\n'),
      ],
    );
  }
}
