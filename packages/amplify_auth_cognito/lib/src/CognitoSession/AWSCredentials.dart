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

import 'dart:collection';
import 'dart:io' show Platform;
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/material.dart';

class AWSCredentials {
  String awsAccessKey;
  String awsSecretKey;
  String sessionToken;
  AWSCredentials.init({@required LinkedHashMap<dynamic, dynamic> creds}) {
    var realCreds;
    if (Platform.isAndroid) {
      if (creds.containsKey("value")) {
        realCreds = creds["value"];
      } else {
        throw(AmplifyDartExceptions.formatException(methodName: "fetchAuthSession", field: "credentials"));
      }
    } else {
      realCreds = creds;
    }
    this.awsAccessKey = realCreds["awsAccessKey"];
    this.awsSecretKey = realCreds["awsSecretKey"];
    this.sessionToken = realCreds["sessionToken"];
  }
}
