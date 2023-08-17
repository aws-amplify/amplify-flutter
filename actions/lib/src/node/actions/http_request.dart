// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:js_interop';

@JS()
inline class HttpClient {
  external HttpClient([
    String? userAgent,
    JSArray? handlers,
    JSObject? requestOptions,
  ]);

  final JSObject obj;

  @JS('getJson')
  external JSPromise _getJson(String requestUrl);

  Future<Map<String, Object?>> getJson(String requestUrl) async {
    final response = await _getJson(requestUrl).toDart;
    final result = response as TypedResponse<JSObject>;
    if (result.statusCode.toDartInt != 200) {
      throw Exception('Could not fetch $requestUrl');
    }
    return (result.result!.dartify() as Map).cast();
  }
}

@JS()
inline class TypedResponse<T extends JSAny>{
  external TypedResponse({
    int statusCode,
    T result,
  });

  final JSObject obj;

  external JSNumber get statusCode;
  external T? get result;
}
