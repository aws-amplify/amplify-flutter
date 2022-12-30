// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  final String error;

  ErrorView(this.error);

  @override
  Widget build(BuildContext context) {
    if (error.isNotEmpty) {
      return Column(children: <Widget>[
        Text('Error: $error',
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            style: TextStyle(fontWeight: FontWeight.bold)),
      ]);
    } else {
      return Container();
    }
  }
}
