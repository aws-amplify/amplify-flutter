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
    // Send Request cancelToken to Native
    String cancelToken = UUID.getUUID();

    Future<RestResponse> futureResponse =
        _callNativeRestMethod(methodName, cancelToken, restOptions);

    return new RestOperation(
        response: futureResponse, cancel: () => {cancelRequest(cancelToken)});
  }

  Future<RestResponse> _callNativeRestMethod(
      String methodName, String cancelToken, RestOptions restOptions) async {
    // Prepare map input
    Map<String, dynamic> inputsMap = new Map<String, dynamic>();
    inputsMap["restOptions"] = restOptions.serializeAsMap();
    inputsMap["cancelToken"] = cancelToken;

    // Attempt switch to proper async
    try {
      final Map<String, dynamic> data = await _channel
          .invokeMapMethod<String, dynamic>(methodName, inputsMap);
      return _formatRestResponse(data);
    } on PlatformException catch (e) {
      throw (_formatError(e));
    }
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
  void cancelRequest(String cancelToken) async {
    print("Attempting to cancel RestOperation " + cancelToken);

    await _channel.invokeMethod("cancel", cancelToken).then((result) {
      print("Cancel succeeded for RestOperation: " + cancelToken);
    }).catchError((e) {
      print("Cancel request failed due to: " + e.message + " " + e.code);
    });
  }

  // TODO: TEMP CODE BEFORE WE CONSOLIDATE DART ERROR HANDLING SYSTEM
  ApiError _formatError(PlatformException e) {
    return ApiError(code: e.code, message: e.message, details: e.details);
  }
}
