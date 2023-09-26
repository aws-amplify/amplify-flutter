// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:js_interop';
import 'dart:js_util';

@JS()
extension type HttpClient._(JSObject it) {
  external HttpClient([
    String? userAgent,
    JSArray? handlers,
    JSObject? requestOptions,
  ]);

  @JS('getJson')
  external JSPromise _getJson(String requestUrl, dynamic headers);

  Future<Map<String, Object?>> getJson(String requestUrl, {
    Map<String, String>? headers,
  }  ) async {
    final jsHeaders = jsify(headers); 
    final response = await _getJson(requestUrl, jsHeaders).toDart;
    final result = response as TypedResponse<JSObject>;
    if (result.statusCode != 200) {
      throw Exception('Could not fetch $requestUrl');
    }
    return (result.result!.dartify() as Map).cast();
  }
}


@JS()
@anonymous
extension type TypedResponse<T extends JSAny>._(JSObject it) {
  external factory TypedResponse({
    int statusCode,
    T result,
  });

  external int get statusCode;
  external T? get result;
}
