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

import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  final String error;
  final List<String> exceptions;

  ErrorView(this.error, this.exceptions);

  @override
  Widget build(BuildContext context) {
    if (error.isNotEmpty || exceptions.length > 0) {
      return Column(children: <Widget>[
        Text('Error: $error',
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            style: TextStyle(fontWeight: FontWeight.bold)),
        if (exceptions.length > 0) ...[_showExceptions()]
      ]);
    } else {
      return Container();
    }
  }

  _showExceptions() {
    return Column(
        children: exceptions.map((item) => new Text(item + " ")).toList());
  }
}
