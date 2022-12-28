// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Views/ImageLineItem.dart';
import 'package:sample_app/Views/ImageUploader.dart';
import 'package:sample_app/Views/UserView.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> itemKeys = [];

  @override
  void initState() {
    super.initState();
    _loadImages();
  }

  void _loadImages() async {
    try {
      print('In list');
      // TODO(HuiSF): update example with correct code
      final listOperation = Amplify.Storage.list();
      final listResult = await listOperation.result;

      setState(() {
        itemKeys = listResult.items.map((e) => e.key).toList();
      });
    } catch (e) {
      print('List Err: ' + e.toString());
    }
  }

  void _showImageUploader() async {
    String key = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return new SimpleDialog(
              title: Text("Upload Image"), children: [ImageUploader()]);
        });

    if (key.isNotEmpty) {
      var newList = itemKeys.toList();
      newList.add(key);

      setState(() {
        itemKeys = newList;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text("Main Page"), UserView()])),
      body: ListView.builder(
          itemCount: itemKeys.length,
          itemBuilder: (context, index) {
            return ImageLineItem(storageKey: itemKeys[index]);
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showImageUploader();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
