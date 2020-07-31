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
