import 'package:flutter/material.dart';

import 'ImagePreview.dart';

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
          ElevatedButton(
              child: const Text("open"),
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
