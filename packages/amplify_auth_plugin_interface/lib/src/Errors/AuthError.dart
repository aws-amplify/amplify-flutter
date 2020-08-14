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
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'AuthErrorTypes.dart';

class AuthError implements Exception { 
  String cause;
  List<AuthException> exceptionList = [];
  AuthError.init({@required cause, @required LinkedHashMap<dynamic, dynamic> errorMap,  PlatformException platformException}) {
    this.cause = recognizeAuthError(cause) ? cause : "UNRECOGNIZED_AUTH_ERROR";
    errorMap.forEach((k,v) => {
      exceptionList.add(AuthException(exception: k, detail: v))
    }); 
   }
}

class AuthException {
  String exception;
  dynamic detail;
  AuthException({@required this.exception, this.detail});
}

bool recognizeAuthError(authErrorType) {
  var match = authErrorTypes.contains(authErrorType);
  if (!match) print("Unrecognized auth error returned from platform. See logs for details");
  return match;
}
