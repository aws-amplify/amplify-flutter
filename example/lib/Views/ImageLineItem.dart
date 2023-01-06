// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart';

import 'ImagePreview.dart';

class ImageLineItem extends StatelessWidget {
  final String storageKey;

  const ImageLineItem({
    Key? key,
    required this.storageKey,
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
                        builder: (BuildContext context) {
                          return new SimpleDialog(
                              title: Text(storageKey),
                              children: [ImagePreview(storageKey: storageKey)]);
                        })
                  })
        ]));
  }
}
