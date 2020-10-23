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
import './datastore_error_types.dart';

class DataStoreError implements Exception {
  String cause;
  List<DataStoreException> exceptionList = [];
  DataStoreError.init(
      {@required cause, @required LinkedHashMap<dynamic, dynamic> errorMap}) {
    this.cause = DataStoreErrorTypes.contains(cause)
        ? cause
        : "UNRECOGNIZED_DATASTORE_ERROR";
    errorMap.forEach((k, v) =>
        {exceptionList.add(DataStoreException(exception: k, detail: v))});
  }
}

class DataStoreException {
  String exception;
  dynamic detail;
  DataStoreException({@required this.exception, this.detail});
}
