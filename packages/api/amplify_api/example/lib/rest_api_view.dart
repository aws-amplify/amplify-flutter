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

import 'dart:convert';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class RestApiView extends StatefulWidget {
  const RestApiView({Key? key}) : super(key: key);

  @override
  State<RestApiView> createState() => _RestApiViewState();
}

class _RestApiViewState extends State<RestApiView> {
  late TextEditingController _apiPathController;
  late RestOperation _lastRestOperation;

  @override
  void initState() {
    super.initState();

    _apiPathController = TextEditingController();
    _apiPathController.text = '/items';
  }

  void onPutPressed() async {
    try {
      RestOperation restOperation = Amplify.API.put(
        restOptions: RestOptions(
          path: _apiPathController.text,
          body: ascii.encode('{"name":"Mow the lawn"}'),
        ),
      );

      _lastRestOperation = restOperation;
      RestResponse response = await restOperation.response;

      print('Put SUCCESS');
      print(response);
    } on Exception catch (e) {
      print('Put FAILED');
      print(e);
    }
  }

  void onPostPressed() async {
    try {
      RestOperation restOperation = Amplify.API.post(
        restOptions: RestOptions(
          path: _apiPathController.text,
          body: ascii.encode('{"name":"Mow the lawn"}'),
        ),
      );

      _lastRestOperation = restOperation;
      RestResponse response = await restOperation.response;

      print('Post SUCCESS');
      print(response);
    } on Exception catch (e) {
      print('Post FAILED');
      print(e);
    }
  }

  void onGetPressed() async {
    try {
      RestOperation restOperation = Amplify.API.get(
          restOptions: RestOptions(
        path: _apiPathController.text,
      ));

      _lastRestOperation = restOperation;
      RestResponse response = await restOperation.response;

      print('Get SUCCESS');
      print(response);
    } on ApiException catch (e) {
      print('Get FAILED');
      print(e.toString());
    }
  }

  void onDeletePressed() async {
    try {
      RestOperation restOperation = Amplify.API.delete(
        restOptions: RestOptions(path: _apiPathController.text),
      );

      _lastRestOperation = restOperation;
      RestResponse response = await restOperation.response;

      print('Delete SUCCESS');
      print(response);
    } on Exception catch (e) {
      print('Delete FAILED');
      print(e);
    }
  }

  void onCancelPressed() async {
    try {
      _lastRestOperation.cancel();
    } on Exception catch (e) {
      print('Cancel FAILED');
      print(e.toString());
    }
  }

  void onHeadPressed() async {
    try {
      RestOperation restOperation = Amplify.API.head(
        restOptions: RestOptions(path: _apiPathController.text),
      );

      _lastRestOperation = restOperation;
      RestResponse response = await restOperation.response;

      print('Head SUCCESS');
      print(response);
    } on ApiException catch (e) {
      print('Head FAILED');
      print(e.toString());
    }
  }

  void onPatchPressed() async {
    try {
      RestOperation restOperation = Amplify.API.patch(
        restOptions: RestOptions(path: _apiPathController.text),
      );

      _lastRestOperation = restOperation;
      RestResponse response = await restOperation.response;

      print('Patch SUCCESS');
      print(response);
    } on ApiException catch (e) {
      print('Patch FAILED');
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
        controller: _apiPathController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'apiPath',
        ),
      ),
      ElevatedButton(
        onPressed: onPostPressed,
        child: const Text('Post'),
      ),
      ElevatedButton(
        onPressed: onPutPressed,
        child: const Text('Put'),
      ),
      ElevatedButton(
        onPressed: onGetPressed,
        child: const Text('Get'),
      ),
      ElevatedButton(
        onPressed: onCancelPressed,
        child: const Text('Cancel'),
      ),
      ElevatedButton(
        onPressed: onDeletePressed,
        child: const Text('Delete'),
      ),
      ElevatedButton(
        onPressed: onHeadPressed,
        child: const Text('Head'),
      ),
      ElevatedButton(onPressed: onPatchPressed, child: const Text('Patch')),
    ]);
  }
}
