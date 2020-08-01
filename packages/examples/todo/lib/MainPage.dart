import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';

class ImageUploader extends StatelessWidget {

  // how visually represent image to upload?

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Unknown how to implement, use 3rd party file picker??"),
        RaisedButton(
          child: Text("Clicking this button will upload a selected image to Storage"),
          onPressed: (){
            Navigator.pop(context, "fakeItemKey");
          },
        )
      ]

    );
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
    return
    Column(
      children: [
        Text( "This will show the selected image associated with the key"),
        Image(image: AssetImage('images/image.png')),
      ]
    );

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
    child:
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text( storageKey ),
        Spacer(),
        RaisedButton(
          child: Text("open"),
          onPressed: () => {
            showDialog(
              context: context,
                child:
                new SimpleDialog(
                    title: Text(storageKey),
                    children: [
                      ImagePreview(storageKey: storageKey)
                    ]))
          }
        )
      ]
    )
    );
  }
}



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

  void loadFileKeys(){
    // TODO load all objects uploaded
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
      itemKeys = [
        "hello",
        "bye",
        "amplify",
        "flutter"
      ];
    });
  }

  void _showImageUploader() async {
    String key = await showDialog(
      context: context,
      child: new SimpleDialog(
        title: Text("Upload Image"),
        children: [
          ImageUploader()
        ]
      )
    );

    if(key.isNotEmpty){

      //itemKeys.add(key);

      // TODO check that this is proper way to update "state"

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
          title: Text("Main Page - all file KEYS in Storage")
      ),
      body: ListView.builder(
        itemCount: itemKeys.length,
        itemBuilder: (context, index) {
          return ImageLineItem( storageKey: itemKeys[index] );
        }

      ),
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
