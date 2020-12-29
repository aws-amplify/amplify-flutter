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

import 'dart:typed_data';
import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class AmplifyRestAPIModule {
  MethodChannel _channel;

  AmplifyRestAPIModule(MethodChannel channel) {
    _channel = channel;
  }

  RestOperation _restFunctionHelper(
      {@required String methodName, @required RestOptions restOptions}) {
    try {
      // Send Request Code to Native
      String code = UUID.getUUID();

      Future<RestResponse> futureResponse =
          _callNativeRestMethod(methodName, code, restOptions);

      RestOperation restOperation = new RestOperation(
          response: futureResponse, cancel: () => {cancelRequest(code)});

      return restOperation;
    } on PlatformException catch (e) {
      throw (e);
    }
  }

  Future<RestResponse> _callNativeRestMethod(
      String methodName, String code, RestOptions restOptions) async {
    // Prepare map input
    Map<String, dynamic> inputsMap = new Map<String, dynamic>();
    inputsMap["restOptions"] = restOptions.serializeAsMap();
    inputsMap["code"] = code;

    final Map<String, dynamic> data =
        await _channel.invokeMapMethod<String, dynamic>(methodName, inputsMap);

    return _formatRestResponse(data);
  }

  RestResponse _formatRestResponse(Map<String, dynamic> res) {
    if (res.containsKey("data")) {
      return RestResponse(data: res["data"] as Uint8List);
    } else {
      throw new Exception("Malformed RestResponse");
    }
  }

  @override
  RestOperation get({@required RestOptions restOptions}) {
    return _restFunctionHelper(methodName: "get", restOptions: restOptions);
  }

  @override
  RestOperation put({@required RestOptions restOptions}) {
    return _restFunctionHelper(methodName: "put", restOptions: restOptions);
  }

  @override
  RestOperation post({@required RestOptions restOptions}) {
    return _restFunctionHelper(methodName: "post", restOptions: restOptions);
  }

  @override
  RestOperation delete({@required RestOptions restOptions}) {
    return _restFunctionHelper(methodName: "delete", restOptions: restOptions);
  }

  @override
  void cancelRequest(String code) async {
    print("Attempting to cancel RestOperation " + code);

    await _channel.invokeMethod("cancel", code).then((result) {
      print("Cancel succeeded for RestOperation: " + code);
    }).catchError((e) {
      print("Cancel request failed due to: " + e.message + " " + e.code);
    });
  }
}
