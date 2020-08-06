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

// TODO Ashish will modify these classes depending upon his Storage Category example implementation

import 'package:flutter/material.dart';
import 'package:sample_app/Views/UserView.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> itemKeys;

  @override
  void initState() {
    loadFileKeys();
    super.initState();
  }

  void loadFileKeys() {
    /*
    Amplify.Storage.list(
        "/",
        { result ->
        result.getItems().forEach { item ->
        Log.i("MyAmplifyApp", "Item: " + item.getKey())
        }
        },
        { error -> Log.e("MyAmplifyApp", "List failure", error) }
    )
     */
    setState(() {
      itemKeys = ["hello", "bye", "amplify", "flutter"];
    });
  }

  void _showImageUploader() async {
    String key = await showDialog(
        context: context,
        child: new SimpleDialog(
            title: Text("Upload Image"), children: [ImageUploader()]));

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

class ImageUploader extends StatelessWidget {
  // how visually represent image to upload?

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Unknown how to implement, use 3rd party file picker??"),
      RaisedButton(
        child: Text(
            "Clicking this button will upload a selected image to Storage"),
        onPressed: () {
          Navigator.pop(context, "fakeItemKey");
        },
      )
    ]);
  }
}

class ImageLineItem extends StatelessWidget {
  final String storageKey;

  const ImageLineItem({
    Key key,
    this.storageKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(storageKey),
          Spacer(),
          RaisedButton(
              child: Text("open"),
              onPressed: () => {
                    showDialog(
                        context: context,
                        child: new SimpleDialog(
                            title: Text(storageKey),
                            children: [ImagePreview(storageKey: storageKey)]))
                  })
        ]));
  }
}

class ImagePreview extends StatefulWidget {
  final String storageKey;

  ImagePreview({Key key, this.storageKey}) : super(key: key);

  @override
  _ImagePreviewState createState() => _ImagePreviewState();
}

class _ImagePreviewState extends State<ImagePreview> {
  @override
  void initState() {
    super.initState();

    // TODO USE "storageKey" to load file
    /*
    Amplify.Storage.downloadFile(
    "ExampleKey",
    File(applicationContext.filesDir.toString() + "/download.txt"),
    { result -> Log.i("MyAmplifyApp", "Successfully downloaded: " + result.getFile().name) },
    { error -> Log.e("MyAmplifyApp", "Download Failure", error) }
)
     */
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("This will show the selected image associated with the key"),
      Image(image: AssetImage('images/image.png')),
    ]);
  }
}
