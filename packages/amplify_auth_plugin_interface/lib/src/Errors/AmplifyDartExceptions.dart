import 'dart:collection';

import 'package:flutter/foundation.dart';
import './AuthError.dart';

class AmplifyDartExceptions { 
  static formatException({@required String methodName, @required String field}) {
    LinkedHashMap<String, String> errorMap = Map.of({
      "$methodName failed" : "$field malformed"
    });
    return AuthError.init(cause: "ERROR_FORMATTING_PLATFORM_CHANNEL_RESPONSE", errorMap: errorMap);
  }
}