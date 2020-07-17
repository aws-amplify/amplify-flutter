import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'AuthErrorTypes.dart';
import '../EnumHandler.dart';

class AuthError { 
  String authErrorType;
  List<ErrorCause> errorCauses = [];
  AuthError.init({@required authErrorType, @required LinkedHashMap<dynamic, dynamic> errorMap,  PlatformException platformException}) {
    /* 2-step process of getting an enum from a string and back is a way of checking that
     the value is enumerated while also maintaining simple string value */
    this.authErrorType = enumToString(enumFromString<AuthErrorType>(authErrorType, AuthErrorType.values));
    errorMap.forEach((k,v) => {
      errorCauses.add(ErrorCause(exception: k, detail: v))
    }); 
   }
}

class ErrorCause {
  String exception;
  String detail;
  ErrorCause({@required this.exception, this.detail});
}

