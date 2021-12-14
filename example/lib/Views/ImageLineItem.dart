//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

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
