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
import 'package:amplify_api/amplify_api.dart';
import 'package:async/async.dart';
import 'package:flutter/material.dart';

import 'amplifyconfiguration.dart';

class RestApiView extends StatefulWidget {
  const RestApiView({Key? key}) : super(key: key);

  @override
  State<RestApiView> createState() => _RestApiViewState();
}

class _RestApiViewState extends State<RestApiView> {
  late TextEditingController _apiPathController;
  late CancelableOperation _lastRestOperation;

  // TEMP until Amplify methods implemented in dart.
  late AmplifyAPI api;

  @override
  void initState() {
    super.initState();

    _apiPathController = TextEditingController();
    _apiPathController.text = '/items';

    // TEMP until Amplify methods implemented in dart.
    api = AmplifyAPI();
    api.configure(config: AmplifyConfig.fromJson(json.decode(amplifyconfig)));
  }

  void onPutPressed() async {
    try {
      final restOperation = api.put(
        _apiPathController.text,
        body: HttpPayload.string('{"name":"Mow the lawn"}'),
      );

      _lastRestOperation = restOperation;
      final response = await restOperation.value;

      print('Put SUCCESS');
      print(await response.decodeBody());
    } on Exception catch (e) {
      print('Put FAILED');
      print(e);
    }
  }

  void onPostPressed() async {
    try {
      final restOperation = api.post(
        _apiPathController.text,
        body: HttpPayload.string('{"name":"Mow the lawn"}'),
      );

      _lastRestOperation = restOperation;
      final response = await restOperation.value;

      print('Post SUCCESS');
      print(await response.decodeBody());
    } on Exception catch (e) {
      print('Post FAILED');
      print(e);
    }
  }

  void onGetPressed() async {
    try {
      final restOperation = api.get(
        _apiPathController.text,
      );

      _lastRestOperation = restOperation;
      final response = await restOperation.value;

      print('Get SUCCESS');
      print(response.statusCode);
      print(await response.decodeBody());
    } on ApiException catch (e) {
      print('Get FAILED');
      print(e.toString());
    }
  }

  void onDeletePressed() async {
    try {
      final restOperation = api.delete(
        _apiPathController.text,
      );
      _lastRestOperation = restOperation;
      final response = await restOperation.value;

      print('Delete SUCCESS');
      print(await response.decodeBody());
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
      final restOperation = api.head(
        _apiPathController.text,
      );

      _lastRestOperation = restOperation;
      final response = await restOperation.response;

      print('Head SUCCESS');
    } on ApiException catch (e) {
      print('Head FAILED');
      print(e.toString());
    }
  }

  void onPatchPressed() async {
    try {
      final restOperation = api.patch(
        _apiPathController.text,
        body: HttpPayload.string('{"name":"Mow the lawn"}'),
      );

      _lastRestOperation = restOperation;
      final response = await restOperation.response;

      print('Patch SUCCESS');
      print(await response.decodeBody());
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
