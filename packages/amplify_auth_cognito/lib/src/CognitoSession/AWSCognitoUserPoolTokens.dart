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

class AWSCognitoUserPoolTokens {
  String accessToken;
  String idToken;
  String refreshToken;
  AWSCognitoUserPoolTokens.init({@required LinkedHashMap<dynamic, dynamic> tokens}) {
    var realTokens;
    if (Platform.isAndroid) {
      if (tokens.containsKey("value")) {
        realTokens = tokens["value"];
      } else {
        throw(AmplifyDartExceptions.formatException(methodName: "fetchAuthSession", field: "credentials"));
      }
    } else {
      realTokens = tokens;
    }
    this.accessToken = realTokens["accessToken"];
    this.idToken = realTokens["idToken"];
    this.refreshToken = realTokens["refreshToken"];
  }
}
