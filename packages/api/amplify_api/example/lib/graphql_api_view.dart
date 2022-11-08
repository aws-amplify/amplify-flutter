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

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class GraphQLApiView extends StatefulWidget {
  final bool isAmplifyConfigured;

  const GraphQLApiView({Key? key, this.isAmplifyConfigured = false})
      : super(key: key);

  @override
  State<GraphQLApiView> createState() => _GraphQLApiViewState();
}

class _GraphQLApiViewState extends State<GraphQLApiView> {
  String _result = '';
  void Function()? _unsubscribe;
  late CancelableOperation _lastOperation;

  final subscriptionReq =
      GraphQLRequest<String>(document: '''subscription MySubscription {
    onCreateBlog {
      id
      name
      createdAt
    }
  }''');

  Future<void> subscribe() async {
    final operation = Amplify.API.subscribe(
      subscriptionReq,
      onEstablished: () => print('Subscription established'),
    );

    final streamSubscription = operation.listen(
      (event) {
        if (event.hasErrors) {
          print('Error(s) received from subscription: ${event.errors}');
          return;
        }
        final data = 'Subscription event data received: ${event.data}';
        print(data);
        setState(() {
          _result = data;
        });
      },
      onError: (Object error) => print(
        'Error in GraphQL subscription: $error',
      ),
    );
    _unsubscribe = streamSubscription.cancel;
  }

  Future<void> query() async {
    String graphQLDocument = '''query MyQuery {
      listBlogs {
        items {
          id
          name
          createdAt
        }
      }
    }''';

    var operation = Amplify.API
        .query<String>(request: GraphQLRequest(document: graphQLDocument));
    _lastOperation = operation.operation;

    var response = await operation.response;
    var data = response.data;
    if (data == null) {
      print('errors: ${response.errors}');
      return;
    }

    print('Result data: $data');
    setState(() {
      _result = data;
    });
  }

  Future<void> mutate() async {
    String graphQLDocument = '''mutation MyMutation(\$name: String!) {
      createBlog(input: {name: \$name}) {
        id
        name
        createdAt
      }
    }''';

    var operation = Amplify.API.mutate(
      request: GraphQLRequest<String>(
        document: graphQLDocument,
        variables: <String, dynamic>{'name': 'Test App Blog'},
        authorizationMode: APIAuthorizationType.userPools,
      ),
    );
    _lastOperation = operation.operation;

    var response = await operation.response;
    var data = response.data;
    if (data == null) {
      print('errors: ${response.errors}');
      return;
    }

    print('Result data: $data');
    setState(() {
      _result = data;
    });
  }

  void onCancelPressed() async {
    try {
      _lastOperation.cancel();
    } on Exception catch (e) {
      print('Cancel FAILED');
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(5.0),
      children: <Widget>[
        const Padding(padding: EdgeInsets.all(10.0)),
        Center(
          child: ElevatedButton(
            onPressed: widget.isAmplifyConfigured ? query : null,
            child: const Text('Run Query'),
          ),
        ),
        const Padding(padding: EdgeInsets.all(10.0)),
        Center(
          child: ElevatedButton(
            onPressed: widget.isAmplifyConfigured ? mutate : null,
            child: const Text('Run Mutation'),
          ),
        ),
        const Padding(padding: EdgeInsets.all(10.0)),
        Center(
          child: ElevatedButton(
            onPressed: widget.isAmplifyConfigured ? subscribe : null,
            child: const Text('Subscribe'),
          ),
        ),
        const Padding(padding: EdgeInsets.all(10.0)),
        Center(
          child: ElevatedButton(
            onPressed: () => setState(() {
              _unsubscribe?.call();
              _unsubscribe = null;
            }),
            child: const Text('Unsubscribe'),
          ),
        ),
        const Padding(padding: EdgeInsets.all(5.0)),
        ElevatedButton(
          onPressed: onCancelPressed,
          child: const Text('Cancel'),
        ),
        Text('Result: \n$_result\n'),
      ],
    );
  }
}
